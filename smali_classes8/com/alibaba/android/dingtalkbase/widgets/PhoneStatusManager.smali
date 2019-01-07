.class public Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;
.super Ljava/lang/Object;
.source "PhoneStatusManager.java"


# static fields
.field private static h:Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/content/BroadcastReceiver;

.field public c:Landroid/content/IntentFilter;

.field public d:Landroid/telephony/PhoneStateListener;

.field private e:Z

.field private f:Lcom/android/internal/telephony/ITelephony;

.field private g:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->e:Z

    .line 59
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->b:Landroid/content/BroadcastReceiver;

    .line 155
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->d:Landroid/telephony/PhoneStateListener;

    .line 35
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->a:Landroid/content/Context;

    .line 36
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->g:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    .line 1089
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->a:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1101
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1102
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 1103
    const-string/jumbo v3, "getITelephony"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1104
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1105
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 1107
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    .line 1089
    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->f:Lcom/android/internal/telephony/ITelephony;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1094
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1094
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const-class v1, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->h:Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->h:Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;

    .line 31
    :cond_0
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->h:Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->e:Z

    return p1
.end method


# virtual methods
.method public final a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 73
    const/4 v0, 0x1

    .line 75
    .local v0, "isIdle":Z
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->f:Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->f:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 84
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->e:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    .line 82
    :catch_1
    move-exception v1

    goto :goto_0
.end method
