<?php

#================================#
#       TorrentTrader 3.8.3      #
#  http://torrenttrader.uk       #
#--------------------------------#
#       Created by M-Jay         #
#       Modified by MicroMonkey, #
#       Coco, Botanicar          #
#================================#



class TTIMDB
{
   private $_nodes = ['https://www.omdbapi.com/?apikey=YOUR_API_KEY_HERE&i=%s'];

   public function get($uri = null)
   {
       if (preg_match('#tt(\d+)#', $uri, $m)) {
           return $this->_try($m[0]);
       }
       return false;
   }

   private function _try($id)
   {
       for ($i = 0; $i < count($this->_nodes); $i++) {
           if ($data = $this->_request($id, $i)) {
               return $data;
           }
       }
       return false;
   }

   private function _request($id, $i)
   {
       $ch = curl_init();
       if ($ch) {
           curl_setopt($ch, CURLOPT_URL, sprintf($this->_nodes[$i], $id));
           curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
           curl_setopt($ch, CURLOPT_TIMEOUT, 5);
           curl_setopt($ch, CURLOPT_USERAGENT, 'TT API Client v1.0');
           curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
           $data = curl_exec($ch);
           curl_close($ch);
           return !empty($data) ? $this->_parse($data) : false;
       }
       return false;
   }

   private function _parse($data)
   {
       $info = json_decode($data);
       return ($info && !isset($info->Error)) ? $info : false;
   }

   public function getImage($poster, $id) {
       return (!empty($poster) && $poster !== "N/A")
           ? $poster
           : "images/imdb/no-poster.png";
   }

   public function getRating($rating) {
       return (!empty($rating) && $rating !== "N/A")
           ? $rating . "/10"
           : null;
   }

   public function renderStars10($rating) {
   if (empty($rating) || $rating === "N/A") {
       return '<span class="no-rating">Not rated</span>';
   }

   $stars = round($rating);
   $html = '<div class="stars">';
   for ($i = 1; $i <= 10; $i++) {
       $html .= ($i <= $stars)
           ? '<span class="star full">?</span>'
           : '<span class="star empty">?</span>';
   }
   $html .= " <span class=\"rating-text\">($rating/10)</span></div>";
   return $html;
}


   public function getRated($rated) {
       return (!empty($rated) && $rated !== "N/A")
           ? $rated
           : "Unrated";
   }

   public function getReleased($released) {
       return (!empty($released) && $released !== "N/A")
           ? $released
           : "Unknown";
   }

   public function getUpdated($timestamp) {
       return !empty($timestamp)
           ? date("d-m-Y H:i", $timestamp)
           : "n/A";
   }
}
?>
