.class public Lfnz;
.super Ljava/lang/Object;
.source "ScreenShotFeedBack.java"


# static fields
.field private static volatile b:Lfnz;


# instance fields
.field public a:Z

.field private c:Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfnz;->c:Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;

    .line 45
    iget-object v0, p0, Lfnz;->c:Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;

    new-instance v1, Lfnz$1;

    invoke-direct {v1, p0}, Lfnz$1;-><init>(Lfnz;)V

    .line 1070
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;->a:Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector$a;

    .line 91
    return-void
.end method

.method public static a()Lfnz;
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lfnz;->b:Lfnz;

    if-nez v0, :cond_1

    .line 33
    const-class v1, Lfnz;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lfnz;->b:Lfnz;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lfnz;

    invoke-direct {v0}, Lfnz;-><init>()V

    sput-object v0, Lfnz;->b:Lfnz;

    .line 37
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_1
    sget-object v0, Lfnz;->b:Lfnz;

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Z)V
    .locals 5
    .param p0, "enbale"    # Z

    .prologue
    .line 126
    if-eqz p0, :cond_0

    const-string/jumbo v0, "0"

    .line 127
    .local v0, "screenShotFeedbackSetting":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    const-string/jumbo v2, "user_settings"

    const-string/jumbo v3, "screen_shot_feedback"

    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcmt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;)V

    .line 128
    return-void

    .line 126
    .end local v0    # "screenShotFeedbackSetting":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "1"

    goto :goto_0
.end method

.method public static c()Z
    .locals 4

    .prologue
    .line 118
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    const-string/jumbo v2, "user_settings"

    const-string/jumbo v3, "screen_shot_feedback"

    invoke-virtual {v1, v2, v3}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "screenShotFeedbackSettingString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 94
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_screen_shot_feed_back"

    .line 1083
    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 94
    if-nez v0, :cond_1

    .line 2143
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lfnz;->c:Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lfnz;->c:Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;

    .line 2077
    new-instance v1, Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector$1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector$1;-><init>(Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;->c:Landroid/database/ContentObserver;

    .line 2137
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;->b:Landroid/content/ContentResolver;

    .line 2138
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;->b:Landroid/content/ContentResolver;

    if-eqz v1, :cond_0

    .line 2140
    :try_start_0
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;->b:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;->c:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2141
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;->b:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/screenshot/ScreenShotDetector;->c:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
