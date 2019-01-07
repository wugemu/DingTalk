.class public Lcom/alibaba/android/ads/db/AdsPositionEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "AdsPositionEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_ads_position"
.end annotation


# static fields
.field public static final NAME_ID:Ljava/lang/String; = "id"

.field public static final NAME_LIFECYCLE_APP_VER:Ljava/lang/String; = "lifecycle_app_ver"

.field public static final NAME_LIFECYCLE_END_TIME:Ljava/lang/String; = "lifecycle_end_time"

.field public static final NAME_LIFECYCLE_START_TIME:Ljava/lang/String; = "lifecycle_start_time"

.field public static final NAME_LIFECYCLE_TYPE:Ljava/lang/String; = "lifecycle_type"

.field public static final NAME_PRIORITY:Ljava/lang/String; = "priority"

.field public static final NAME_STYLE_ACT_TEXT:Ljava/lang/String; = "style_act_text"

.field public static final NAME_STYLE_ACT_URL:Ljava/lang/String; = "style_act_url"

.field public static final NAME_STYLE_ALERT:Ljava/lang/String; = "style_alert"

.field public static final NAME_STYLE_CHAT_ADS_MODEL:Ljava/lang/String; = "style_chat_ads"

.field public static final NAME_STYLE_CID:Ljava/lang/String; = "style_cid"

.field public static final NAME_STYLE_DING_ADS_MODEL:Ljava/lang/String; = "style_ding_ads"

.field public static final NAME_STYLE_MEDIA_ID:Ljava/lang/String; = "style_media_id"

.field public static final NAME_STYLE_NUMBER:Ljava/lang/String; = "style_number"

.field public static final NAME_STYLE_REDPOINT:Ljava/lang/String; = "style_red"

.field public static final NAME_STYLE_SPLASH:Ljava/lang/String; = "style_splash"

.field public static final NAME_STYLE_TEXT:Ljava/lang/String; = "style_text"

.field public static final NAME_STYLE_TIPS:Ljava/lang/String; = "style_tips"

.field public static final NAME_STYLE_TYPE:Ljava/lang/String; = "style_type"

.field public static final NAME_VER:Ljava/lang/String; = "ver"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_ads_position"


# instance fields
.field public id:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "id"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_tb_ads_position_id:1"
    .end annotation
.end field

.field public lifecycle_app_ver:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "lifecycle_app_ver"
        sort = 0x7
    .end annotation
.end field

.field public lifecycle_end_time:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "lifecycle_end_time"
        sort = 0x6
    .end annotation
.end field

.field public lifecycle_start_time:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "lifecycle_start_time"
        sort = 0x5
    .end annotation
.end field

.field public lifecycle_type:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "lifecycle_type"
        sort = 0x4
    .end annotation
.end field

.field public priority:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "priority"
        sort = 0x3
    .end annotation
.end field

.field public style_act_text:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "style_act_text"
        sort = 0xd
    .end annotation
.end field

.field public style_act_url:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "style_act_url"
        sort = 0xe
    .end annotation
.end field

.field public style_alert_model:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "style_alert"
        sort = 0xf
    .end annotation
.end field

.field public style_chat_ads_model:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "style_chat_ads"
        sort = 0x14
    .end annotation
.end field

.field public style_cid:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "style_cid"
        sort = 0xc
    .end annotation
.end field

.field public style_ding_ads_model:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "style_ding_ads"
        sort = 0x12
    .end annotation
.end field

.field public style_media_id:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "style_media_id"
        sort = 0x11
    .end annotation
.end field

.field public style_number:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "style_number"
        sort = 0x13
    .end annotation
.end field

.field public style_red:Z
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "style_red"
        sort = 0x9
    .end annotation
.end field

.field public style_splash_model:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "style_splash"
        sort = 0x10
    .end annotation
.end field

.field public style_text:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "style_text"
        sort = 0xb
    .end annotation
.end field

.field public style_tips:Z
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "style_tips"
        sort = 0xa
    .end annotation
.end field

.field public style_type:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "style_type"
        sort = 0x8
    .end annotation
.end field

.field public ver:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "ver"
        sort = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    return-void
.end method

