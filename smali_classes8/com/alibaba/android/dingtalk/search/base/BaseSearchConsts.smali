.class public Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts;
.super Ljava/lang/Object;
.source "BaseSearchConsts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;
    }
.end annotation


# static fields
.field public static final ACTION_SEARCH_QUERY_HINT_CHANGED:Ljava/lang/String; = "action_search_query_hint_changed"

.field private static final ACTIVITY_SCHEME:Ljava/lang/String; = "https://qr.dingtalk.com/search/"

.field public static final CLD_SETTING_ASSURE_MAX_EVICT_TIME:Ljava/lang/String; = "dt_search_assure_eliminate_MAX_time"

.field public static final CLD_SETTING_ASSURE_MAX_EVICT_TIME_DEFAULT:J = 0xf731400L

.field public static final CLD_SETTING_ASSURE_MIN_EVICT_TIME:Ljava/lang/String; = "dt_search_assure_eliminate_min_time"

.field public static final CLD_SETTING_ASSURE_MIN_EVICT_TIME_DEFAULT:J = 0xea60L

.field public static final CLD_SETTING_ASSURE_PREFIX_LENGRH:Ljava/lang/String; = "dt_search_assure_prefix_cache_count"

.field public static final CLD_SETTING_ASSURE_PREFIX_LENGRH_DEFAULT:I = 0x5

.field public static final CLD_SETTING_ASSURE_QUALIFIED_CONFIRM_DEFAULT:J = 0x493e0L

.field public static final CLD_SETTING_ASSURE_QUALIFIED_CONFIRM_TIME:Ljava/lang/String; = "dt_search_assure_qualified_confirm_time"

.field public static final CLD_SETTING_ASSURE_QUALIFIED_TIME:Ljava/lang/String; = "dt_search_assure_qualified_time"

.field public static final CLD_SETTING_ASSURE_QUALIFIED_TIME_DEFAULT:J = 0x1cf7c5800L

.field public static final CLD_SETTING_ASSURE_RESET_TIME:Ljava/lang/String; = "dt_search_assure_count_reset_time"

.field public static final CLD_SETTING_ASSURE_RESET_TIME_DEFAULT:J = 0x36ee80L

.field public static final CLOUD_SETTING_KEY_LOCAL_GROUP_SEARCH_TIMESPAN_DAYS:Ljava/lang/String; = "search_group_native_patch_date"

.field public static final CLOUD_SETTING_KEY_SEARCH_ENGINE_USE_FTS:Ljava/lang/String; = "search_engine_use_fts_v2"

.field public static final CLOUD_SETTING_KEY_SEARCH_LOCAL_GROUP_BATCH_SIZE:Ljava/lang/String; = "search_local_group_batch_size"

.field public static final CLOUD_SETTING_KEY_SEARCH_QUERY_LENGTH:Ljava/lang/String; = "search_query_len"

.field public static final CLOUD_SETTING_KEY_SEARCH_RECOMMEND_CREDIBILITY:Ljava/lang/String; = "search_recommend_credibility"

.field public static final CLOUD_SETTING_KEY_SEARCH_SEARCH_RENDER_DELAY_TIME:Ljava/lang/String; = "search_render_delay_time_android"

.field public static final CLOUD_SETTING_KEY_SEARCH_SQLITE_LOG_LEVEL:Ljava/lang/String; = "cloud_setting_key_sqlite3_log_level"

.field public static final CLOUD_SETTING_MODULE_DT_SEARCH:Ljava/lang/String; = "dt_search"

.field public static final DEFAULT_SEARCH_QUERY_LENGTH:I = 0x14

.field public static final FLAG_CONTACT_SEARCH_ALIAS:I = 0x4

.field public static final FLAG_CONTACT_SEARCH_ALL:I = 0x1

.field public static final FLAG_CONTACT_SEARCH_COMMON:I = 0x8

.field public static final FLAG_CONTACT_SEARCH_FRIEND:I = 0x10

.field public static final FLAG_CONTACT_SEARCH_LOCAL:I = 0x20

.field public static final FLAG_CONTACT_SEARCH_LOCAL_EMPOLYEE_CACHE_CONTACT:I = 0x80

.field public static final FLAG_CONTACT_SEARCH_ORG_CONTACT:I = 0x40

.field public static final FLAG_CONTACT_SEARCH_REC:I = 0x2

.field public static final FLAG_SHOW_SEARCH_ASSURE:I = 0x100

.field public static final FLAG_SHOW_SEARCH_DING:I = 0x200

.field public static final FLAG_SHOW_SEARCH_MAIL:I = 0x800

.field public static final FLAG_SHOW_SEARCH_RESULT_ALL:I = 0x1

.field public static final FLAG_SHOW_SEARCH_RESULT_CONTACT:I = 0x2

.field public static final FLAG_SHOW_SEARCH_RESULT_DEPT:I = 0x40

.field public static final FLAG_SHOW_SEARCH_RESULT_EXTERNAL_CONTACT:I = 0x20

.field public static final FLAG_SHOW_SEARCH_RESULT_FUNCTION:I = 0x10

.field public static final FLAG_SHOW_SEARCH_RESULT_GROUPS:I = 0x4

