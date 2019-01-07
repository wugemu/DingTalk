.class public Lcjq;
.super Ljava/lang/Object;
.source "FloatWindowManager.java"


# static fields
.field private static volatile c:Lcjq;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private d:Lcjs;

.field private e:Lcjs;

.field private f:Landroid/app/Activity;

.field private g:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field private h:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

.field private i:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private j:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string/jumbo v1, "pref_last_time_show_apply_system_alert_confirm"

    iput-object v1, p0, Lcjq;->a:Ljava/lang/String;

    .line 36
    const-string/jumbo v1, "com.alibaba-inc.ding.notification.enabled"

    iput-object v1, p0, Lcjq;->b:Ljava/lang/String;

    .line 49
    new-instance v1, Lcjq$1;

    invoke-direct {v1, p0}, Lcjq$1;-><init>(Lcjq;)V

    iput-object v1, p0, Lcjq;->h:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    .line 61
    new-instance v1, Lcjq$2;

    invoke-direct {v1, p0}, Lcjq$2;-><init>(Lcjq;)V

    iput-object v1, p0, Lcjq;->i:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 121
    new-instance v1, Lcjq$3;

    invoke-direct {v1, p0}, Lcjq$3;-><init>(Lcjq;)V

    iput-object v1, p0, Lcjq;->j:Ljava/lang/Runnable;

    .line 159
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcjq;->i:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 160
    const-string/jumbo v1, "LIFECYCLE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    iget-object v2, p0, Lcjq;->h:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->registerAppStateListener(Lcom/alibaba/doraemon/lifecycle/APPStateListener;)V

    .line 162
    const-string/jumbo v1, "LIFECYCLE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    invoke-interface {v1}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->getForegroundTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 163
    .local v0, "currentActivity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 164
    iput-object v0, p0, Lcjq;->f:Landroid/app/Activity;

    .line 166
    :cond_0
    return-void
.end method

.method static synthetic a(Lcjq;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcjq;

    .prologue
    .line 33
    iget-object v0, p0, Lcjq;->f:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcjq;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0
    .param p0, "x0"    # Lcjq;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 33
    iput-object p1, p0, Lcjq;->f:Landroid/app/Activity;

    return-object p1
.end method

.method public static a()Lcjq;
    .locals 2

    .prologue
    .line 169
    sget-object v0, Lcjq;->c:Lcjq;

    if-nez v0, :cond_1

    .line 170
    const-class v1, Lcjq;

    monitor-enter v1

    .line 171
    :try_start_0
    sget-object v0, Lcjq;->c:Lcjq;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lcjq;

    invoke-direct {v0}, Lcjq;-><init>()V

    sput-object v0, Lcjq;->c:Lcjq;

    .line 174
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :cond_1
    sget-object v0, Lcjq;->c:Lcjq;

    return-object v0

    .line 174
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcjq;Lcjs;)Lcjs;
    .locals 0
    .param p0, "x0"    # Lcjq;
    .param p1, "x1"    # Lcjs;

    .prologue
    .line 33
    iput-object p1, p0, Lcjq;->e:Lcjs;

    return-object p1
.end method

.method private static a(Landroid/app/Activity;)Z
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x1

    .line 109
    const/4 v2, 0x1

    .line 111
    .local v2, "status":I
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 112
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 113
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "com.alibaba-inc.ding.notification.enabled"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 118
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    if-ne v2, v3, :cond_1

    :goto_1
    return v3

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 118
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method static synthetic b(Lcjq;)Lcjs;
    .locals 1
    .param p0, "x0"    # Lcjq;

    .prologue
    .line 33
    iget-object v0, p0, Lcjq;->d:Lcjs;

    return-object v0
.end method

.method static synthetic b(Lcjq;Lcjs;)Lcjs;
    .locals 0
    .param p0, "x0"    # Lcjq;
    .param p1, "x1"    # Lcjs;

    .prologue
    .line 33
    iput-object p1, p0, Lcjq;->d:Lcjs;

    return-object p1
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 180
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatWindowUtil;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "pref_key_has_float_window_failed"

    invoke-static {v0, v1}, Lcpk;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcjq;Landroid/app/Activity;)Z
    .locals 1
    .param p0, "x0"    # Lcjq;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 33
    invoke-static {p1}, Lcjq;->a(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcjq;)Lcjs;
    .locals 1
    .param p0, "x0"    # Lcjq;

    .prologue
    .line 33
    iget-object v0, p0, Lcjq;->e:Lcjs;

    return-object v0
.end method

.method static synthetic c(Lcjq;Landroid/app/Activity;)V
    .locals 6
    .param p0, "x0"    # Lcjq;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 33
    .line 1236
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1237
    :cond_0
    :goto_0
    return-void

    .line 1240
    :cond_1
    iget-object v0, p0, Lcjq;->g:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcjq;->g:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 1241
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1245
    :cond_2
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    .line 1246
    const-string/jumbo v2, "pref_last_time_show_apply_system_alert_confirm"

    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcpk;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1247
    sub-long v2, v0, v2

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 1250
    const-string/jumbo v2, "pref_last_time_show_apply_system_alert_confirm"

    invoke-static {v2, v0, v1}, Lcpk;->b(Ljava/lang/String;J)V

    .line 1252
    iget-object v0, p0, Lcjq;->g:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    if-nez v0, :cond_3

    .line 1253
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcjq;->g:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 1254
    iget-object v0, p0, Lcjq;->g:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, ""

    .line 1255
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcig$j;->dt_system_alert_permission_none_tip:I

    .line 1256
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcig$j;->dt_system_alert_permission_apply:I

    new-instance v2, Lcjq$6;

    invoke-direct {v2, p0, p1}, Lcjq$6;-><init>(Lcjq;Landroid/app/Activity;)V

    .line 1257
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcig$j;->dt_system_alert_permission_ignore:I

    const/4 v2, 0x0

    .line 1264
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1266
    :cond_3
    iget-object v0, p0, Lcjq;->g:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method static synthetic d(Lcjq;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcjq;

    .prologue
    .line 33
    iget-object v0, p0, Lcjq;->j:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "tag"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 200
    if-nez p2, :cond_0

    .line 222
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcjq$5;

    invoke-direct {v1, p0, p1, p2}, Lcjq$5;-><init>(Lcjq;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(Lcjs;)V
    .locals 2
    .param p1, "floatWindowShowObject"    # Lcjs;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 185
    if-eqz p1, :cond_0

    .line 1057
    iget-object v0, p1, Lcjs;->e:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;

    .line 185
    if-nez v0, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    const-string/jumbo v0, "floatwindow_called_show"

    invoke-static {v0}, Lcps;->b(Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcjq$4;

    invoke-direct {v1, p0, p1}, Lcjq$4;-><init>(Lcjq;Lcjs;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 225
    iget-object v0, p0, Lcjq;->d:Lcjs;

    if-eqz v0, :cond_0

    .line 226
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcjq;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 227
    iput-object v2, p0, Lcjq;->d:Lcjs;

    .line 229
    :cond_0
    iget-object v0, p0, Lcjq;->e:Lcjs;

    if-eqz v0, :cond_1

    .line 230
    invoke-static {}, Lcjr;->a()Lcjr;

    move-result-object v0

    .line 1089
    invoke-virtual {v0, v2}, Lcjr;->a(Lcjr$a;)V

    .line 231
    iput-object v2, p0, Lcjq;->e:Lcjs;

    .line 233
    :cond_1
    return-void
.end method
