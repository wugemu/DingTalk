.class public Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;
.super Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionTask;
.source "YSDetectTask.java"


# instance fields
.field private F:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

.field private G:Z

.field private H:Z

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:I

.field private a:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/security/bio/service/BioServiceManager;Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;Landroid/os/Handler;Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;)V
    .locals 2
    .param p1, "bioServiceManager"    # Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    .param p2, "faceCircle"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;
    .param p3, "workspaceHandler"    # Landroid/os/Handler;
    .param p4, "faceRemoteConfig"    # Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionTask;-><init>(Lcom/alipay/mobile/security/bio/service/BioServiceManager;Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;Landroid/os/Handler;Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;)V

    .line 36
    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->a:Z

    .line 38
    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->G:Z

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->d:Landroid/os/Handler;

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->C:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    sget-object v1, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_DETECT_COND_START:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;)V

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->o:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->isProgressbar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->H:Z

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->o:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getBottomText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->I:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->o:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->J:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->o:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getImageIndex()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->K:I

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->G:Z

    return v0
.end method

.method static synthetic b(Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;)V
    .locals 4
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;

    .prologue
    .line 33
    .line 3232
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->G:Z

    if-eqz v0, :cond_0

    .line 3233
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTip()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3234
    :goto_0
    return-void

    .line 3237
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$2;-><init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public action(Lcom/alipay/mobile/security/bio/task/ActionFrame;)Lcom/alipay/mobile/security/bio/task/ActionType;
    .locals 10
    .param p1, "frame"    # Lcom/alipay/mobile/security/bio/task/ActionFrame;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 122
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/task/ActionFrame;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceFrame;

    .line 125
    .local v3, "faceFrame":Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceFrame;
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->a(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;)V

    .line 127
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->d(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;)V

    .line 129
    iget-boolean v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->a:Z

    if-nez v5, :cond_0

    .line 130
    invoke-virtual {v3}, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceFrame;->hasFace()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 131
    iput-boolean v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->a:Z

    .line 132
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->C:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    sget-object v7, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_DETECT_COND_END:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    .line 1409
    invoke-static {v3}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceFrameUtil;->getFaceParam(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;)Ljava/util/Map;

    move-result-object v8

    .line 132
    invoke-virtual {v5, v7, v8}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;Ljava/util/Map;)V

    .line 134
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 135
    .local v2, "extParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "bis_action"

    const-string/jumbo v7, "8"

    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->C:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    sget-object v7, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_LIVE_BODY_START:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    invoke-virtual {v5, v7, v2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;Ljava/util/Map;)V

    .line 137
    invoke-static {}, Lcom/alipay/mobile/security/faceauth/util/TimeRecord;->getInstance()Lcom/alipay/mobile/security/faceauth/util/TimeRecord;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/alipay/mobile/security/faceauth/util/TimeRecord;->setLivebodyStartTime(J)V

    .line 2203
    .end local v2    # "extParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v5, 0x0

    .line 2206
    if-eqz v3, :cond_1

    .line 2210
    invoke-virtual {v3}, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceFrame;->getFaceFrameType()Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;

    move-result-object v7

    sget-object v8, Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;->ACTION:Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;

    if-ne v7, v8, :cond_1

    .line 2211
    iput-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->t:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    move v5, v6

    .line 144
    :cond_1
    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->r:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->r:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getFaceQuality()F

    move-result v5

    iget v7, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->B:I

    int-to-float v7, v7

    cmpg-float v5, v5, v7

    if-gez v5, :cond_4

    .line 147
    :cond_2
    invoke-virtual {v3}, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceFrame;->hasFace()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 148
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->b(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;)F

    move-result v4

    .line 149
    .local v4, "poseWeight":F
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v5, v4}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->showProcessBar(F)V

    .line 153
    .end local v4    # "poseWeight":F
    :goto_0
    iput-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->F:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    .line 170
    invoke-super {p0, p1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionTask;->action(Lcom/alipay/mobile/security/bio/task/ActionFrame;)Lcom/alipay/mobile/security/bio/task/ActionType;

    move-result-object v5

    :goto_1
    return-object v5

    .line 151
    :cond_3
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    const/4 v7, 0x0

    const/16 v8, 0x32

    invoke-interface {v5, v7, v8, v6}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->showProcessBar(FIZ)V

    goto :goto_0

    .line 155
    :cond_4
    iput-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->F:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    .line 156
    iput-boolean v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->G:Z

    .line 2409
    invoke-static {v3}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceFrameUtil;->getFaceParam(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;)Ljava/util/Map;

    move-result-object v2

    .line 159
    .restart local v2    # "extParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "bis_action"

    const-string/jumbo v6, "8"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string/jumbo v5, "vidcnt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->v:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 162
    .local v0, "endTime":J
    const-string/jumbo v5, "timecost"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/security/faceauth/util/TimeRecord;->getInstance()Lcom/alipay/mobile/security/faceauth/util/TimeRecord;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/security/faceauth/util/TimeRecord;->getLivebodyStartTime()J

    move-result-wide v8

    sub-long v8, v0, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->C:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    sget-object v6, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_LIVE_BODY_END:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    invoke-virtual {v5, v6, v2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;Ljava/util/Map;)V

    .line 166
    sget-object v5, Lcom/alipay/mobile/security/bio/task/ActionType;->DONE:Lcom/alipay/mobile/security/bio/task/ActionType;

    goto :goto_1
.end method

.method public done()I
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->z:J

    .line 3222
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->p:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->u:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->v:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->w:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x2

    iget v4, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->x:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;->extInfo:Ljava/lang/String;

    .line 3223
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "BisBehavTask:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->p:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;

    iget-object v1, v1, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;->extInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 3224
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->p:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;

    iput v6, v0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;->quality:I

    .line 3225
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->p:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->A:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;->name:Ljava/lang/String;

    .line 3226
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->p:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;

    const-string/jumbo v1, "0"

    iput-object v1, v0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;->idx:Ljava/lang/String;

    .line 3227
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->p:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;

    iget-wide v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->z:J

    iget-wide v4, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->y:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, v0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;->dur:I

    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTitleBar()Lcom/alipay/biometrics/ui/widget/TitleBar;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/alipay/biometrics/ui/widget/TitleBar;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x32

    invoke-interface {v0, v1, v2, v8}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->showProcessBar(FIZ)V

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->j:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->setRoundColor(I)V

    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->k:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    invoke-virtual {v0, v6}, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTitleBar()Lcom/alipay/biometrics/ui/widget/TitleBar;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/alipay/biometrics/ui/widget/TitleBar;->setSoundButton(I)V

    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->i:Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;

    sget v1, Lcom/alipay/biometrics/ui/widget/WaveView;->DEFAULT_BEHIND_WAVE_COLOR:I

    sget v2, Lcom/alipay/biometrics/ui/widget/WaveView;->DEFAULT_FRONT_WAVE_COLOR:I

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;->setWaveColor(II)V

    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->i:Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;->start()V

    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->disableSwitch()V

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getGuassianBackgroud()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->F:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->c(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;)V

    .line 193
    invoke-super {p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionTask;->done()I

    move-result v0

    return v0
.end method

.method public init()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 59
    const-string/jumbo v1, "Blink"

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->A:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->e:Lcom/alipay/mobile/security/faceauth/FaceService;

    sget-object v2, Lcom/alipay/mobile/security/faceauth/FaceDetectType;->BLINK:Lcom/alipay/mobile/security/faceauth/FaceDetectType;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/faceauth/FaceService;->setDetectType(Lcom/alipay/mobile/security/faceauth/FaceDetectType;)V

    .line 62
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->showProcessBar(F)V

    .line 63
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTitleBar()Lcom/alipay/biometrics/ui/widget/TitleBar;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/alipay/biometrics/ui/widget/TitleBar;->setVisibility(I)V

    .line 64
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTitleBar()Lcom/alipay/biometrics/ui/widget/TitleBar;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/alipay/biometrics/ui/widget/TitleBar;->setSoundButton(I)V

    .line 65
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->i:Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;

    iget v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->h:I

    iget v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->g:I

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;->setBorder(II)V

    .line 66
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->i:Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;->cancel()V

    .line 67
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getGuassianBackgroud()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->j:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->setRoundColor(I)V

    .line 70
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTip()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->n:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$1;-><init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    iget-boolean v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->H:Z

    if-eqz v1, :cond_3

    .line 96
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->k:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    invoke-virtual {v1, v7}, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->setVisibility(I)V

    .line 97
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->l:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    invoke-virtual {v1, v6}, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->setVisibility(I)V

    .line 103
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->I:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->E:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->J:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->m:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->J:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :cond_1
    iget v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->K:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 112
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Ligf$b;->face_circle_people2:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 113
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->D:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    invoke-super {p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionTask;->init()I

    move-result v1

    return v1

    .line 99
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->k:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    invoke-virtual {v1, v6}, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->setVisibility(I)V

    .line 100
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->l:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    invoke-virtual {v1, v7}, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->G:Z

    .line 199
    invoke-super {p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionTask;->stop()V

    .line 200
    return-void
.end method
