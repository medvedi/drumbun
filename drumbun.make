; makefile for stylista.no

; define core version and drush make compatibility

core = 7.x
api = 2


; developer modules

projects[devel][subdir] = developer
projects[devel][version] = 1.3

projects[diff][subdir] = developer
projects[diff][version] = 3.2


; contrib modules

projects[admin_menu][subdir] = contrib
projects[admin_menu][version] = 3.0-rc4

; Admin Language 7.x is only available in a dev-version.
projects[admin_language][type] = module
projects[admin_language][subdir] = contrib
projects[admin_language][download][type] = git
projects[admin_language][download][revision] = 95f261f42dc87fa70338a45c3d025d4da2c79f49

projects[better_exposed_filters][subdir] = contrib
projects[better_exposed_filters][version] = 3.0-beta3

projects[search_api][subdir] = contrib
projects[search_api][version] = 1.6

projects[search_api_solr][subdir] = contrib
projects[search_api_solr][version] = 1.0-rc5

projects[search_api_ajax][subdir] = contrib
projects[search_api_ajax][version] = 1.1

projects[cache_actions][subdir] = contrib
projects[cache_actions][version] = 2.0-alpha5

projects[ctools][subdir] = contrib
projects[ctools][version] = 1.3

projects[colorbox][subdir] = contrib
projects[colorbox][version] = 2.4

projects[comment_notify][subdir] = contrib
projects[comment_notify][version] = 1.2

;projects[cs_adaptive_image][subdir] = contrib
;projects[cs_adaptive_image][version] = 1.0
; Default breakpoints in settings - http://drupal.org/node/2017789#comment-7527619
;projects[cs_adaptive_image][patch][] = "http://drupal.org/files/cs_adaptive_image-default_breakpoint_settings-2017789-1.patch"

projects[date][subdir] = contrib
projects[date][version] = 2.6

projects[elements][subdir] = contrib
projects[elements][version] = 1.4

projects[email][subdir] = contrib
projects[email][version] = 1.2

projects[entity][subdir] = contrib
projects[entity][version] = 1.1

projects[entityreference][subdir] = contrib
projects[entityreference][version] = 1.0

projects[entity_view_mode][subdir] = contrib
projects[entity_view_mode][version] = 1.0-rc1

projects[emptyparagraphkiller][subdir] = contrib
projects[emptyparagraphkiller][version] = 1.0-beta2

projects[extlink][subdir] = contrib
projects[extlink][version] = 1.12

projects[facetapi][subdir] = contrib
projects[facetapi][version] = 1.3
; Support for extra data after link build - http://drupal.org/node/2034075#comment-7611853
projects[facetapi][patch][] = "http://drupal.org/files/2034075-1.patch"

projects[facetapi_bonus][subdir] = contrib
projects[facetapi_bonus][version] = 1.1

projects[facetapi_pretty_paths][subdir] = contrib
projects[facetapi_pretty_paths][version] = 1.0

projects[facetapi_taxonomy_sort][subdir] = contrib
projects[facetapi_taxonomy_sort][version] = 1.0-beta1

projects[facetapi_i18n][subdir] = contrib
projects[facetapi_i18n][version] = 1.0-beta2

projects[features][subdir] = contrib
projects[features][version] = 2.0-rc1

projects[features_extra][subdir] = contrib
projects[features_extra][version] = 1.0-beta1

;projects[feeds][subdir] = contrib
;projects[feeds][version] = 2.0-alpha8
; User status disregarded when updating users - http://drupal.org/node/1920982#comment-7082764
;projects[feeds][patch][] = "http://drupal.org/files/feeds_user-status_1929882_1.patch"

;projects[feeds_xpathparser][subdir] = contrib
;projects[feeds_xpathparser][version] = 1.0-beta4
; Undefined index: unique in FeedsXPathParserBase->sourceForm() (line 202) - http://drupal.org/node/1998194#comment-7461988
;projects[feeds_xpathparser][patch][] = "http://drupal.org/files/feeds_xpath_parser_undefined_index_unique-1998194-2.patch"

projects[file_entity][subdir] = contrib
projects[file_entity][version] = 2.0-unstable7

projects[field_group][subdir] = contrib
projects[field_group][version] = 1.1

projects[filefield_paths][subdir] = contrib
projects[filefield_paths][version] = 1.0-beta4

projects[flag][subdir] = contrib
projects[flag][version] = 2.1

projects[globalredirect][subdir] = contrib
projects[globalredirect][version] = 1.5

projects[google_analytics][subdir] = contrib
projects[google_analytics][version] = 1.3

projects[html5_tools][subdir] = contrib
projects[html5_tools][version] = 1.2

projects[http_client][subdir] = contrib
projects[http_client][version] = 2.4

projects[i18n][subdir] = contrib
projects[i18n][version] = 1.8

projects[imagestyleflush][subdir] = contrib
projects[imagestyleflush][version] = 1.2

; Dev-version because no full release is available
projects[imagecache_token][type] = module
projects[imagecache_token][subdir] = contrib
projects[imagecache_token][download][type] = git
projects[imagecache_token][download][revision] = a7f761bbeafe723c5c340539508d9529c55bc8aa

projects[job_scheduler][subdir] = contrib
projects[job_scheduler][version] = 2.0-alpha3

projects[jquery_colorpicker][subdir] = contrib
projects[jquery_colorpicker][version] = 1.0-rc2

projects[jquery_update][subdir] = contrib
projects[jquery_update][version] = 2.3

