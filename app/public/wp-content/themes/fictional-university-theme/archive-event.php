<?php

get_header();
pageBanner(array(
  'title'=> 'All Events',
  'subtitle' => 'The Subtitle'
));


?>


<div class="container container--narrow page-section">

<?php 

while(have_posts()) {
 the_post(); 

 get_template_part('template-parts/content-event');

}
 echo paginate_links();

?>

<hr class="section-break">

<p>Looking for the past events? <a href="<?php echo site_url('/past-events') ?>">Just click here</a></p>

</div>


<?php get_footer();


?> 