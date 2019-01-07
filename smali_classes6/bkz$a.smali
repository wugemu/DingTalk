.class final Lbkz$a;
.super Ljava/lang/Object;
.source "VoicePlayViewController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbkz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lbkz;


# direct methods
.method private constructor <init>(Lbkz;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lbkz$a;->a:Lbkz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbkz;B)V
    .locals 0
    .param p1, "x0"    # Lbkz;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lbkz$a;-><init>(Lbkz;)V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "i"    # I

    .prologue
    .line 171
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 127
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v7, v0, v1

    .line 128
    .local v7, "distance":F
    float-to-double v0, v7

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    const/high16 v0, 0x40a00000    # 5.0f

    cmpg-float v0, v7, v0

    if-gez v0, :cond_1

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    cmpg-float v0, v7, v0

    if-gez v0, :cond_1

    const/4 v8, 0x1

    .line 129
    .local v8, "isDistanceInRange":Z
    :goto_0
    iget-object v0, p0, Lbkz$a;->a:Lbkz;

    invoke-static {v0}, Lbkz;->a(Lbkz;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;

    move-result-object v9

    .line 130
    .local v9, "model":Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;->Speaker:Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;

    if-eq v9, v0, :cond_2

    .line 166
    :cond_0
    :goto_1
    return-void

    .line 128
    .end local v8    # "isDistanceInRange":Z
    .end local v9    # "model":Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 134
    .restart local v8    # "isDistanceInRange":Z
    .restart local v9    # "model":Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;
    :cond_2
    iget-object v0, p0, Lbkz$a;->a:Lbkz;

    invoke-static {v0}, Lbkz;->b(Lbkz;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    iget-object v0, p0, Lbkz$a;->a:Lbkz;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbkz;->a(Lbkz;Z)Z

    goto :goto_1

    .line 139
    :cond_3
    if-eqz v8, :cond_5

    .line 141
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    invoke-static {}, Lbla;->a()Lbla;

    move-result-object v0

    .line 1054
    iget-object v11, v0, Lbla;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    .line 143
    .local v11, "voicePlayView":Lcom/alibaba/android/ding/widget/VoicePlayView;
    if-eqz v11, :cond_0

    .line 1296
    iget-object v0, v11, Lcom/alibaba/android/ding/widget/VoicePlayView;->g:Lcom/alibaba/doraemon/audio/AudioMagician;

    iget-object v1, v11, Lcom/alibaba/android/ding/widget/VoicePlayView;->j:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, v11, Lcom/alibaba/android/ding/widget/VoicePlayView;->k:Lcom/alibaba/doraemon/audio/OnPlayListener;

    invoke-virtual {v11}, Lcom/alibaba/android/ding/widget/VoicePlayView;->getRequestParams()Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/audio/AudioMagician;->seekTo(Ljava/lang/String;ILcom/alibaba/doraemon/audio/OnPlayListener;Ljava/util/Map;Ljava/util/Map;)V

    .line 145
    iget-object v0, p0, Lbkz$a;->a:Lbkz;

    invoke-static {v0}, Lbkz;->c(Lbkz;)Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 146
    iget-object v0, p0, Lbkz$a;->a:Lbkz;

    invoke-static {v0}, Lbkz;->c(Lbkz;)Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    move-result-object v0

    .line 2160
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;->a(Z)V

    .line 149
    :cond_4
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    .line 150
    .local v6, "audio":Landroid/media/AudioManager;
    if-eqz v6, :cond_0

    .line 151
    const/4 v0, 0x3

    invoke-virtual {v6, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v10

    .line 152
    .local v10, "oldV":I
    mul-int/lit8 v0, v10, 0x2

    const/4 v1, 0x3

    invoke-virtual {v6, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-virtual {v6}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    const/4 v0, 0x3

    const/4 v1, 0x3

    invoke-virtual {v6, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {v6, v0, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_1

    .line 160
    .end local v6    # "audio":Landroid/media/AudioManager;
    .end local v10    # "oldV":I
    .end local v11    # "voicePlayView":Lcom/alibaba/android/ding/widget/VoicePlayView;
    :cond_5
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lbkz$a;->a:Lbkz;

    invoke-static {v0}, Lbkz;->c(Lbkz;)Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lbkz$a;->a:Lbkz;

    invoke-static {v0}, Lbkz;->c(Lbkz;)Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;->b(Z)V

    goto/16 :goto_1
.end method
