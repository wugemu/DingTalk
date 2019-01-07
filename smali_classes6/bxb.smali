.class public final Lbxb;
.super Ljava/lang/Object;
.source "VideoListeners.java"


# instance fields
.field public a:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

.field public b:Landroid/content/BroadcastReceiver;

.field public c:Landroid/content/BroadcastReceiver;

.field public d:Landroid/telephony/PhoneStateListener;

.field public e:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field public f:Lbtu;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field l:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lbxb$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lbxb$1;-><init>(Lbxb;Landroid/os/Looper;)V

    iput-object v0, p0, Lbxb;->l:Landroid/os/Handler;

    return-void
.end method

.method public static a(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 6
    .param p0, "listener"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .prologue
    .line 94
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    .line 95
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 96
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 98
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v2

    .line 101
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "abandonAudioFocus failed, error="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1013
    const-string/jumbo v4, "live"

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 107
    iget-boolean v3, p0, Lbxb;->j:Z

    if-eqz v3, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v2

    .line 110
    :cond_1
    invoke-static {}, Lbyf;->a()I

    move-result v3

    if-nez v3, :cond_0

    .line 114
    const-string/jumbo v2, "LIFECYCLE"

    .line 115
    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 116
    .local v1, "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    invoke-interface {v1}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->getForegroundTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 117
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lbtp$g;->dt_lv_viewer_no_wifi_warning:I

    .line 119
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lbtp$g;->sure:I

    new-instance v4, Lbxb$2;

    invoke-direct {v4, p0}, Lbxb$2;-><init>(Lbxb;)V

    .line 120
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lbtp$g;->cancel:I

    .line 128
    invoke-virtual {v2, v3, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 129
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 131
    :cond_2
    const-string/jumbo v2, "show live with mobile network warning dialog"

    .line 2013
    const-string/jumbo v3, "live"

    invoke-static {v3, v5, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 136
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 138
    .local v0, "context":Landroid/content/Context;
    iget-object v5, p0, Lbxb;->a:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    if-nez v5, :cond_0

    .line 139
    new-instance v5, Lbxb$3;

    invoke-direct {v5, p0}, Lbxb$3;-><init>(Lbxb;)V

    iput-object v5, p0, Lbxb;->a:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    .line 179
    const-string/jumbo v5, "LIFECYCLE"

    .line 180
    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 181
    .local v3, "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    iget-object v5, p0, Lbxb;->a:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    invoke-interface {v3, v5}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->registerAppStateListener(Lcom/alibaba/doraemon/lifecycle/APPStateListener;)V

    .line 183
    .end local v3    # "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    :cond_0
    iget-object v5, p0, Lbxb;->b:Landroid/content/BroadcastReceiver;

    if-nez v5, :cond_1

    .line 184
    new-instance v5, Lcom/alibaba/android/dingtalk/live/player/listener/VideoListeners$4;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalk/live/player/listener/VideoListeners$4;-><init>(Lbxb;)V

    iput-object v5, p0, Lbxb;->b:Landroid/content/BroadcastReceiver;

    .line 202
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 203
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    iget-object v5, p0, Lbxb;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 206
    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v5, p0, Lbxb;->c:Landroid/content/BroadcastReceiver;

    if-nez v5, :cond_2

    .line 207
    new-instance v5, Lcom/alibaba/android/dingtalk/live/player/listener/VideoListeners$5;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalk/live/player/listener/VideoListeners$5;-><init>(Lbxb;)V

    iput-object v5, p0, Lbxb;->c:Landroid/content/BroadcastReceiver;

    .line 228
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 229
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v5, "com.alibaba.dingtalk.telebase.action.CONF_INCOMING"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    const-string/jumbo v5, "com.alibaba.dingtalk.telebase.action.CONF_ENDING"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v5

    iget-object v6, p0, Lbxb;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 233
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_2
    iget-object v5, p0, Lbxb;->d:Landroid/telephony/PhoneStateListener;

    if-nez v5, :cond_3

    .line 234
    new-instance v5, Lbxb$4;

    invoke-direct {v5, p0}, Lbxb$4;-><init>(Lbxb;)V

    iput-object v5, p0, Lbxb;->d:Landroid/telephony/PhoneStateListener;

    .line 259
    :try_start_0
    const-string/jumbo v5, "phone"

    .line 260
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 261
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v4, :cond_3

    .line 262
    iget-object v5, p0, Lbxb;->d:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x20

    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .end local v4    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_3
    :goto_0
    iget-object v5, p0, Lbxb;->e:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-nez v5, :cond_4

    .line 268
    new-instance v5, Lbxb$5;

    invoke-direct {v5, p0}, Lbxb$5;-><init>(Lbxb;)V

    iput-object v5, p0, Lbxb;->e:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 293
    :cond_4
    return-void

    :catch_0
    move-exception v5

    goto :goto_0
.end method
