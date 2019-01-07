.class public final Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;
.super Ljava/lang/Object;
.source "VoiceRecordManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$a;,
        Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;
    }
.end annotation


# instance fields
.field public a:Landroid/app/Activity;

.field final b:Ljava/lang/String;

.field public c:J

.field public d:Ldzh;

.field public e:Ldzg;

.field f:Ldzi;

.field public g:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$a;

.field public h:Landroid/content/BroadcastReceiver;

.field public i:Landroid/content/BroadcastReceiver;

.field public j:Lcom/alibaba/doraemon/statistics/Statistics;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {p1}, Lciv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->a:Landroid/app/Activity;

    .line 76
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "deploy_records"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 78
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 76
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->b:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->b:Ljava/lang/String;

    invoke-static {v0}, Lcop;->b(Ljava/lang/String;)Z

    .line 80
    new-instance v0, Ldzk;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->b:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ldzk;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->d:Ldzh;

    .line 81
    new-instance v0, Ldzj;

    invoke-direct {v0}, Ldzj;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->e:Ldzg;

    .line 82
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceUploadStrategyImpl;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceUploadStrategyImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->f:Ldzi;

    .line 83
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->j:Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1185
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->h:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1189
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$2;-><init>(Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->h:Landroid/content/BroadcastReceiver;

    .line 1210
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1211
    const-string/jumbo v1, "com.alibaba.android.rimet.background"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1212
    const-string/jumbo v1, "com.alibaba.android.rimet.foreground"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1213
    const-string/jumbo v1, "com.alibaba.android.rimet.home.resumed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1215
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 85
    :cond_0
    return-void
.end method

.method static a()Lcom/google/gson/Gson;
    .locals 1

    .prologue
    .line 397
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(JZILdzh;)V
    .locals 9
    .param p1, "orderId"    # J
    .param p3, "force"    # Z
    .param p4, "maxTryTimes"    # I
    .param p5, "voiceRecord"    # Ldzh;

    .prologue
    const/4 v6, 0x1

    .line 139
    const-string/jumbo v0, "im"

    const-string/jumbo v2, "VoiceRecordManager"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "uploadRecord, orderId:"

    aput-object v5, v3, v4

    .line 140
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string/jumbo v5, ", force:"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 141
    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, ", maxTryTimes:"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 142
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string/jumbo v5, ", canUpload:"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    .line 143
    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 139
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    if-lez p4, :cond_0

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/NetworkUtils;->isWifi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    new-instance v1, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$1;

    move-object v2, p0

    move v3, p4

    move-wide v4, p1

    move v6, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$1;-><init>(Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;IJZLdzh;)V

    .line 170
    .local v1, "listener":Lcma;
    const-class v0, Lcma;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->a:Landroid/app/Activity;

    invoke-static {v1, v0, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "listener":Lcma;
    check-cast v1, Lcma;

    .line 171
    .restart local v1    # "listener":Lcma;
    invoke-interface {p5, p1, p2, v1}, Ldzh;->a(JLcma;)Z

    goto :goto_0
.end method

.method b()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 401
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$5;-><init>(Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;)V

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 413
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->i:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 415
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->i:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 419
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "VoiceRecordManager"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