.method public static fromDBEntry(Lcom/alibaba/android/ads/db/AdsPositionEntry;)Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;
    .locals 7
    .param p0, "entry"    # Lcom/alibaba/android/ads/db/AdsPositionEntry;

    .prologue
    const/4 v6, 0x0

    .line 168
    new-instance v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;-><init>()V

    .line 169
    .local v1, "object":Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;
    iget-object v2, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->id:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->id:Ljava/lang/String;

    .line 170
    iget-wide v2, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->ver:J

    iput-wide v2, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->ver:J

    .line 171
    iget v2, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->priority:I

    iput v2, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->priority:I

    .line 172
    new-instance v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;-><init>()V

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->lifecycle:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;

    .line 173
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->lifecycle:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;

    iget v3, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->lifecycle_type:I

    iput v3, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;->lifecycle:I

    .line 174
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->lifecycle:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;

    iget-wide v4, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->lifecycle_start_time:J

    iput-wide v4, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;->startTime:J

    .line 175
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->lifecycle:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;

    iget-wide v4, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->lifecycle_end_time:J

    iput-wide v4, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;->endTime:J

    .line 176
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->lifecycle:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;

    iget-object v3, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->lifecycle_app_ver:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;->ver:Ljava/lang/String;

    .line 177
    new-instance v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;-><init>()V

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    .line 178
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget v3, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_type:I

    iput v3, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->type:I

    .line 179
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-boolean v3, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_red:Z

    iput-boolean v3, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->redPoint:Z

    .line 180
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-boolean v3, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_tips:Z

    iput-boolean v3, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->tips:Z

    .line 181
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-object v3, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_text:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->text:Ljava/lang/String;

    .line 182
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-object v3, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_cid:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->cid:Ljava/lang/String;

    .line 183
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-object v3, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_act_text:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->actText:Ljava/lang/String;

    .line 184
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-object v3, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_act_url:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->actUrl:Ljava/lang/String;

    .line 185
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-object v3, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_media_id:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->mediaId:Ljava/lang/String;

    .line 186
    iget-object v2, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_alert_model:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 188
    :try_start_0
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-object v2, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_alert_model:Ljava/lang/String;

    const-class v4, Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;

    invoke-static {v2, v4}, Lcoo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;

    iput-object v2, v3, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->alertStyleObject:Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_splash_model:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 196
    :try_start_1
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-object v2, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_splash_model:Ljava/lang/String;

    const-class v4, Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;

    invoke-static {v2, v4}, Lcoo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;

    iput-object v2, v3, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->splashStyleObject:Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 203
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_ding_ads_model:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 205
    :try_start_2
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-object v2, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_ding_ads_model:Ljava/lang/String;

    const-class v4, Lblf;

    invoke-static {v2, v4}, Lcoo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lblf;

    iput-object v2, v3, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->dingAdsStyleObject:Lblf;
    :try_end_2
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 212
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_chat_ads_model:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 214
    :try_start_3
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-object v2, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_chat_ads_model:Ljava/lang/String;

    const-class v4, Lcom/alibaba/android/dingtalk/ads/base/models/GuideChatStyleObject;

    invoke-static {v2, v4}, Lcoo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/ads/base/models/GuideChatStyleObject;

    iput-object v2, v3, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->guideChatStyleObject:Lcom/alibaba/android/dingtalk/ads/base/models/GuideChatStyleObject;
    :try_end_3
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 220
    :cond_3
    :goto_3
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget v3, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_number:I

    iput v3, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->number:I

    .line 222
    return-object v1

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Lcom/alibaba/fastjson/JSONException;
    const-string/jumbo v2, "data"

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONException;->printStackTrace()V

    goto :goto_0

    .line 197
    .end local v0    # "e":Lcom/alibaba/fastjson/JSONException;
    :catch_1
    move-exception v0

    .line 198
    .restart local v0    # "e":Lcom/alibaba/fastjson/JSONException;
    const-string/jumbo v2, "data"

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONException;->printStackTrace()V

    goto :goto_1

    .line 206
    .end local v0    # "e":Lcom/alibaba/fastjson/JSONException;
    :catch_2
    move-exception v0

    .line 207
    .restart local v0    # "e":Lcom/alibaba/fastjson/JSONException;
    const-string/jumbo v2, "data"

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONException;->printStackTrace()V

    goto :goto_2

    .line 215
    .end local v0    # "e":Lcom/alibaba/fastjson/JSONException;
    :catch_3
    move-exception v0

    .line 216
    .restart local v0    # "e":Lcom/alibaba/fastjson/JSONException;
    const-string/jumbo v2, "data"

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONException;->printStackTrace()V

    goto :goto_3
.end method

