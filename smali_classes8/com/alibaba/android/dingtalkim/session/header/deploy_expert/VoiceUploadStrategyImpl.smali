.class public Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceUploadStrategyImpl;
.super Ljava/lang/Object;
.source "VoiceUploadStrategyImpl.java"

# interfaces
.implements Ldzi;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lciv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceUploadStrategyImpl;->a:Landroid/content/Context;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceUploadStrategyImpl;->b:I

    .line 38
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 42
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceUploadStrategyImpl;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/alibaba/doraemon/utils/NetworkUtils;->isWifi(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v6

    .line 46
    :cond_1
    const-string/jumbo v7, "pref_key_im_last_record_upload_success_time"

    invoke-static {v7}, Lcpk;->d(Ljava/lang/String;)J

    move-result-wide v4

    .line 47
    .local v4, "lastTime":J
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    .line 48
    .local v0, "currentTime":J
    sub-long v2, v0, v4

    .line 50
    .local v2, "duration":J
    const-wide/32 v8, 0x493e0

    cmp-long v7, v2, v8

    if-ltz v7, :cond_0

    .line 54
    invoke-static {v4, v5, v0, v1}, Lcog;->a(JJ)Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceUploadStrategyImpl;->b:I

    const/4 v8, 0x3

    if-gt v7, v8, :cond_0

    .line 59
    :cond_2
    const-string/jumbo v6, "im"

    const-string/jumbo v7, "VoiceUploadStrategyImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "canUploadRecord, currentTime:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public final a(JLjava/lang/String;Landroid/app/Activity;)Z
    .locals 9
    .param p1, "orderId"    # J
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 91
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v3

    .line 95
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    invoke-static {}, Lcms;->u()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide v6, 0x9a7ec800L

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 102
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceUploadStrategyImpl$1;

    invoke-direct {v0, p0, p3}, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceUploadStrategyImpl$1;-><init>(Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceUploadStrategyImpl;Ljava/lang/String;)V

    .line 119
    .local v0, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    if-eqz p4, :cond_2

    .line 120
    const-class v4, Lcma;

    invoke-static {v0, v4, p4}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    check-cast v0, Lcma;

    .line 123
    .restart local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    :cond_2
    invoke-static {}, Ldyf;->a()Ldye;

    move-result-object v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ldye;->a(Ljava/lang/Long;Lcma;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    const/4 v3, 0x1

    goto :goto_0

    .line 128
    .end local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 129
    .local v2, "tr":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 130
    const-string/jumbo v4, "im"

    const-string/jumbo v5, "VoiceUploadStrategyImpl"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 66
    const-string/jumbo v4, "pref_key_im_last_record_upload_success_time"

    invoke-static {v4}, Lcpk;->d(Ljava/lang/String;)J

    move-result-wide v2

    .line 67
    .local v2, "lastTime":J
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    .line 69
    .local v0, "currentTime":J
    const-string/jumbo v4, "pref_key_im_last_record_upload_success_time"

    invoke-static {v4, v0, v1}, Lcpk;->b(Ljava/lang/String;J)V

    .line 71
    invoke-static {v2, v3, v0, v1}, Lcog;->a(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    iget v4, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceUploadStrategyImpl;->b:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceUploadStrategyImpl;->b:I

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    const/4 v4, 0x0

    iput v4, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceUploadStrategyImpl;->b:I

    goto :goto_0
.end method