.field public static final FLAG_SHOW_SEARCH_RESULT_LIGHTAPP:I = 0x80

.field public static final FLAG_SHOW_SEARCH_RESULT_MSG:I = 0x8

.field public static final FLAG_SHOW_SEARCH_SPACE:I = 0x400

.field public static final FLAG_SHOW_SEARCH_SUGGESTION_GUIDE:I = 0x1000

.field public static INIT_SHOW_SIZE:I = 0x0

.field public static final INTENT_KEY_CONTACT_SEARCH_KIND_FLAG:Ljava/lang/String; = "intent_key_contact_search_kind_flag"

.field public static final INTENT_KEY_LABEL_IDS:Ljava/lang/String; = "intent_key_label_ids"

.field public static final INTENT_KEY_SEARCH_DEBUG_RECEIVER_UID:Ljava/lang/String; = "intent_key_search_debug_receiver_uid"

.field public static final INTENT_KEY_SEARCH_ENTRY:Ljava/lang/String; = "intent_key_search_entry"

.field public static final INTENT_KEY_SEARCH_EXACTLY:Ljava/lang/String; = "intent_key_search_exactly"

.field public static final INTENT_KEY_SEARCH_NARROW:Ljava/lang/String; = "intent_key_search_narrow"

.field public static final INTENT_KEY_SEARCH_QUERY_HINT:Ljava/lang/String; = "intent_key_search_query_hint"

.field public static final INTENT_KEY_SEARCH_SHOW_GLOBAL_HOMEPAGE:Ljava/lang/String; = "intent_key_search_show_global_homepage"

.field public static final INTENT_KEY_SEARCH_TAB_SHOW_FLAG:Ljava/lang/String; = "intent_key_search_tab_show_flag"

.field public static final INTENT_KEY_SHOW_ALIA_CONTACTS:Ljava/lang/String; = "intent_key_show_alia_contacts"

.field public static final INTENT_KEY_SHOW_FRAGMENT_TITLE:Ljava/lang/String; = "intent_key_show_fragment_title"

.field public static final INTENT_KEY_STAFF_ID_LIST:Ljava/lang/String; = "intent_key_staff_id_list"

.field public static final IS_SEARCH_MSG_USE_IM_STYLE_OPEN_DEFAULT:Z = true

.field public static final PREF_KEY_LOCAL_GROUP_SEARCH_TIME_SPAN:Ljava/lang/String; = "pref_key_local_group_search_time_span"

.field public static final PREF_KEY_MSG_SEARCH_FROM_CLOUD_SERVER:Ljava/lang/String; = "pref_key_msg_search_from_cloud_server"

.field public static final PREF_KEY_SEARCH_CLICK_HISTORY_LIMIT:Ljava/lang/String; = "pref_key_search_click_history_limit"

.field public static final PREF_KEY_SEARCH_ENGINE_CLOUDSETTING_USE_FTS:Ljava/lang/String; = "pref_key_search_engine_cloudsetting_use_fts_v2"

.field public static final PREF_KEY_SEARCH_FUNCTION_DATA:Ljava/lang/String; = "pref_key_search_function_data"

.field public static final PREF_KEY_SEARCH_FUNCTION_SERVER_DATA:Ljava/lang/String; = "pref_key_search_function_server_data"

.field public static final PREF_KEY_SEARCH_LOCAL_GROUP_BATCH_SIZE:Ljava/lang/String; = "pref_key_search_local_group_batch_size"

.field public static final PREF_KEY_SEARCH_MSG_GLOBAL_SORT_AWAIT_TIME:Ljava/lang/String; = "pref_key_search_msg_global_sort_await_time"

.field public static final PREF_KEY_SEARCH_NEGATIVE_SAMPLE_COMMIT_DETAILS:Ljava/lang/String; = "pref_key_search_negative_sample_commit_details"

.field public static final PREF_KEY_SEARCH_NEGATIVE_SAMPLE_RATE:Ljava/lang/String; = "pref_key_search_negative_sample_rate"

.field public static final PREF_KEY_SEARCH_QUERY_LENGTH:Ljava/lang/String; = "pref_key_search_query_length"

.field public static final PREF_KEY_SEARCH_RECOMMEND_CREDIBILITY:Ljava/lang/String; = "pref_key_search_recommend_credibility"

.field public static final PREF_KEY_SEARCH_SEARCH_RENDER_DELAY_TIME:Ljava/lang/String; = "pref_key_search_search_render_delay_time"

.field public static final PREF_KEY_SEARCH_STAT_DEBUG:Ljava/lang/String; = "pref_key_search_stat_debug"

.field public static final SEARCH_FEEDBACK_URL:Ljava/lang/String; = "https://h5.dingtalk.com/search-feedback/index.html"

.field public static final SEARCH_JOURNAL_URL:Ljava/lang/String; = "https://qr.dingtalk.com/search/search_journal.html"

.field public static final SEARCH_MODE_FUZZY:Ljava/lang/String; = "fuzzy"

.field public static final SEARCH_MODE_RECALL:Ljava/lang/String; = "recal"

.field public static final SHOULD_SHOW_CATEGORY_SEARCH:Ljava/lang/String; = "should_show_category_search"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x3

    sput v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts;->INIT_SHOW_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    return-void
.end method
