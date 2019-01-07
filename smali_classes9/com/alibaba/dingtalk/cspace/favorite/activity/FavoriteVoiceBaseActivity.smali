.class public Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "FavoriteVoiceBaseActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

.field private d:Landroid/hardware/SensorManager;

.field private e:Landroid/hardware/Sensor;

.field protected f:Landroid/view/View;

.field g:Lctj$a;

.field private h:Z

.field private i:Lgcx;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->a:Z

    .line 29
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->b:Z

    .line 35
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->h:Z

    .line 65
    new-instance v0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity$1;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->g:Lctj$a;

    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 169
    .line 2189
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->i:Lgcx;

    if-eqz v0, :cond_0

    .line 2190
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->i:Lgcx;

    .line 3037
    iget-object v1, v0, Lgcx;->b:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lgcx;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3038
    iget-object v0, v0, Lgcx;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 170
    :cond_0
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    .line 1126
    const-string/jumbo v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->d:Landroid/hardware/SensorManager;

    .line 1128
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->d:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->e:Landroid/hardware/Sensor;

    .line 62
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->g:Lctj$a;

    invoke-virtual {v0, v1}, Lctj;->a(Lctj$a;)V

    .line 63
    return-void
.end method

.method public final f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->d:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->h:Z

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->h:Z

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->d:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->e:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 107
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final g()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 114
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->d:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->h:Z

    if-nez v0, :cond_0

    .line 115
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->h:Z

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->d:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->e:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 197
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    :try_start_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 46
    .local v0, "config":Landroid/view/ViewConfiguration;
    const-class v3, Landroid/view/ViewConfiguration;

    const-string/jumbo v4, "sHasPermanentMenuKey"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 47
    .local v2, "menuKeyField":Ljava/lang/reflect/Field;
    if-eqz v2, :cond_0

    .line 48
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 49
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v0    # "config":Landroid/view/ViewConfiguration;
    .end local v2    # "menuKeyField":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 201
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 202
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->a()V

    .line 203
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->f()V

    .line 204
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->g:Lctj$a;

    invoke-virtual {v0, v1}, Lctj;->b(Lctj$a;)V

    .line 206
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;->c()V

    .line 211
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 133
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v2, v4

    .line 134
    .local v0, "distance":F
    float-to-double v6, v0

    const-wide/16 v8, 0x0

    cmpl-double v2, v6, v8

    if-ltz v2, :cond_1

    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 135
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->b:Z

    .line 136
    invoke-static {p0}, Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;

    move-result-object v1

    .line 137
    .local v1, "model":Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;
    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;->Speaker:Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;

    if-eq v1, v2, :cond_2

    .line 161
    :cond_0
    :goto_1
    return-void

    .end local v1    # "model":Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;
    :cond_1
    move v2, v4

    .line 135
    goto :goto_0

    .line 142
    .restart local v1    # "model":Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;
    :cond_2
    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->a:Z

    if-eqz v2, :cond_3

    .line 143
    iput-boolean v4, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->a:Z

    goto :goto_1

    .line 147
    :cond_3
    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->b:Z

    if-eqz v2, :cond_6

    .line 149
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1176
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->f:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 1179
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->i:Lgcx;

    if-nez v2, :cond_4

    .line 1180
    new-instance v2, Lgcx;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->f:Landroid/view/View;

    invoke-direct {v2, p0, v3}, Lgcx;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->i:Lgcx;

    .line 1182
    :cond_4
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->i:Lgcx;

    .line 2032
    iget-object v3, v2, Lgcx;->b:Landroid/widget/PopupWindow;

    sget v5, Lfzs$a;->cmail_alpha_in:I

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 2033
    iget-object v3, v2, Lgcx;->b:Landroid/widget/PopupWindow;

    iget-object v2, v2, Lgcx;->a:Landroid/view/View;

    const/16 v5, 0x50

    invoke-virtual {v3, v2, v5, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 151
    :cond_5
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    .line 2160
    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;->a(Z)V

    .line 152
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v2

    invoke-virtual {v2, v4}, Lctj;->a(I)V

    goto :goto_1

    .line 156
    :cond_6
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->a()V

    .line 158
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;->b(Z)V

    goto :goto_1
.end method
