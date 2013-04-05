/* webkit2gtk-3.0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "WebKit", gir_namespace = "WebKit2", gir_version = "3.0", lower_case_cprefix = "webkit_")]
namespace WebKit {
	[CCode (cheader_filename = "webkit2/webkit2.h", type_id = "webkit_back_forward_list_get_type ()")]
	public class BackForwardList : GLib.Object {
		[CCode (has_construct_function = false)]
		protected BackForwardList ();
		public unowned WebKit.BackForwardListItem get_back_item ();
		public GLib.List<weak WebKit.BackForwardListItem> get_back_list ();
		public GLib.List<weak WebKit.BackForwardListItem> get_back_list_with_limit (uint limit);
		public unowned WebKit.BackForwardListItem get_current_item ();
		public unowned WebKit.BackForwardListItem get_forward_item ();
		public GLib.List<weak WebKit.BackForwardListItem> get_forward_list ();
		public GLib.List<weak WebKit.BackForwardListItem> get_forward_list_with_limit (uint limit);
		public uint get_length ();
		public unowned WebKit.BackForwardListItem get_nth_item (int index);
		public signal void changed (WebKit.BackForwardListItem? item_added, void* items_removed);
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", type_id = "webkit_back_forward_list_item_get_type ()")]
	public class BackForwardListItem : GLib.InitiallyUnowned {
		[CCode (has_construct_function = false)]
		protected BackForwardListItem ();
		public unowned string get_original_uri ();
		public unowned string get_title ();
		public unowned string get_uri ();
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", type_id = "webkit_context_menu_get_type ()")]
	public class ContextMenu : GLib.Object {
		[CCode (has_construct_function = false)]
		public ContextMenu ();
		public void append (WebKit.ContextMenuItem item);
		public unowned WebKit.ContextMenuItem first ();
		public unowned WebKit.ContextMenuItem get_item_at_position (uint position);
		public unowned GLib.List<WebKit.ContextMenuItem> get_items ();
		public uint get_n_items ();
		public void insert (WebKit.ContextMenuItem item, int position);
		public unowned WebKit.ContextMenuItem last ();
		public void move_item (WebKit.ContextMenuItem item, int position);
		public void prepend (WebKit.ContextMenuItem item);
		public void remove (WebKit.ContextMenuItem item);
		public void remove_all ();
		[CCode (has_construct_function = false)]
		public ContextMenu.with_items (GLib.List<WebKit.ContextMenuItem> items);
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", type_id = "webkit_context_menu_item_get_type ()")]
	public class ContextMenuItem : GLib.InitiallyUnowned {
		[CCode (has_construct_function = false)]
		public ContextMenuItem (Gtk.Action action);
		[CCode (has_construct_function = false)]
		public ContextMenuItem.from_stock_action (WebKit.ContextMenuAction action);
		[CCode (has_construct_function = false)]
		public ContextMenuItem.from_stock_action_with_label (WebKit.ContextMenuAction action, string label);
		public unowned Gtk.Action get_action ();
		public WebKit.ContextMenuAction get_stock_action ();
		public unowned WebKit.ContextMenu get_submenu ();
		public bool is_separator ();
		[CCode (has_construct_function = false)]
		public ContextMenuItem.separator ();
		public void set_submenu (WebKit.ContextMenu? submenu);
		[CCode (has_construct_function = false)]
		public ContextMenuItem.with_submenu (string label, WebKit.ContextMenu submenu);
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", type_id = "webkit_cookie_manager_get_type ()")]
	public class CookieManager : GLib.Object {
		[CCode (has_construct_function = false)]
		protected CookieManager ();
		public void delete_all_cookies ();
		public void delete_cookies_for_domain (string domain);
		public async WebKit.CookieAcceptPolicy get_accept_policy (GLib.Cancellable? cancellable) throws GLib.Error;
		[CCode (array_length = false, array_null_terminated = true)]
		public async string[] get_domains_with_cookies (GLib.Cancellable? cancellable) throws GLib.Error;
		public void set_accept_policy (WebKit.CookieAcceptPolicy policy);
		public void set_persistent_storage (string filename, WebKit.CookiePersistentStorage storage);
		public signal void changed ();
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", type_id = "webkit_favicon_database_get_type ()")]
	public class FaviconDatabase : GLib.Object {
		[CCode (has_construct_function = false)]
		protected FaviconDatabase ();
		public async Cairo.Surface? get_favicon (string page_uri, GLib.Cancellable? cancellable) throws GLib.Error;
		public string? get_favicon_uri (string page_uri);
		public void clear ();
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", type_id = "webkit_download_get_type ()")]
	public class Download : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Download ();
		public void cancel ();
		public unowned string get_destination ();
		public double get_elapsed_time ();
		public double get_estimated_progress ();
		public uint64 get_received_data_length ();
		public unowned WebKit.URIRequest get_request ();
		public unowned WebKit.URIResponse get_response ();
		public void set_destination (string uri);
		public string destination { get; }
		public double estimated_progress { get; }
		public WebKit.URIResponse response { get; }
		public signal bool created_destination (string destination);
		public virtual signal bool decide_destination (string suggested_filename);
		public signal void failed (void* error);
		public signal void finished ();
		public signal void received_data (uint64 data_length);
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", type_id = "webkit_file_chooser_request_get_type ()")]
	public class FileChooserRequest : GLib.Object {
		[CCode (has_construct_function = false)]
		protected FileChooserRequest ();
		public void cancel ();
		[CCode (array_length = false, array_null_terminated = true)]
		public unowned string[] get_mime_types ();
		public unowned Gtk.FileFilter get_mime_types_filter ();
		public bool get_select_multiple ();
		[CCode (array_length = false, array_null_terminated = true)]
		public unowned string[] get_selected_files ();
		public void select_files ([CCode (array_length = false, array_null_terminated = true)] string[] files);
		[NoAccessorMethod]
		public Gtk.FileFilter filter { owned get; }
		[CCode (array_length = false, array_null_terminated = true)]
		public string[] mime_types { get; }
		public bool select_multiple { get; }
		[CCode (array_length = false, array_null_terminated = true)]
		public string[] selected_files { get; }
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", type_id = "webkit_find_controller_get_type ()")]
	public class FindController : GLib.Object {
		[CCode (has_construct_function = false)]
		protected FindController ();
		public void count_matches (string search_text, uint32 find_options, uint max_match_count);
		public uint get_max_match_count ();
		public uint32 get_options ();
		public unowned string get_search_text ();
		public unowned WebKit.WebView get_web_view ();
		public void search (string search_text, uint32 find_options, uint max_match_count);
		public void search_finish ();
		public void search_next ();
		public void search_previous ();
		public uint max_match_count { get; }
		public WebKit.FindOptions options { get; }
		[NoAccessorMethod]
		public string text { owned get; }
		public WebKit.WebView web_view { get; construct; }
		public signal void counted_matches (uint match_count);
		public signal void failed_to_find_text ();
		public signal void found_text (uint match_count);
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", type_id = "webkit_form_submission_request_get_type ()")]
	public class FormSubmissionRequest : GLib.Object {
		[CCode (has_construct_function = false)]
		protected FormSubmissionRequest ();
		public unowned GLib.HashTable<void*,void*> get_text_fields ();
		public void submit ();
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", type_id = "webkit_geolocation_permission_request_get_type ()")]
	public class GeolocationPermissionRequest : GLib.Object, WebKit.PermissionRequest {
		[CCode (has_construct_function = false)]
		protected GeolocationPermissionRequest ();
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", type_id = "webkit_hit_test_result_get_type ()")]
	public class HitTestResult : GLib.Object {
		[CCode (has_construct_function = false)]
		protected HitTestResult ();
		public bool context_is_editable ();
		public bool context_is_image ();
		public bool context_is_link ();
		public bool context_is_media ();
		public uint get_context ();
		public unowned string get_image_uri ();
		public unowned string get_link_label ();
		public unowned string get_link_title ();
		public unowned string get_link_uri ();
		public unowned string get_media_uri ();
		public uint context { get; construct; }
		public string image_uri { get; construct; }
		public string link_label { get; construct; }
		public string link_title { get; construct; }
		public string link_uri { get; construct; }
		public string media_uri { get; construct; }
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "webkit_javascript_result_get_type ()")]
	[Compact]
	public class JavascriptResult {
		public WebKit.JavascriptResult @ref ();
		public void unref ();
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "webkit_mime_info_get_type ()")]
	[Compact]
	public class MimeInfo {
		public unowned string get_description ();
		[CCode (array_length = false, array_null_terminated = true)]
		public unowned string[] get_extensions ();
		public unowned string get_mime_type ();
		public WebKit.MimeInfo @ref ();
		public void unref ();
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", type_id = "webkit_navigation_policy_decision_get_type ()")]
	public class NavigationPolicyDecision : WebKit.PolicyDecision {
		[CCode (has_construct_function = false)]
		protected NavigationPolicyDecision ();
		public unowned string get_frame_name ();
		public uint get_modifiers ();
		public uint get_mouse_button ();
		public WebKit.NavigationType get_navigation_type ();
		public unowned WebKit.URIRequest get_request ();
		public string frame_name { get; }
		public uint modifiers { get; }
		public uint mouse_button { get; }
		public WebKit.NavigationType navigation_type { get; }
		public WebKit.URIRequest request { get; }
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", type_id = "webkit_plugin_get_type ()")]
	public class Plugin : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Plugin ();
		public unowned string get_description ();
		public unowned GLib.List<WebKit.MimeInfo> get_mime_info_list ();
		public unowned string get_name ();
		public unowned string get_path ();
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", type_id = "webkit_policy_decision_get_type ()")]
	public abstract class PolicyDecision : GLib.Object {
		[CCode (has_construct_function = false)]
		protected PolicyDecision ();
		public void download ();
		public void ignore ();
		public void use ();
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", type_id = "webkit_print_operation_get_type ()")]
	public class PrintOperation : GLib.Object {
		[CCode (has_construct_function = false)]
		public PrintOperation (WebKit.WebView web_view);
		public unowned Gtk.PageSetup get_page_setup ();
		public unowned Gtk.PrintSettings get_print_settings ();
		public void print ();
		public WebKit.PrintOperationResponse run_dialog (Gtk.Window? parent);
		public void set_page_setup (Gtk.PageSetup page_setup);
		public void set_print_settings (Gtk.PrintSettings print_settings);
		public Gtk.PageSetup page_setup { get; set; }
		public Gtk.PrintSettings print_settings { get; set; }
		[NoAccessorMethod]
		public WebKit.WebView web_view { owned get; construct; }
		public signal void failed (void* error);
		public signal void finished ();
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", type_id = "webkit_response_policy_decision_get_type ()")]
	public class ResponsePolicyDecision : WebKit.PolicyDecision {
		[CCode (has_construct_function = false)]
		protected ResponsePolicyDecision ();
		public unowned WebKit.URIRequest get_request ();
		public unowned WebKit.URIResponse get_response ();
		public WebKit.URIRequest request { get; }
		public WebKit.URIRequest response { get; }
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "webkit_script_dialog_get_type ()")]
	[Compact]
	public class ScriptDialog {
		public void confirm_set_confirmed (bool confirmed);
		public WebKit.ScriptDialogType get_dialog_type ();
		public unowned string get_message ();
		public unowned string prompt_get_default_text ();
		public void prompt_set_text (string text);
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", type_id = "webkit_settings_get_type ()")]
	public class Settings : GLib.Object {
		[CCode (has_construct_function = false)]
		public Settings ();
		public bool get_allow_modal_dialogs ();
		public bool get_auto_load_images ();
		public unowned string get_cursive_font_family ();
		public unowned string get_default_charset ();
		public unowned string get_default_font_family ();
		public uint32 get_default_font_size ();
		public uint32 get_default_monospace_font_size ();
		public bool get_draw_compositing_indicators ();
		public bool get_enable_caret_browsing ();
		public bool get_enable_developer_extras ();
		public bool get_enable_dns_prefetching ();
		public bool get_enable_frame_flattening ();
		public bool get_enable_fullscreen ();
		public bool get_enable_html5_database ();
		public bool get_enable_html5_local_storage ();
		public bool get_enable_hyperlink_auditing ();
		public bool get_enable_java ();
		public bool get_enable_javascript ();
		public bool get_enable_offline_web_application_cache ();
		public bool get_enable_page_cache ();
		public bool get_enable_plugins ();
		public bool get_enable_private_browsing ();
		public bool get_enable_resizable_text_areas ();
		public bool get_enable_site_specific_quirks ();
		public bool get_enable_tabs_to_links ();
		public bool get_enable_webaudio ();
		public bool get_enable_webgl ();
		public bool get_enable_xss_auditor ();
		public unowned string get_fantasy_font_family ();
		public bool get_javascript_can_access_clipboard ();
		public bool get_javascript_can_open_windows_automatically ();
		public bool get_load_icons_ignoring_image_load_setting ();
		public bool get_media_playback_allows_inline ();
		public bool get_media_playback_requires_user_gesture ();
		public uint32 get_minimum_font_size ();
		public unowned string get_monospace_font_family ();
		public unowned string get_pictograph_font_family ();
		public bool get_print_backgrounds ();
		public unowned string get_sans_serif_font_family ();
		public unowned string get_serif_font_family ();
		public bool get_zoom_text_only ();
		public void set_allow_modal_dialogs (bool allowed);
		public void set_auto_load_images (bool enabled);
		public void set_cursive_font_family (string cursive_font_family);
		public void set_default_charset (string default_charset);
		public void set_default_font_family (string default_font_family);
		public void set_default_font_size (uint32 font_size);
		public void set_default_monospace_font_size (uint32 font_size);
		public void set_draw_compositing_indicators (bool enabled);
		public void set_enable_caret_browsing (bool enabled);
		public void set_enable_developer_extras (bool enabled);
		public void set_enable_dns_prefetching (bool enabled);
		public void set_enable_frame_flattening (bool enabled);
		public void set_enable_fullscreen (bool enabled);
		public void set_enable_html5_database (bool enabled);
		public void set_enable_html5_local_storage (bool enabled);
		public void set_enable_hyperlink_auditing (bool enabled);
		public void set_enable_java (bool enabled);
		public void set_enable_javascript (bool enabled);
		public void set_enable_offline_web_application_cache (bool enabled);
		public void set_enable_page_cache (bool enabled);
		public void set_enable_plugins (bool enabled);
		public void set_enable_private_browsing (bool enabled);
		public void set_enable_resizable_text_areas (bool enabled);
		public void set_enable_site_specific_quirks (bool enabled);
		public void set_enable_tabs_to_links (bool enabled);
		public void set_enable_webaudio (bool enabled);
		public void set_enable_webgl (bool enabled);
		public void set_enable_xss_auditor (bool enabled);
		public void set_fantasy_font_family (string fantasy_font_family);
		public void set_javascript_can_access_clipboard (bool enabled);
		public void set_javascript_can_open_windows_automatically (bool enabled);
		public void set_load_icons_ignoring_image_load_setting (bool enabled);
		public void set_media_playback_allows_inline (bool enabled);
		public void set_media_playback_requires_user_gesture (bool enabled);
		public void set_minimum_font_size (uint32 font_size);
		public void set_monospace_font_family (string monospace_font_family);
		public void set_pictograph_font_family (string pictograph_font_family);
		public void set_print_backgrounds (bool print_backgrounds);
		public void set_sans_serif_font_family (string sans_serif_font_family);
		public void set_serif_font_family (string serif_font_family);
		public void set_zoom_text_only (bool zoom_text_only);
		public bool allow_modal_dialogs { get; set construct; }
		public bool auto_load_images { get; set construct; }
		public string cursive_font_family { get; set construct; }
		public string default_charset { get; set construct; }
		public string default_font_family { get; set construct; }
		public uint default_font_size { get; set construct; }
		public uint default_monospace_font_size { get; set construct; }
		public bool draw_compositing_indicators { get; set construct; }
		public bool enable_caret_browsing { get; set construct; }
		public bool enable_developer_extras { get; set construct; }
		public bool enable_dns_prefetching { get; set construct; }
		public bool enable_frame_flattening { get; set construct; }
		public bool enable_fullscreen { get; set construct; }
		public bool enable_html5_database { get; set construct; }
		public bool enable_html5_local_storage { get; set construct; }
		public bool enable_hyperlink_auditing { get; set construct; }
		public bool enable_java { get; set construct; }
		public bool enable_javascript { get; set construct; }
		public bool enable_offline_web_application_cache { get; set construct; }
		public bool enable_page_cache { get; set construct; }
		public bool enable_plugins { get; set construct; }
		public bool enable_private_browsing { get; set construct; }
		public bool enable_resizable_text_areas { get; set construct; }
		public bool enable_site_specific_quirks { get; set construct; }
		public bool enable_tabs_to_links { get; set construct; }
		public bool enable_webaudio { get; set construct; }
		public bool enable_webgl { get; set construct; }
		public bool enable_xss_auditor { get; set construct; }
		public string fantasy_font_family { get; set construct; }
		public bool javascript_can_access_clipboard { get; set construct; }
		public bool javascript_can_open_windows_automatically { get; set construct; }
		public bool load_icons_ignoring_image_load_setting { get; set construct; }
		public bool media_playback_allows_inline { get; set construct; }
		public bool media_playback_requires_user_gesture { get; set construct; }
		public uint minimum_font_size { get; set construct; }
		public string monospace_font_family { get; set construct; }
		public string pictograph_font_family { get; set construct; }
		public bool print_backgrounds { get; set construct; }
		public string sans_serif_font_family { get; set construct; }
		public string serif_font_family { get; set construct; }
		public bool zoom_text_only { get; set construct; }
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", type_id = "webkit_uri_request_get_type ()")]
	public class URIRequest : GLib.Object {
		[CCode (has_construct_function = false)]
		public URIRequest (string uri);
		public unowned string get_uri ();
		public string uri { get; construct; }
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", type_id = "webkit_uri_response_get_type ()")]
	public class URIResponse : GLib.Object {
		[CCode (has_construct_function = false)]
		protected URIResponse ();
		public uint64 get_content_length ();
		public bool get_https_status (out unowned GLib.TlsCertificate certificate, out GLib.TlsCertificateFlags errors);
		public unowned string get_mime_type ();
		public uint get_status_code ();
		public unowned string get_uri ();
		public uint64 content_length { get; }
		public string mime_type { get; }
		public uint status_code { get; }
		public string uri { get; }
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", type_id = "webkit_uri_scheme_request_get_type ()")]
	public class URISchemeRequest : GLib.Object {
		[CCode (has_construct_function = false)]
		protected URISchemeRequest ();
		public void finish (GLib.InputStream stream, int64 stream_length, string? mime_type);
		public unowned string get_path ();
		public unowned string get_scheme ();
		public unowned string get_uri ();
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", type_id = "webkit_web_context_get_type ()")]
	public class WebContext : GLib.Object {
		[CCode (has_construct_function = false)]
		protected WebContext ();
		public void clear_cache ();
		public WebKit.Download download_uri (string uri);
		public WebKit.CacheModel get_cache_model ();
		public unowned WebKit.CookieManager get_cookie_manager ();
		public unowned WebKit.FaviconDatabase get_favicon_database ();
		public void set_favicon_database_directory (string path);
		public static unowned WebKit.WebContext get_default ();
		public void set_disk_cache_directory (string path);
		public async GLib.List<WebKit.Plugin> get_plugins (GLib.Cancellable? cancellable) throws GLib.Error;
		public bool get_spell_checking_enabled ();
		public unowned string get_spell_checking_languages ();
		public void register_uri_scheme (string scheme, owned WebKit.URISchemeRequestCallback callback);
		public void set_additional_plugins_directory (string directory);
		public void set_cache_model (WebKit.CacheModel cache_model);
		public void set_spell_checking_enabled (bool enabled);
		public void set_spell_checking_languages (string languages);
		public signal void download_started (WebKit.Download download);
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", type_id = "webkit_web_inspector_get_type ()")]
	public class WebInspector : GLib.Object {
		[CCode (has_construct_function = false)]
		protected WebInspector ();
		public void close ();
		public uint get_attached_height ();
		public unowned string get_inspected_uri ();
		public unowned WebKit.WebViewBase get_web_view ();
		public bool is_attached ();
		public void show ();
		public uint attached_height { get; }
		public string inspected_uri { get; }
		[HasEmitter]
		public signal bool attach ();
		public signal bool bring_to_front ();
		public signal void closed ();
		[HasEmitter]
		public signal bool detach ();
		public signal bool open_window ();
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", type_id = "webkit_web_resource_get_type ()")]
	public class WebResource : GLib.Object {
		[CCode (has_construct_function = false)]
		protected WebResource ();
		public async uint8 get_data (GLib.Cancellable? cancellable, out size_t length) throws GLib.Error;
		public unowned WebKit.URIResponse get_response ();
		public unowned string get_uri ();
		public WebKit.URIResponse response { get; }
		public string uri { get; }
		public signal void failed (void* error);
		public signal void finished ();
		public signal void received_data (uint64 data_length);
		public signal void sent_request (WebKit.URIRequest request, WebKit.URIResponse redirected_response);
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", cprefix = "WEBKIT_VIEW_MODE_")]
	public enum ViewMode {
		WEB,
		SOURCE
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", type_id = "webkit_web_view_get_type ()")]
	public class WebView : WebKit.WebViewBase, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public WebView ();
		public async bool can_execute_editing_command (string command, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool can_go_back ();
		public bool can_go_forward ();
		public bool can_show_mime_type (string mime_type);
		public void execute_editing_command (string command);
		public unowned WebKit.BackForwardList get_back_forward_list ();
		public unowned WebKit.WebContext get_context ();
		public unowned string get_custom_charset ();
		public double get_estimated_load_progress ();
		public unowned WebKit.FindController get_find_controller ();
		public unowned WebKit.WebInspector get_inspector ();
		public unowned WebKit.WebResource get_main_resource ();
		public unowned WebKit.Settings get_settings ();
		public GLib.List<weak WebKit.WebResource> get_subresources ();
		public unowned string get_title ();
		public unowned string get_uri ();
		public unowned WebKit.WindowProperties get_window_properties ();
		public double get_zoom_level ();
		public void go_back ();
		public void go_forward ();
		public void go_to_back_forward_list_item (WebKit.BackForwardListItem list_item);
		public void load_html (string content, string? base_uri);
		public void load_plain_text (string plain_text);
		public void load_request (WebKit.URIRequest request);
		public void load_uri (string uri);
		public void reload ();
		public void reload_bypass_cache ();
		public void replace_content (string content, string content_uri, string? base_uri);
		public async WebKit.JavascriptResult run_javascript (string script, GLib.Cancellable? cancellable) throws GLib.Error;
		public void set_custom_charset (string? charset);
		public void set_settings (WebKit.Settings settings);
		public void set_zoom_level (double zoom_level);
		public void stop_loading ();
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public WebView.with_context (WebKit.WebContext context);
		public double estimated_load_progress { get; }
		public string title { get; }
		public string uri { get; }
		[NoAccessorMethod]
		public WebKit.WebContext web_context { owned get; construct; }
		public double zoom_level { get; set; }
		public WebKit.ViewMode view_mode { get; set; }
		public virtual signal void close ();
		public virtual signal bool context_menu (WebKit.ContextMenu context_menu, Gdk.Event event, WebKit.HitTestResult hit_test_result);
		public virtual signal void context_menu_dismissed ();
		public signal Gtk.Widget create ();
		public virtual signal bool decide_policy (WebKit.PolicyDecision decision, WebKit.PolicyDecisionType type);
		public virtual signal bool enter_fullscreen ();
		public virtual signal bool leave_fullscreen ();
		public virtual signal void load_changed (WebKit.LoadEvent load_event);
		public virtual signal bool load_failed (WebKit.LoadEvent load_event, string failing_uri, void* error);
		public virtual signal void mouse_target_changed (WebKit.HitTestResult hit_test_result, uint modifiers);
		public virtual signal bool permission_request (WebKit.PermissionRequest permission_request);
		public virtual signal bool print_requested (WebKit.PrintOperation print_operation);
		public virtual signal void ready_to_show ();
		public virtual signal void resource_load_started (WebKit.WebResource resource, WebKit.URIRequest request);
		public virtual signal void run_as_modal ();
		public virtual signal bool run_file_chooser (WebKit.FileChooserRequest request);
		public virtual signal bool script_dialog (WebKit.ScriptDialog dialog);
		public virtual signal void submit_form (WebKit.FormSubmissionRequest request);
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", type_id = "webkit_web_view_base_get_type ()")]
	public class WebViewBase : Gtk.Container, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false)]
		protected WebViewBase ();
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", type_id = "webkit_window_properties_get_type ()")]
	public class WindowProperties : GLib.Object {
		[CCode (has_construct_function = false)]
		protected WindowProperties ();
		public bool get_fullscreen ();
		public Gdk.Rectangle get_geometry ();
		public bool get_locationbar_visible ();
		public bool get_menubar_visible ();
		public bool get_resizable ();
		public bool get_scrollbars_visible ();
		public bool get_statusbar_visible ();
		public bool get_toolbar_visible ();
		public bool fullscreen { get; construct; }
		public Cairo.RectangleInt geometry { get; construct; }
		public bool locationbar_visible { get; construct; }
		public bool menubar_visible { get; construct; }
		public bool resizable { get; construct; }
		public bool scrollbars_visible { get; construct; }
		public bool statusbar_visible { get; construct; }
		public bool toolbar_visible { get; construct; }
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", type_id = "webkit_permission_request_get_type ()")]
	public interface PermissionRequest : GLib.Object {
		public abstract void allow ();
		public abstract void deny ();
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", cprefix = "WEBKIT_CACHE_MODEL_")]
	public enum CacheModel {
		DOCUMENT_VIEWER,
		WEB_BROWSER,
		DOCUMENT_BROWSER
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", cprefix = "WEBKIT_CONTEXT_MENU_ACTION_")]
	public enum ContextMenuAction {
		NO_ACTION,
		OPEN_LINK,
		OPEN_LINK_IN_NEW_WINDOW,
		DOWNLOAD_LINK_TO_DISK,
		COPY_LINK_TO_CLIPBOARD,
		OPEN_IMAGE_IN_NEW_WINDOW,
		DOWNLOAD_IMAGE_TO_DISK,
		COPY_IMAGE_TO_CLIPBOARD,
		COPY_IMAGE_URL_TO_CLIPBOARD,
		OPEN_FRAME_IN_NEW_WINDOW,
		GO_BACK,
		GO_FORWARD,
		STOP,
		RELOAD,
		COPY,
		CUT,
		PASTE,
		DELETE,
		SELECT_ALL,
		INPUT_METHODS,
		UNICODE,
		SPELLING_GUESS,
		NO_GUESSES_FOUND,
		IGNORE_SPELLING,
		LEARN_SPELLING,
		IGNORE_GRAMMAR,
		FONT_MENU,
		BOLD,
		ITALIC,
		UNDERLINE,
		OUTLINE,
		INSPECT_ELEMENT,
		OPEN_VIDEO_IN_NEW_WINDOW,
		OPEN_AUDIO_IN_NEW_WINDOW,
		COPY_VIDEO_LINK_TO_CLIPBOARD,
		COPY_AUDIO_LINK_TO_CLIPBOARD,
		TOGGLE_MEDIA_CONTROLS,
		TOGGLE_MEDIA_LOOP,
		ENTER_VIDEO_FULLSCREEN,
		MEDIA_PLAY,
		MEDIA_PAUSE,
		MEDIA_MUTE,
		CUSTOM
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", cprefix = "WEBKIT_COOKIE_POLICY_ACCEPT_")]
	public enum CookieAcceptPolicy {
		ALWAYS,
		NEVER,
		NO_THIRD_PARTY
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", cprefix = "WEBKIT_COOKIE_PERSISTENT_STORAGE_")]
	public enum CookiePersistentStorage {
		TEXT,
		SQLITE
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", cprefix = "WEBKIT_DOWNLOAD_ERROR_")]
	public enum DownloadError {
		NETWORK,
		CANCELLED_BY_USER,
		DESTINATION;
		public static GLib.Quark quark ();
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", cprefix = "WEBKIT_FIND_OPTIONS_")]
	[Flags]
	public enum FindOptions {
		NONE,
		CASE_INSENSITIVE,
		AT_WORD_STARTS,
		TREAT_MEDIAL_CAPITAL_AS_WORD_START,
		BACKWARDS,
		WRAP_AROUND
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", cprefix = "WEBKIT_HIT_TEST_RESULT_CONTEXT_")]
	[Flags]
	public enum HitTestResultContext {
		DOCUMENT,
		LINK,
		IMAGE,
		MEDIA,
		EDITABLE
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", cprefix = "WEBKIT_JAVASCRIPT_ERROR_SCRIPT_")]
	public enum JavascriptError {
		FAILED;
		public static GLib.Quark quark ();
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", cprefix = "WEBKIT_LOAD_")]
	public enum LoadEvent {
		STARTED,
		REDIRECTED,
		COMMITTED,
		FINISHED
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", cprefix = "WEBKIT_NAVIGATION_TYPE_")]
	public enum NavigationType {
		LINK_CLICKED,
		FORM_SUBMITTED,
		BACK_FORWARD,
		RELOAD,
		FORM_RESUBMITTED,
		OTHER
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", cprefix = "WEBKIT_NETWORK_ERROR_")]
	public enum NetworkError {
		FAILED,
		TRANSPORT,
		UNKNOWN_PROTOCOL,
		CANCELLED,
		FILE_DOES_NOT_EXIST;
		public static GLib.Quark quark ();
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", cprefix = "WEBKIT_PLUGIN_ERROR_")]
	public enum PluginError {
		FAILED,
		CANNOT_FIND_PLUGIN,
		CANNOT_LOAD_PLUGIN,
		JAVA_UNAVAILABLE,
		CONNECTION_CANCELLED,
		WILL_HANDLE_LOAD;
		public static GLib.Quark quark ();
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", cprefix = "WEBKIT_POLICY_DECISION_TYPE_")]
	public enum PolicyDecisionType {
		NAVIGATION_ACTION,
		NEW_WINDOW_ACTION,
		RESPONSE
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", cprefix = "WEBKIT_POLICY_ERROR_")]
	public enum PolicyError {
		FAILED,
		CANNOT_SHOW_MIME_TYPE,
		CANNOT_SHOW_URI,
		FRAME_LOAD_INTERRUPTED_BY_POLICY_CHANGE,
		CANNOT_USE_RESTRICTED_PORT;
		public static GLib.Quark quark ();
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", cprefix = "WEBKIT_PRINT_ERROR_")]
	public enum PrintError {
		GENERAL,
		PRINTER_NOT_FOUND,
		INVALID_PAGE_RANGE;
		public static GLib.Quark quark ();
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", cprefix = "WEBKIT_PRINT_OPERATION_RESPONSE_")]
	public enum PrintOperationResponse {
		PRINT,
		CANCEL
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", cprefix = "WEBKIT_SCRIPT_DIALOG_")]
	public enum ScriptDialogType {
		ALERT,
		CONFIRM,
		PROMPT
	}
	[CCode (cheader_filename = "webkit2/webkit2.h", instance_pos = 1.9)]
	public delegate void URISchemeRequestCallback (WebKit.URISchemeRequest request);
	[CCode (cheader_filename = "webkit2/webkit2.h", cname = "WEBKIT_EDITING_COMMAND_COPY")]
	public const string EDITING_COMMAND_COPY;
	[CCode (cheader_filename = "webkit2/webkit2.h", cname = "WEBKIT_EDITING_COMMAND_CUT")]
	public const string EDITING_COMMAND_CUT;
	[CCode (cheader_filename = "webkit2/webkit2.h", cname = "WEBKIT_EDITING_COMMAND_PASTE")]
	public const string EDITING_COMMAND_PASTE;
}
