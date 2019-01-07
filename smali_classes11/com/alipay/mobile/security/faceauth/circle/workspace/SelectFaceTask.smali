.class public Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;
.super Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionTask;
.source "SelectFaceTask.java"


# instance fields
.field private F:I

.field private G:Z

.field private H:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

.field private I:Z

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:I

.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/security/bio/service/BioServiceManager;Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;Landroid/os/Handler;Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;)V
    .locals 2
    .param p1, "bioServiceManager"    # Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    .param p2, "faceCircle"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;
    .param p3, "workspaceHandler"    # Landroid/os/Handler;
    .param p4, "faceRemoteConfig"    # Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionTask;-><init>(Lcom/alipay/mobile/security/bio/service/BioServiceManager;Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;Landroid/os/Handler;Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->G:Z

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->o:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getAlgorithm()Lcom/alipay/mobile/security/bio/config/bean/Algorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->getYunqiQuality()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->F:I

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->a:Landroid/os/Handler;

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->o:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->isProgressbar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->I:Z

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->o:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getBottomText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->J:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->o:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->K:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->o:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getImageIndex()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->L:I

    .line 51
    return-void
.end method


# virtual methods
.method public action(Lcom/alipay/mobile/security/bio/task/ActionFrame;)Lcom/alipay/mobile/security/bio/task/ActionType;
    .locals 12
    .param p1, "frame"    # Lcom/alipay/mobile/security/bio/task/ActionFrame;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 99
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/task/ActionFrame;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    .line 101
    .local v3, "faceFrame":Lcom/alipay/mobile/security/faceauth/api/FaceFrame;
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->a(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;)V

    .line 103
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->d(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;)V

    .line 106
    iget-boolean v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->G:Z

    if-nez v5, :cond_0

    .line 107
    invoke-virtual {v3}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->hasFace()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 108
    iput-boolean v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->G:Z

    .line 109
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->C:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    sget-object v9, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_DETECT_COND_END:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    .line 1409
    invoke-static {v3}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceFrameUtil;->getFaceParam(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;)Ljava/util/Map;

    move-result-object v10

    .line 109
    invoke-virtual {v5, v9, v10}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;Ljava/util/Map;)V

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 113
    .local v6, "startTime":J
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 114
    .local v2, "extParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "bis_action"

    const-string/jumbo v9, "6"

    invoke-interface {v2, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->C:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    sget-object v9, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_LIVE_BODY_START:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    invoke-virtual {v5, v9, v2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;Ljava/util/Map;)V

    .line 117
    const-string/jumbo v5, "vidcnt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->v:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 119
    .local v0, "endTime":J
    const-string/jumbo v5, "timecost"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sub-long v10, v0, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->C:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    sget-object v9, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_LIVE_BODY_END:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    invoke-virtual {v5, v9, v2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;Ljava/util/Map;)V

    .line 2170
    .end local v0    # "endTime":J
    .end local v2    # "extParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "startTime":J
    :cond_0
    const/4 v5, 0x0

    .line 2173
    if-eqz v3, :cond_1

    .line 2177
    invoke-virtual {v3}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getFaceQuality()F

    move-result v9

    iget v10, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->F:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1

    move v5, v8

    .line 127
    :cond_1
    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->r:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->r:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getFaceQuality()F

    move-result v5

    iget v9, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->B:I

    int-to-float v9, v9

    cmpg-float v5, v5, v9

    if-gez v5, :cond_4

    .line 128
    :cond_2
    invoke-virtual {v3}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->hasFace()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 129
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->b(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;)F

    move-result v4

    .line 130
    .local v4, "poseWeight":F
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v5, v4}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->showProcessBar(F)V

    .line 134
    .end local v4    # "poseWeight":F
    :goto_0
    iput-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->H:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    .line 141
    invoke-super {p0, p1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionTask;->action(Lcom/alipay/mobile/security/bio/task/ActionFrame;)Lcom/alipay/mobile/security/bio/task/ActionType;

    move-result-object v5

    :goto_1
    return-object v5

    .line 132
    :cond_3
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    const/4 v9, 0x0

    const/16 v10, 0x32

    invoke-interface {v5, v9, v10, v8}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->showProcessBar(FIZ)V

    goto :goto_0

    .line 136
    :cond_4
    iput-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->H:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    .line 137
    sget-object v5, Lcom/alipay/mobile/security/bio/task/ActionType;->DONE:Lcom/alipay/mobile/security/bio/task/ActionType;

    goto :goto_1
.end method

.method public done()I
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->z:J

    .line 2189
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->p:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->u:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->v:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->w:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x2

    iget v4, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->x:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;->extInfo:Ljava/lang/String;

    .line 2190
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "BisBehavTask:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->p:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;

    iget-object v1, v1, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;->extInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 2191
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->p:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;

    iput v6, v0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;->quality:I

    .line 2192
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->p:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->A:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;->name:Ljava/lang/String;

    .line 2193
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->p:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;

    const-string/jumbo v1, "0"

    iput-object v1, v0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;->idx:Ljava/lang/String;

    .line 2194
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->p:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;

    iget-wide v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->z:J

    iget-wide v4, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->y:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, v0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;->dur:I

    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTitleBar()Lcom/alipay/biometrics/ui/widget/TitleBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/biometrics/ui/widget/TitleBar;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x32

    invoke-interface {v0, v1, v2, v7}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->showProcessBar(FIZ)V

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->j:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->setRoundColor(I)V

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->k:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    invoke-virtual {v0, v6}, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->i:Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;

    sget v1, Lcom/alipay/biometrics/ui/widget/WaveView;->DEFAULT_BEHIND_WAVE_COLOR:I

    sget v2, Lcom/alipay/biometrics/ui/widget/WaveView;->DEFAULT_FRONT_WAVE_COLOR:I

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;->setWaveColor(II)V

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->i:Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;->start()V

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->disableSwitch()V

    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->H:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->c(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;)V

    .line 166
    invoke-super {p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionTask;->done()I

    move-result v0

    return v0
.end method

.method public init()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 56
    const-string/jumbo v1, "NoAction"

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->A:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTip()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->e:Lcom/alipay/mobile/security/faceauth/FaceService;

    sget-object v2, Lcom/alipay/mobile/security/faceauth/FaceDetectType;->AIMLESS:Lcom/alipay/mobile/security/faceauth/FaceDetectType;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/faceauth/FaceService;->setDetectType(Lcom/alipay/mobile/security/faceauth/FaceDetectType;)V

    .line 59
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->showProcessBar(F)V

    .line 60
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTitleBar()Lcom/alipay/biometrics/ui/widget/TitleBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/alipay/biometrics/ui/widget/TitleBar;->setSoundButton(I)V

    .line 61
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTitleBar()Lcom/alipay/biometrics/ui/widget/TitleBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/alipay/biometrics/ui/widget/TitleBar;->setVisibility(I)V

    .line 62
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->i:Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;

    iget v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->h:I

    iget v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->g:I

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;->setBorder(II)V

    .line 63
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->i:Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;->cancel()V

    .line 65
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->j:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->setRoundColor(I)V

    .line 67
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->C:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    sget-object v2, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_DETECT_COND_START:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;)V

    .line 69
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getGuassianBackgroud()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    iget-boolean v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->I:Z

    if-eqz v1, :cond_3

    .line 73
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->k:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    invoke-virtual {v1, v5}, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->setVisibility(I)V

    .line 74
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->l:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    invoke-virtual {v1, v4}, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->setVisibility(I)V

    .line 80
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->J:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->E:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->J:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->K:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->m:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->K:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_1
    iget v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->L:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 89
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Ligf$b;->face_circle_people2:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 90
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->D:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    invoke-super {p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionTask;->init()I

    move-result v1

    return v1

    .line 76
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->k:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    invoke-virtual {v1, v4}, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->setVisibility(I)V

    .line 77
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;->l:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    invoke-virtual {v1, v5}, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
