.class public Lbkz;
.super Lcom/alibaba/android/ding/widget/VoicePlayView$a;
.source "VoicePlayViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbkz$a;
    }
.end annotation


# static fields
.field private static volatile a:Lbkz;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

.field private d:Landroid/hardware/SensorManager;

.field private e:Landroid/hardware/SensorEventListener;

.field private f:Landroid/hardware/Sensor;

.field private g:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/VoicePlayView$a;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbkz;->g:Z

    .line 37
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lbkz;->b:Landroid/content/Context;

    .line 38
    return-void
.end method

.method static synthetic a(Lbkz;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lbkz;

    .prologue
    .line 23
    iget-object v0, p0, Lbkz;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lbkz;Z)Z
    .locals 1
    .param p0, "x0"    # Lbkz;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbkz;->g:Z

    return v0
.end method

.method public static b()Lbkz;
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lbkz;->a:Lbkz;

    if-nez v0, :cond_1

    .line 42
    const-class v1, Lbkz;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lbkz;->a:Lbkz;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lbkz;

    invoke-direct {v0}, Lbkz;-><init>()V

    sput-object v0, Lbkz;->a:Lbkz;

    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    sget-object v0, Lbkz;->a:Lbkz;

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lbkz;)Z
    .locals 1
    .param p0, "x0"    # Lbkz;

    .prologue
    .line 23
    iget-boolean v0, p0, Lbkz;->g:Z

    return v0
.end method

.method static synthetic c(Lbkz;)Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;
    .locals 1
    .param p0, "x0"    # Lbkz;

    .prologue
    .line 23
    iget-object v0, p0, Lbkz;->c:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    return-object v0
.end method

.method private c()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 112
    :try_start_0
    iget-object v1, p0, Lbkz;->d:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lbkz;->e:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 113
    iget-object v1, p0, Lbkz;->c:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lbkz;->c:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;->b(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2092
    :cond_0
    :goto_0
    iput-object v4, p0, Lbkz;->d:Landroid/hardware/SensorManager;

    .line 2093
    iput-object v4, p0, Lbkz;->e:Landroid/hardware/SensorEventListener;

    .line 2094
    iput-object v4, p0, Lbkz;->c:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    .line 2095
    iput-object v4, p0, Lbkz;->f:Landroid/hardware/Sensor;

    .line 121
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[VoicePlayViewController]unregister sensor listener failed"

    aput-object v3, v1, v2

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 76
    .line 2052
    iget-object v0, p0, Lbkz;->c:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    if-nez v0, :cond_0

    .line 2053
    iget-object v0, p0, Lbkz;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    move-result-object v0

    iput-object v0, p0, Lbkz;->c:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    .line 2056
    :cond_0
    iget-object v0, p0, Lbkz;->d:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    .line 2057
    iget-object v0, p0, Lbkz;->b:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lbkz;->d:Landroid/hardware/SensorManager;

    .line 2060
    :cond_1
    iget-object v0, p0, Lbkz;->e:Landroid/hardware/SensorEventListener;

    if-nez v0, :cond_2

    .line 2061
    new-instance v0, Lbkz$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbkz$a;-><init>(Lbkz;B)V

    iput-object v0, p0, Lbkz;->e:Landroid/hardware/SensorEventListener;

    .line 2064
    :cond_2
    iget-object v0, p0, Lbkz;->f:Landroid/hardware/Sensor;

    if-nez v0, :cond_3

    .line 2065
    iget-object v0, p0, Lbkz;->d:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lbkz;->f:Landroid/hardware/Sensor;

    .line 1102
    :cond_3
    :try_start_0
    iget-object v0, p0, Lbkz;->d:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lbkz;->e:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbkz;->g:Z

    .line 1104
    iget-object v0, p0, Lbkz;->d:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lbkz;->e:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lbkz;->f:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1107
    :goto_0
    return-void

    .line 1105
    :catch_0
    move-exception v0

    .line 1106
    const-string/jumbo v1, "[VoicePlayViewController]register sensor listener failed"

    invoke-static {v1, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/alibaba/android/ding/widget/VoicePlayView$a;->a(Ljava/lang/String;)V

    .line 82
    invoke-direct {p0}, Lbkz;->c()V

    .line 83
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/alibaba/android/ding/widget/VoicePlayView$a;->b(Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Lbkz;->c()V

    .line 89
    return-void
.end method
