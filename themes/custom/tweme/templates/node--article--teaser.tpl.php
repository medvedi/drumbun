<?php
/**
 * @file
 * node--article--stylista-teaser-article.tpl.php
 *
 * @author Jonas Krat <jok@peytz.dk>
 *
 *
 * variables:
 *
 * $node (The node object).
 * $content (The render array for this view mode).
 * $title (Title of the node).
 * $love_button (Rendered love_button)
 */
//dpm($content);
//dpm($variables);
//dsm($entity_wrapper->field_product_variants->value());

//dpm($node);
?>
<section class="teaser-article">
  <div class="detail">
    <a href="<?php print $node_url; ?>" class="teaser-overlay"><?php print $title;?></a>
    <div class="main-image">
      <?php print '<a href="node/' . $node->nid . '"><img src=' . image_style_url("teaser", $node->field_main_image['und'][0]['uri']) .' /></a>'?>
    </div>
    <div class="metainfo">
      <div class="icon-tab">
        <span aria-hidden="true" data-icon="&#xe011;" class="icon"></span>
      </div>
      <div class="content">
        <h3 class="title"><?php print render($content['field_teaser_title']); ?></h3>
        <div class="summary"><?php print render($content['body']); ?></div>
      </div>
      <div class="loves-counts"><a href="" class="count"<?php print ' title="' . t('Amount of love ') . '"><p>' . render($node->comment_count); ?> </p><span aria-hidden="true" data-icon="&#xe001;" class="icon"></span></a></div>
      <div class="comments-counts">
      <?php
        if ($node->comment_count > '0') {
          print '<a href="'. $node_url . '#comment-1" class="count" title="' . t('Number of comments') . '"><span aria-hidden="true" data-icon="&#xe002;" class="icon"></span><p>' . render($node->comment_count) . ' </p></a>';
        } else {
          print '<a href="'. $node_url . '" class="count comments-empty" title="' . t('Be the first to leave a comment') . '"><span aria-hidden="true" data-icon="&#xe002;" class="icon"></span></a>';
        }
      ?>
      </div>
    </div>
  </div>
</section>