.method public static toDBEntry(Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;)Lcom/alibaba/android/ads/db/AdsPositionEntry;
    .locals 6
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    .prologue
    const/4 v5, 0x0

    .line 227
    new-instance v1, Lcom/alibaba/android/ads/db/AdsPositionEntry;

    invoke-direct {v1}, Lcom/alibaba/android/ads/db/AdsPositionEntry;-><init>()V

    .line 228
    .local v1, "entry":Lcom/alibaba/android/ads/db/AdsPositionEntry;
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->id:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/ads/db/AdsPositionEntry;->id:Ljava/lang/String;

    .line 229
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->ver:J

    iput-wide v2, v1, Lcom/alibaba/android/ads/db/AdsPositionEntry;->ver:J

    .line 230
    iget v2, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->priority:I

    iput v2, v1, Lcom/alibaba/android/ads/db/AdsPositionEntry;->priority:I

    .line 231
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->lifecycle:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;

    if-eqz v2, :cond_0

    .line 232
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->lifecycle:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;

    iget v2, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;->lifecycle:I

    iput v2, v1, Lcom/alibaba/android/ads/db/AdsPositionEntry;->lifecycle_type:I

    .line 233
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->lifecycle:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;->startTime:J

    iput-wide v2, v1, Lcom/alibaba/android/ads/db/AdsPositionEntry;->lifecycle_start_time:J

    .line 234
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->lifecycle:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;->endTime:J

    iput-wide v2, v1, Lcom/alibaba/android/ads/db/AdsPositionEntry;->lifecycle_end_time:J

    .line 235
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->lifecycle:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;->ver:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/ads/db/AdsPositionEntry;->lifecycle_app_ver:Ljava/lang/String;

    .line 237
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    if-eqz v2, :cond_5

    .line 238
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget v2, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->type:I

    iput v2, v1, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_type:I

    .line 239
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-boolean v2, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->redPoint:Z

    iput-boolean v2, v1, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_red:Z

    .line 240
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-boolean v2, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->tips:Z

    iput-boolean v2, v1, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_tips:Z

    .line 241
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->text:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_text:Ljava/lang/String;

    .line 242
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->cid:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_cid:Ljava/lang/String;

    .line 243
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->actText:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_act_text:Ljava/lang/String;

    .line 244
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->actUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_act_url:Ljava/lang/String;

    .line 245
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->mediaId:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_media_id:Ljava/lang/String;

    .line 246
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->alertStyleObject:Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;

    if-eqz v2, :cond_1

    .line 248
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->alertStyleObject:Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;

    invoke-static {v2}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_alert_model:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->splashStyleObject:Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;

    if-eqz v2, :cond_2

    .line 256
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->splashStyleObject:Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;

    invoke-static {v2}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_splash_model:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 262
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->dingAdsStyleObject:Lblf;

    if-eqz v2, :cond_3

    .line 264
    :try_start_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->dingAdsStyleObject:Lblf;

    invoke-static {v2}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_ding_ads_model:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 270
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->guideChatStyleObject:Lcom/alibaba/android/dingtalk/ads/base/models/GuideChatStyleObject;

    if-eqz v2, :cond_4

    .line 272
    :try_start_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->guideChatStyleObject:Lcom/alibaba/android/dingtalk/ads/base/models/GuideChatStyleObject;

    invoke-static {v2}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_chat_ads_model:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 278
    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget v2, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->number:I

    iput v2, v1, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_number:I

    .line 281
    :cond_5
    return-object v1

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "data"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 257
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 258
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "data"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 265
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 266
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "data"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 273
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 274
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "data"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method public reset()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->id:Ljava/lang/String;

    .line 145
    iput-wide v2, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->ver:J

    .line 146
    iput v1, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->priority:I

    .line 147
    iput v1, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->lifecycle_type:I

    .line 148
    iput-wide v2, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->lifecycle_start_time:J

    .line 149
    iput-wide v2, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->lifecycle_end_time:J

    .line 150
    iput-object v0, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->lifecycle_app_ver:Ljava/lang/String;

    .line 151
    iput v1, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_type:I

    .line 152
    iput-boolean v1, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_red:Z

    .line 153
    iput-boolean v1, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_tips:Z

    .line 154
    iput-object v0, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_text:Ljava/lang/String;

    .line 155
    iput-object v0, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_cid:Ljava/lang/String;

    .line 156
    iput-object v0, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_act_text:Ljava/lang/String;

    .line 157
    iput-object v0, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_act_url:Ljava/lang/String;

    .line 158
    iput-object v0, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_alert_model:Ljava/lang/String;

    .line 159
    iput-object v0, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_splash_model:Ljava/lang/String;

    .line 160
    iput-object v0, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_media_id:Ljava/lang/String;

    .line 161
    iput-object v0, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_ding_ads_model:Ljava/lang/String;

    .line 162
    iput-object v0, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_chat_ads_model:Ljava/lang/String;

    .line 163
    iput v1, p0, Lcom/alibaba/android/ads/db/AdsPositionEntry;->style_number:I

    .line 164
    return-void
.end method