projects[l10n_update][subdir] = contrib
projects[l10n_update][version] = 1.0-beta3

projects[libraries][subdir] = contrib
projects[libraries][version] = 2.1

projects[link][subdir] = contrib
projects[link][version] = 1.1
; 'title_value' in 'link_field_update_instance' undefined - http://drupal.org/node/1914286#comment-7055150
projects[link][patch][] = "http://drupal.org/files/Fixed_title_value_in_link_field_update_instance_undefined-1914286-3.patch"

projects[linkchecker][subdir] = contrib
projects[linkchecker][version] = 1.1

projects[logintoboggan][subdir] = contrib
projects[logintoboggan][version] = 1.3

;projects[mailsystem][subdir] = contrib
;projects[mailsystem][version] = 2.34


;projects[memcache_storage][subdir] = contrib
;projects[memcache_storage][version] = 1.0

projects[menu_editor][subdir] = contrib
projects[menu_editor][version] = 1.0-beta3

projects[menu_icons][subdir] = contrib
projects[menu_icons][version] = 3.0-beta4

projects[metatag][subdir] = contrib
projects[metatag][version] = 1.0-beta7

;projects[mimemail][subdir] = contrib
;projects[mimemail][version] = 1.0-alpha2

projects[modal_forms][subdir] = contrib
projects[modal_forms][version] = 1.2

projects[module_filter][subdir] = contrib
projects[module_filter][version] = 1.7

projects[navigation404][subdir] = contrib
projects[navigation404][version] = 1.0

projects[nodequeue][subdir] = contrib
projects[nodequeue][version] = 2.0-beta1


projects[panels][subdir] = contrib
projects[panels][version] = 3.3

projects[pathauto][subdir] = contrib
projects[pathauto][version] = 1.2

projects[references_dialog][subdir] = contrib
projects[references_dialog][version] = 1.0-alpha4
; jQuery 1.7.1 incompatability - http://drupal.org/node/1850808#comment-6776226
projects[references_dialog][patch][] = "http://drupal.org/files/1850808-0-references_dialog-jQuery_1.7.1_incompatability.patch"

projects[reverse_proxy_check][subdir] = contrib
projects[reverse_proxy_check][version] = 1.0
; Only check status if reverse proxy is enabled - http://drupal.org/node/1941852#comment-7173416
projects[reverse_proxy_check][patch][] = "http://drupal.org/files/1941852-reverse_proxy_check-conf-check-1.patch"

projects[rules][subdir] = contrib
projects[rules][version] = 2.3

projects[save_draft][subdir] = contrib
projects[save_draft][version] = 1.4

projects[scheduler][subdir] = contrib
projects[scheduler][version] = 1.1

projects[search_api][subdir] = contrib
projects[search_api][version] = 1.7

; More than 6-7 months of split from a stable to a dev branch.
projects[search_api_ranges][type] = module
projects[search_api_ranges][subdir] = contrib
projects[search_api_ranges][download][type] = git
projects[search_api_ranges][download][revision] = 309b649223281de875a47e5c04cda6f0bf33f396

projects[search_api_sorts][subdir] = contrib
projects[search_api_sorts][version] = 1.4

projects[search_api_solr][subdir] = contrib
projects[search_api_solr][version] = 1.0

projects[search_api_solr_overrides][subdir] = contrib
projects[search_api_solr_overrides][version] = 1.0-rc1

projects[special_menu_items][subdir] = contrib
projects[special_menu_items][version] = 2.0

projects[site_verify][subdir] = contrib
projects[site_verify][version] = 1.0

projects[strongarm][subdir] = contrib
projects[strongarm][version] = 2.0

projects[taxonomy_menu][subdir] = contrib
projects[taxonomy_menu][version] = 1.4

projects[token][subdir] = contrib
projects[token][version] = 1.5

projects[transliteration][subdir] = contrib
projects[transliteration][version] = 3.1

projects[variable][subdir] = contrib
projects[variable][version] = 2.2

projects[views][subdir] = contrib
projects[views][version] = 3.7

projects[views_bulk_operations][subdir] = contrib
projects[views_bulk_operations][version] = 3.1

projects[video_embed_field][subdir] = contrib
projects[video_embed_field][version] = 2.0-beta5

; Dev version necessary for CKEditor 4 support.
projects[wysiwyg][type] = module
projects[wysiwyg][subdir] = contrib
projects[wysiwyg][download][type] = git
projects[wysiwyg][download][revision] = 31840cbfd1386f4ce138d74f4d6878a1cfe31d2c

projects[xmlsitemap][subdir] = contrib
projects[xmlsitemap][version] = 2.0-rc2


; themes

;projects[tweme][subdir] = contrib
;projects[tweme][version] = 1.2-alpha1


; libraries

; TODO: CKEditor4 + Media module not working in IE9?
; 4.1 and 4.2 does not work with inline image and Media Browser [MS, 25.07.2013]
libraries[ckeditor][download][type]= get
libraries[ckeditor][download][url] = http://download.cksource.com/CKEditor/CKEditor/CKEditor%204.0.1/ckeditor_4.0.1_full.tar.gz
libraries[ckeditor][directory_name] = ckeditor
libraries[ckeditor][destination] = libraries

libraries[colorbox][download][type]= get
libraries[colorbox][download][url] = https://github.com/jackmoore/colorbox/archive/1.x.zip
libraries[colorbox][directory_name] = colorbox
libraries[colorbox][destination] = libraries
