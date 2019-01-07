.class public final Lfwn;
.super Lccq;
.source "NotificationsSettingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfwn$a;
    }
.end annotation


# static fields
.field private static b:Lfwn;


# instance fields
.field a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Lcom/alibaba/android/dingtalkbase/notification/Sound;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lfwn$a;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lchj;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lccq;-><init>()V

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfwn;->d:Ljava/util/HashMap;

    return-void
.end method

.method private a(Ljava/lang/String;)Lchj;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 220
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v4

    .line 240
    :goto_0
    return-object v3

    .line 223
    :cond_0
    const-class v3, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v3}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v5, "notification_settings"

    invoke-interface {v3, v5, p1}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v0

    .line 224
    .local v0, "cs":Lcom/alibaba/wukong/settings/CloudSetting;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 225
    iget-object v3, p0, Lfwn;->d:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 226
    iget-object v3, p0, Lfwn;->d:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lchj;

    goto :goto_0

    .line 229
    :cond_1
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lchj;

    invoke-static {v3, v5, v6}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lchj;

    .line 230
    .local v2, "result":Lchj;
    if-eqz v2, :cond_2

    .line 231
    iget-object v3, p0, Lfwn;->d:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v3, v2

    .line 233
    goto :goto_0

    .line 234
    .end local v2    # "result":Lchj;
    :catch_0
    move-exception v1

    .line 235
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v4

    .line 236
    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    move-object v3, v4

    .line 240
    goto :goto_0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2
    .param p0, "scene"    # I

    .prologue
    .line 295
    packed-switch p0, :pswitch_data_0

    .line 307
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 297
    :pswitch_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lezg$l;->dt_setting_notification_normal_msg:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 299
    :pswitch_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lezg$l;->dt_setting_notification_ding_msg:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 301
    :pswitch_2
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lezg$l;->and_setting_notification_atme_msg:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 303
    :pswitch_3
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lezg$l;->dt_setting_notification_special_msg:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 305
    :pswitch_4
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lezg$l;->dt_setting_notification_redenvelop_msg:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 295
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Lchj;Lcom/alibaba/wukong/Callback;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "model"    # Lchj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lchj;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/settings/CloudSetting;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/settings/CloudSetting;>;"
    const/4 v1, 0x0

    .line 244
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_2

    .line 245
    :cond_0
    if-eqz p3, :cond_1

    .line 246
    invoke-interface {p3, v1, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_1
    :goto_0
    return-void

    .line 250
    :cond_2
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-static {v0, p2}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, "str":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 252
    iget-object v0, p0, Lfwn;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-class v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v1, "notification_settings"

    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    move-object v2, p1

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 255
    :cond_3
    if-eqz p3, :cond_1

    .line 256
    invoke-interface {p3, v1, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static c(I)Lcom/alibaba/android/dingtalkbase/notification/Sound;
    .locals 1
    .param p0, "scene"    # I

    .prologue
    .line 369
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 370
    sget-object v0, Lcom/alibaba/android/dingtalkbase/notification/Sound;->Sound_IM_DEFAULT:Lcom/alibaba/android/dingtalkbase/notification/Sound;

    .line 380
    :goto_0
    return-object v0

    .line 371
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 372
    sget-object v0, Lcom/alibaba/android/dingtalkbase/notification/Sound;->Sound_DING_DEFAULT:Lcom/alibaba/android/dingtalkbase/notification/Sound;

    goto :goto_0

    .line 373
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 374
    sget-object v0, Lcom/alibaba/android/dingtalkbase/notification/Sound;->Sound_SPECIAL_DEFAULT:Lcom/alibaba/android/dingtalkbase/notification/Sound;

    goto :goto_0

    .line 375
    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 376
    sget-object v0, Lcom/alibaba/android/dingtalkbase/notification/Sound;->Sound_AT_DEFAULT:Lcom/alibaba/android/dingtalkbase/notification/Sound;

    goto :goto_0

    .line 377
    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    .line 378
    sget-object v0, Lcom/alibaba/android/dingtalkbase/notification/Sound;->Sound_REDPACKET_DEFAULT:Lcom/alibaba/android/dingtalkbase/notification/Sound;

    goto :goto_0

    .line 380
    :cond_4
    sget-object v0, Lcom/alibaba/android/dingtalkbase/notification/Sound;->Sound_IM_DEFAULT:Lcom/alibaba/android/dingtalkbase/notification/Sound;

    goto :goto_0
.end method

.method public static declared-synchronized i()Lfwn;
    .locals 2

    .prologue
    .line 36
    const-class v1, Lfwn;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lfwn;->b:Lfwn;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lfwn;

    invoke-direct {v0}, Lfwn;-><init>()V

    sput-object v0, Lfwn;->b:Lfwn;

    .line 39
    :cond_0
    sget-object v0, Lfwn;->b:Lfwn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private j()Lfwn$a;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 58
    iget-object v3, p0, Lfwn;->c:Lfwn$a;

    if-eqz v3, :cond_0

    .line 59
    iget-object v3, p0, Lfwn;->c:Lfwn$a;

    .line 82
    :goto_0
    return-object v3

    .line 61
    :cond_0
    const-class v3, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v3}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v4, "user_settings"

    const-string/jumbo v5, "push_options"

    invoke-interface {v3, v4, v5}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v0

    .line 62
    .local v0, "cs":Lcom/alibaba/wukong/settings/CloudSetting;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 63
    :cond_1
    new-instance v3, Lfwn$a;

    invoke-direct {v3, v7}, Lfwn$a;-><init>(B)V

    iput-object v3, p0, Lfwn;->c:Lfwn$a;

    .line 64
    iget-object v3, p0, Lfwn;->c:Lfwn$a;

    iput-boolean v6, v3, Lfwn$a;->a:Z

    .line 65
    iget-object v3, p0, Lfwn;->c:Lfwn$a;

    iput-boolean v6, v3, Lfwn$a;->b:Z

    .line 66
    iget-object v3, p0, Lfwn;->c:Lfwn$a;

    iput-boolean v6, v3, Lfwn$a;->c:Z

    .line 82
    :goto_1
    iget-object v3, p0, Lfwn;->c:Lfwn$a;

    goto :goto_0

    .line 69
    :cond_2
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 70
    .local v2, "jsonObject":Lorg/json/JSONObject;
    new-instance v3, Lfwn$a;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lfwn$a;-><init>(B)V

    iput-object v3, p0, Lfwn;->c:Lfwn$a;

    .line 71
    iget-object v3, p0, Lfwn;->c:Lfwn$a;

    const-string/jumbo v4, "notification"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lfwn$a;->a:Z

    .line 72
    iget-object v3, p0, Lfwn;->c:Lfwn$a;

    const-string/jumbo v4, "sound"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lfwn$a;->b:Z

    .line 73
    iget-object v3, p0, Lfwn;->c:Lfwn$a;

    const-string/jumbo v4, "vibrate"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lfwn$a;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 74
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    new-instance v3, Lfwn$a;

    invoke-direct {v3, v7}, Lfwn$a;-><init>(B)V

    iput-object v3, p0, Lfwn;->c:Lfwn$a;

    .line 77
    iget-object v3, p0, Lfwn;->c:Lfwn$a;

    iput-boolean v6, v3, Lfwn$a;->a:Z

    .line 78
    iget-object v3, p0, Lfwn;->c:Lfwn$a;

    iput-boolean v6, v3, Lfwn$a;->b:Z

    .line 79
    iget-object v3, p0, Lfwn;->c:Lfwn$a;

    iput-boolean v6, v3, Lfwn$a;->c:Z

    goto :goto_1
.end method


# virtual methods
.method public final a(II)Landroid/net/Uri;
    .locals 5
    .param p1, "scene"    # I
    .param p2, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 263
    invoke-virtual {p0, p1, p2}, Lfwn;->b(II)Lcom/alibaba/android/dingtalkbase/notification/Sound;

    move-result-object v0

    .line 264
    .local v0, "s":Lcom/alibaba/android/dingtalkbase/notification/Sound;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/notification/Sound;->getRawId()I

    move-result v2

    if-lez v2, :cond_1

    .line 265
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/notification/Sound;->getRawId()I

    move-result v2

    .line 1274
    iget-object v3, p0, Lfwn;->e:Landroid/util/SparseArray;

    if-nez v3, :cond_0

    .line 1275
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lfwn;->e:Landroid/util/SparseArray;

    .line 1277
    :cond_0
    if-lez v2, :cond_1

    .line 1278
    iget-object v1, p0, Lfwn;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 1279
    if-nez v1, :cond_1

    .line 1280
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "android.resource://"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1281
    iget-object v3, p0, Lfwn;->e:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1283
    :cond_1
    return-object v1
.end method

.method public final a(Landroid/content/Context;ILcom/alibaba/android/dingtalkbase/notification/Sound;Z)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scene"    # I
    .param p3, "sound"    # Lcom/alibaba/android/dingtalkbase/notification/Sound;
    .param p4, "displayDefault"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 407
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 408
    :cond_0
    const/4 v1, 0x0

    .line 414
    :goto_0
    return-object v1

    .line 410
    :cond_1
    invoke-static {p2}, Lfwn;->c(I)Lcom/alibaba/android/dingtalkbase/notification/Sound;

    move-result-object v0

    .line 411
    .local v0, "defaultSound":Lcom/alibaba/android/dingtalkbase/notification/Sound;
    if-eqz p4, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/notification/Sound;->getValue()I

    move-result v1

    invoke-virtual {p3}, Lcom/alibaba/android/dingtalkbase/notification/Sound;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/alibaba/android/dingtalkbase/notification/Sound;->getNameId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lezg$l;->dt_setting_notification_default:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 414
    :cond_2
    invoke-virtual {p3}, Lcom/alibaba/android/dingtalkbase/notification/Sound;->getNameId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scene"    # I
    .param p3, "displayDefault"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 425
    if-nez p1, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-object v2

    .line 428
    :cond_1
    invoke-virtual {p0, p2}, Lfwn;->b(I)Lchj;

    move-result-object v0

    .line 429
    .local v0, "model":Lchj;
    if-eqz v0, :cond_0

    .line 4029
    iget v3, v0, Lchj;->a:I

    .line 432
    invoke-virtual {p0, p2, v3}, Lfwn;->b(II)Lcom/alibaba/android/dingtalkbase/notification/Sound;

    move-result-object v1

    .line 433
    .local v1, "s":Lcom/alibaba/android/dingtalkbase/notification/Sound;
    if-eqz v1, :cond_0

    .line 436
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v1, v2}, Lfwn;->a(Landroid/content/Context;ILcom/alibaba/android/dingtalkbase/notification/Sound;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public final a(ILchj;Lcom/alibaba/wukong/Callback;)V
    .locals 1
    .param p1, "scene"    # I
    .param p2, "notificationsSettingModel"    # Lchj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lchj;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/settings/CloudSetting;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/settings/CloudSetting;>;"
    const/4 v0, 0x0

    .line 318
    packed-switch p1, :pswitch_data_0

    .line 336
    invoke-interface {p3, v0, v0}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :goto_0
    return-void

    .line 2155
    :pswitch_0
    const-string/jumbo v0, "im_settings"

    invoke-direct {p0, v0, p2, p3}, Lfwn;->a(Ljava/lang/String;Lchj;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 2169
    :pswitch_1
    const-string/jumbo v0, "ding_settings"

    invoke-direct {p0, v0, p2, p3}, Lfwn;->a(Ljava/lang/String;Lchj;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 2199
    :pswitch_2
    const-string/jumbo v0, "im_at_me"

    invoke-direct {p0, v0, p2, p3}, Lfwn;->a(Ljava/lang/String;Lchj;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 3184
    :pswitch_3
    const-string/jumbo v0, "im_special_attentation"

    invoke-direct {p0, v0, p2, p3}, Lfwn;->a(Ljava/lang/String;Lchj;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 3214
    :pswitch_4
    const-string/jumbo v0, "im_red_envelop"

    invoke-direct {p0, v0, p2, p3}, Lfwn;->a(Ljava/lang/String;Lchj;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public final a()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 87
    const-class v1, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v2, "notification_settings"

    const-string/jumbo v3, "notification_enabled"

    invoke-interface {v1, v2, v3}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v0

    .line 88
    .local v0, "cs":Lcom/alibaba/wukong/settings/CloudSetting;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    const-string/jumbo v1, "0"

    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 91
    :goto_0
    return v1

    .line 89
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 91
    :cond_1
    invoke-direct {p0}, Lfwn;->j()Lfwn$a;

    move-result-object v1

    iget-boolean v1, v1, Lfwn$a;->a:Z

    goto :goto_0
.end method

.method public final b(I)Lchj;
    .locals 1
    .param p1, "scene"    # I

    .prologue
    .line 348
    packed-switch p1, :pswitch_data_0

    .line 360
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 350
    :pswitch_0
    invoke-virtual {p0}, Lfwn;->d()Lchj;

    move-result-object v0

    goto :goto_0

    .line 352
    :pswitch_1
    invoke-virtual {p0}, Lfwn;->e()Lchj;

    move-result-object v0

    goto :goto_0

    .line 354
    :pswitch_2
    invoke-virtual {p0}, Lfwn;->g()Lchj;

    move-result-object v0

    goto :goto_0

    .line 356
    :pswitch_3
    invoke-virtual {p0}, Lfwn;->f()Lchj;

    move-result-object v0

    goto :goto_0

    .line 358
    :pswitch_4
    invoke-virtual {p0}, Lfwn;->h()Lchj;

    move-result-object v0

    goto :goto_0

    .line 348
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public final b(II)Lcom/alibaba/android/dingtalkbase/notification/Sound;
    .locals 1
    .param p1, "scene"    # I
    .param p2, "type"    # I

    .prologue
    .line 392
    invoke-static {p2}, Lcom/alibaba/android/dingtalkbase/notification/Sound;->fromValue(I)Lcom/alibaba/android/dingtalkbase/notification/Sound;

    move-result-object v0

    .line 393
    .local v0, "result":Lcom/alibaba/android/dingtalkbase/notification/Sound;
    if-nez v0, :cond_0

    .line 394
    invoke-static {p1}, Lfwn;->c(I)Lcom/alibaba/android/dingtalkbase/notification/Sound;

    move-result-object v0

    .line 396
    :cond_0
    return-object v0
.end method

.method public final b()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 102
    const-class v1, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v3, "wk_xpn"

    const-string/jumbo v4, "show_detail"

    invoke-interface {v1, v3, v4}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v0

    .line 103
    .local v0, "cs":Lcom/alibaba/wukong/settings/CloudSetting;
    if-eqz v0, :cond_1

    .line 104
    const-string/jumbo v1, "0"

    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 106
    :goto_0
    return v1

    .line 104
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 106
    goto :goto_0
.end method

.method public final c()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 117
    const-string/jumbo v5, "im_settings"

    invoke-direct {p0, v5}, Lfwn;->a(Ljava/lang/String;)Lchj;

    move-result-object v2

    .line 118
    .local v2, "imSetting":Lchj;
    if-nez v2, :cond_0

    .line 119
    new-instance v2, Lchj;

    .end local v2    # "imSetting":Lchj;
    invoke-direct {p0}, Lfwn;->j()Lfwn$a;

    move-result-object v5

    iget-boolean v5, v5, Lfwn$a;->b:Z

    if-eqz v5, :cond_5

    sget-object v5, Lcom/alibaba/android/dingtalkbase/notification/Sound;->Sound_IM_DEFAULT:Lcom/alibaba/android/dingtalkbase/notification/Sound;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/notification/Sound;->getValue()I

    move-result v5

    :goto_0
    invoke-direct {p0}, Lfwn;->j()Lfwn$a;

    move-result-object v6

    iget-boolean v6, v6, Lfwn$a;->c:Z

    invoke-direct {v2, v5, v6}, Lchj;-><init>(IZ)V

    .line 120
    .restart local v2    # "imSetting":Lchj;
    const-string/jumbo v5, "im_settings"

    invoke-direct {p0, v5, v2, v7}, Lfwn;->a(Ljava/lang/String;Lchj;Lcom/alibaba/wukong/Callback;)V

    .line 122
    :cond_0
    const-string/jumbo v5, "ding_settings"

    invoke-direct {p0, v5}, Lfwn;->a(Ljava/lang/String;)Lchj;

    move-result-object v1

    .line 123
    .local v1, "dingSetting":Lchj;
    if-nez v1, :cond_1

    .line 124
    new-instance v1, Lchj;

    .end local v1    # "dingSetting":Lchj;
    invoke-direct {p0}, Lfwn;->j()Lfwn$a;

    move-result-object v5

    iget-boolean v5, v5, Lfwn$a;->b:Z

    if-eqz v5, :cond_6

    sget-object v5, Lcom/alibaba/android/dingtalkbase/notification/Sound;->Sound_DING_DEFAULT:Lcom/alibaba/android/dingtalkbase/notification/Sound;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/notification/Sound;->getValue()I

    move-result v5

    :goto_1
    invoke-direct {p0}, Lfwn;->j()Lfwn$a;

    move-result-object v6

    iget-boolean v6, v6, Lfwn$a;->c:Z

    invoke-direct {v1, v5, v6}, Lchj;-><init>(IZ)V

    .line 125
    .restart local v1    # "dingSetting":Lchj;
    const-string/jumbo v5, "ding_settings"

    invoke-direct {p0, v5, v1, v7}, Lfwn;->a(Ljava/lang/String;Lchj;Lcom/alibaba/wukong/Callback;)V

    .line 127
    :cond_1
    const-string/jumbo v5, "im_special_attentation"

    invoke-direct {p0, v5}, Lfwn;->a(Ljava/lang/String;)Lchj;

    move-result-object v4

    .line 128
    .local v4, "specialSetting":Lchj;
    if-nez v4, :cond_2

    .line 129
    new-instance v4, Lchj;

    .end local v4    # "specialSetting":Lchj;
    sget-object v5, Lcom/alibaba/android/dingtalkbase/notification/Sound;->Sound_SPECIAL_DEFAULT:Lcom/alibaba/android/dingtalkbase/notification/Sound;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/notification/Sound;->getValue()I

    move-result v5

    invoke-direct {v4, v5, v8}, Lchj;-><init>(IZ)V

    .line 130
    .restart local v4    # "specialSetting":Lchj;
    const-string/jumbo v5, "im_special_attentation"

    invoke-direct {p0, v5, v4, v7}, Lfwn;->a(Ljava/lang/String;Lchj;Lcom/alibaba/wukong/Callback;)V

    .line 132
    :cond_2
    const-string/jumbo v5, "im_at_me"

    invoke-direct {p0, v5}, Lfwn;->a(Ljava/lang/String;)Lchj;

    move-result-object v0

    .line 133
    .local v0, "atSetting":Lchj;
    if-nez v0, :cond_3

    .line 134
    new-instance v0, Lchj;

    .end local v0    # "atSetting":Lchj;
    sget-object v5, Lcom/alibaba/android/dingtalkbase/notification/Sound;->Sound_AT_DEFAULT:Lcom/alibaba/android/dingtalkbase/notification/Sound;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/notification/Sound;->getValue()I

    move-result v5

    invoke-direct {v0, v5, v8}, Lchj;-><init>(IZ)V

    .line 135
    .restart local v0    # "atSetting":Lchj;
    const-string/jumbo v5, "im_at_me"

    invoke-direct {p0, v5, v0, v7}, Lfwn;->a(Ljava/lang/String;Lchj;Lcom/alibaba/wukong/Callback;)V

    .line 137
    :cond_3
    const-string/jumbo v5, "im_red_envelop"

    invoke-direct {p0, v5}, Lfwn;->a(Ljava/lang/String;)Lchj;

    move-result-object v3

    .line 138
    .local v3, "redPacketSetting":Lchj;
    if-nez v3, :cond_4

    .line 139
    new-instance v3, Lchj;

    .end local v3    # "redPacketSetting":Lchj;
    sget-object v5, Lcom/alibaba/android/dingtalkbase/notification/Sound;->Sound_REDPACKET_DEFAULT:Lcom/alibaba/android/dingtalkbase/notification/Sound;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/notification/Sound;->getValue()I

    move-result v5

    invoke-direct {v3, v5, v8}, Lchj;-><init>(IZ)V

    .line 140
    .restart local v3    # "redPacketSetting":Lchj;
    const-string/jumbo v5, "im_red_envelop"

    invoke-direct {p0, v5, v3, v7}, Lfwn;->a(Ljava/lang/String;Lchj;Lcom/alibaba/wukong/Callback;)V

    .line 142
    :cond_4
    return-void

    .line 119
    .end local v0    # "atSetting":Lchj;
    .end local v1    # "dingSetting":Lchj;
    .end local v2    # "imSetting":Lchj;
    .end local v3    # "redPacketSetting":Lchj;
    .end local v4    # "specialSetting":Lchj;
    :cond_5
    sget-object v5, Lcom/alibaba/android/dingtalkbase/notification/Sound;->Sound_NONE:Lcom/alibaba/android/dingtalkbase/notification/Sound;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/notification/Sound;->getValue()I

    move-result v5

    goto/16 :goto_0

    .line 124
    .restart local v2    # "imSetting":Lchj;
    :cond_6
    sget-object v5, Lcom/alibaba/android/dingtalkbase/notification/Sound;->Sound_NONE:Lcom/alibaba/android/dingtalkbase/notification/Sound;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/notification/Sound;->getValue()I

    move-result v5

    goto :goto_1
.end method

.method public final d()Lchj;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 146
    const-string/jumbo v1, "im_settings"

    invoke-direct {p0, v1}, Lfwn;->a(Ljava/lang/String;)Lchj;

    move-result-object v0

    .line 147
    .local v0, "result":Lchj;
    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lchj;

    .end local v0    # "result":Lchj;
    invoke-direct {p0}, Lfwn;->j()Lfwn$a;

    move-result-object v1

    iget-boolean v1, v1, Lfwn$a;->b:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/alibaba/android/dingtalkbase/notification/Sound;->Sound_IM_DEFAULT:Lcom/alibaba/android/dingtalkbase/notification/Sound;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/notification/Sound;->getValue()I

    move-result v1

    :goto_0
    invoke-direct {p0}, Lfwn;->j()Lfwn$a;

    move-result-object v2

    iget-boolean v2, v2, Lfwn$a;->c:Z

    invoke-direct {v0, v1, v2}, Lchj;-><init>(IZ)V

    .line 150
    .restart local v0    # "result":Lchj;
    :cond_0
    return-object v0

    .line 148
    .end local v0    # "result":Lchj;
    :cond_1
    sget-object v1, Lcom/alibaba/android/dingtalkbase/notification/Sound;->Sound_NONE:Lcom/alibaba/android/dingtalkbase/notification/Sound;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/notification/Sound;->getValue()I

    move-result v1

    goto :goto_0
.end method

.method public final e()Lchj;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 160
    const-string/jumbo v1, "ding_settings"

    invoke-direct {p0, v1}, Lfwn;->a(Ljava/lang/String;)Lchj;

    move-result-object v0

    .line 161
    .local v0, "result":Lchj;
    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lchj;

    .end local v0    # "result":Lchj;
    invoke-direct {p0}, Lfwn;->j()Lfwn$a;

    move-result-object v1

    iget-boolean v1, v1, Lfwn$a;->b:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/alibaba/android/dingtalkbase/notification/Sound;->Sound_DING_DEFAULT:Lcom/alibaba/android/dingtalkbase/notification/Sound;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/notification/Sound;->getValue()I

    move-result v1

    :goto_0
    invoke-direct {p0}, Lfwn;->j()Lfwn$a;

    move-result-object v2

    iget-boolean v2, v2, Lfwn$a;->c:Z

    invoke-direct {v0, v1, v2}, Lchj;-><init>(IZ)V

    .line 164
    .restart local v0    # "result":Lchj;
    :cond_0
    return-object v0

    .line 162
    .end local v0    # "result":Lchj;
    :cond_1
    sget-object v1, Lcom/alibaba/android/dingtalkbase/notification/Sound;->Sound_NONE:Lcom/alibaba/android/dingtalkbase/notification/Sound;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/notification/Sound;->getValue()I

    move-result v1

    goto :goto_0
.end method

.method public final f()Lchj;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 174
    const-string/jumbo v1, "im_special_attentation"

    invoke-direct {p0, v1}, Lfwn;->a(Ljava/lang/String;)Lchj;

    move-result-object v0

    .line 175
    .local v0, "result":Lchj;
    if-nez v0, :cond_0

    .line 176
    new-instance v0, Lchj;

    .end local v0    # "result":Lchj;
    sget-object v1, Lcom/alibaba/android/dingtalkbase/notification/Sound;->Sound_SPECIAL_DEFAULT:Lcom/alibaba/android/dingtalkbase/notification/Sound;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/notification/Sound;->getValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lchj;-><init>(IZ)V

    .line 178
    :cond_0
    return-object v0
.end method

.method public final g()Lchj;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 189
    const-string/jumbo v1, "im_at_me"

    invoke-direct {p0, v1}, Lfwn;->a(Ljava/lang/String;)Lchj;

    move-result-object v0

    .line 190
    .local v0, "result":Lchj;
    if-nez v0, :cond_0

    .line 191
    new-instance v0, Lchj;

    .end local v0    # "result":Lchj;
    sget-object v1, Lcom/alibaba/android/dingtalkbase/notification/Sound;->Sound_AT_DEFAULT:Lcom/alibaba/android/dingtalkbase/notification/Sound;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/notification/Sound;->getValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lchj;-><init>(IZ)V

    .line 193
    :cond_0
    return-object v0
.end method

.method public final h()Lchj;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 204
    const-string/jumbo v1, "im_red_envelop"

    invoke-direct {p0, v1}, Lfwn;->a(Ljava/lang/String;)Lchj;

    move-result-object v0

    .line 205
    .local v0, "result":Lchj;
    if-nez v0, :cond_0

    .line 206
    new-instance v0, Lchj;

    .end local v0    # "result":Lchj;
    sget-object v1, Lcom/alibaba/android/dingtalkbase/notification/Sound;->Sound_REDPACKET_DEFAULT:Lcom/alibaba/android/dingtalkbase/notification/Sound;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/notification/Sound;->getValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lchj;-><init>(IZ)V

    .line 208
    :cond_0
    return-object v0
.end method
