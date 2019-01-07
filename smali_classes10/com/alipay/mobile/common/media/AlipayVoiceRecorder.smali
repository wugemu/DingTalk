.class public Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;
.super Limp;
.source "AlipayVoiceRecorder.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;

.field private e:Landroid/hardware/SensorManager;

.field private f:Landroid/hardware/Sensor;

.field private g:Landroid/telephony/TelephonyManager;

.field private h:Z

.field private i:Z

.field private j:Landroid/os/Handler;

.field private k:Ljava/io/File;

.field private l:Landroid/telephony/PhoneStateListener;

.field private m:Limh;

.field private n:Limi;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Limp;-><init>()V

    .line 40
    iput-boolean v1, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->h:Z

    .line 44
    iput-boolean v1, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->i:Z

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->k:Ljava/io/File;

    .line 180
    new-instance v0, Limg;

    invoke-direct {v0, p0}, Limg;-><init>(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->l:Landroid/telephony/PhoneStateListener;

    .line 271
    new-instance v0, Limh;

    invoke-direct {v0, p0, v1}, Limh;-><init>(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;B)V

    iput-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->m:Limh;

    .line 272
    new-instance v0, Limi;

    invoke-direct {v0, p0, v1}, Limi;-><init>(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;B)V

    iput-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->n:Limi;

    .line 68
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    const-string/jumbo v1, "AlipayVoiceRecorder"

    const-string/jumbo v2, "AlipayVoiceRecorder onCreate"

    invoke-interface {v0, v1, v2}, Likq;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->c:Landroid/content/Context;

    .line 70
    invoke-static {p1}, Limj;->a(Landroid/content/Context;)Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->d:Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->c:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->e:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->e:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->f:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->c:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->g:Landroid/telephony/TelephonyManager;

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->j:Landroid/os/Handler;

    .line 73
    return-void
.end method

.method public static synthetic a(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->i:Z

    return p1
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 212
    invoke-static {}, Lika;->d()Likq;

    move-result-object v2

    const-string/jumbo v3, "AlipayVoiceRecorder"

    const-string/jumbo v4, "on sensor changed"

    invoke-interface {v2, v3, v4}, Likq;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v0

    .line 216
    float-to-double v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_0

    const/high16 v3, 0x40a00000    # 5.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->h:Z

    .line 1115
    iget v0, p0, Limp;->a:I

    .line 220
    if-ne v1, v0, :cond_1

    .line 231
    :cond_1
    return-void
.end method
