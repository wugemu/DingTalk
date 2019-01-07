.class public Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;
.super Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionTask;
.source "AlipayDetectTask.java"


# instance fields
.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;

.field private Q:Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;

.field private R:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

.field private S:F

.field private T:F

.field private U:F

.field private V:I

.field private W:Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask$RecordExtContext;

.field private X:Z

.field private Y:Ljava/lang/String;

.field private Z:Ljava/lang/String;

.field a:F

.field private aa:I

.field private ab:Z

.field private ac:Z

.field private ad:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/security/bio/service/BioServiceManager;Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;Landroid/os/Handler;Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;)V
    .locals 3
    .param p1, "bioServiceManager"    # Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    .param p2, "faceCircle"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;
    .param p3, "workspaceHandler"    # Landroid/os/Handler;
    .param p4, "faceRemoteConfig"    # Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionTask;-><init>(Lcom/alipay/mobile/security/bio/service/BioServiceManager;Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;Landroid/os/Handler;Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;)V

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->F:Ljava/util/List;

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->G:Ljava/util/List;

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->H:Ljava/util/List;

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->I:Ljava/util/List;

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->J:Ljava/util/List;

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->K:Ljava/util/List;

    .line 47
    iput-boolean v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->L:Z

    .line 48
    iput-boolean v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->M:Z

    .line 49
    iput-boolean v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->N:Z

    .line 50
    iput-boolean v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->O:Z

    .line 51
    new-instance v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;

    invoke-direct {v1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->P:Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;

    .line 54
    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->S:F

    .line 58
    new-instance v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask$RecordExtContext;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask$RecordExtContext;-><init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;)V

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->W:Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask$RecordExtContext;

    .line 165
    iput-boolean v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->ab:Z

    .line 166
    iput-boolean v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->ac:Z

    .line 167
    iput-boolean v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->ad:Z

    .line 168
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->a:F

    .line 68
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->o:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getAlgorithm()Lcom/alipay/mobile/security/bio/config/bean/Algorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->getMinpose()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->S:F

    .line 69
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->o:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getAlgorithm()Lcom/alipay/mobile/security/bio/config/bean/Algorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->getDiffer()F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->T:F

    .line 70
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->o:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getAlgorithm()Lcom/alipay/mobile/security/bio/config/bean/Algorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->getEyeHwratio()F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->U:F

    .line 71
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->o:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getAlgorithm()Lcom/alipay/mobile/security/bio/config/bean/Algorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->getYunqiQuality()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->V:I

    .line 72
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->o:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->isProgressbar()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->X:Z

    .line 73
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->o:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getBottomText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->Y:Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->o:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->Z:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->o:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getImageIndex()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->aa:I

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "res":Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 81
    :cond_0
    new-instance v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->o:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;-><init>(Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->Q:Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;

    .line 82
    return-void
.end method

.method private a(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;FZ)Z
    .locals 3
    .param p1, "frame"    # Lcom/alipay/mobile/security/faceauth/api/FaceFrame;
    .param p2, "differ"    # F
    .param p3, "isLeft"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/security/faceauth/api/FaceFrame;",
            "FZ)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 499
    const/4 v0, 0x0

    .line 503
    .local v0, "isProperty":Z
    if-eqz p1, :cond_0

    .line 507
    if-eqz p3, :cond_1

    .line 508
    iget v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->T:F

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getLeftEyeHwratio()F

    move-result v1

    iget v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->U:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 509
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getFaceQuality()F

    move-result v1

    iget v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->V:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 510
    const/4 v0, 0x1

    .line 522
    :cond_0
    :goto_0
    return v0

    .line 514
    :cond_1
    iget v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->T:F

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getRightEyeHwratio()F

    move-result v1

    iget v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->U:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 515
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getFaceQuality()F

    move-result v1

    iget v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->V:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 516
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->M:Z

    return v0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->ab:Z

    return v0
.end method

.method static synthetic b(Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;)V
    .locals 4
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;

    .prologue
    .line 33
    .line 4301
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->M:Z

    if-nez v0, :cond_0

    .line 4307
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$4;-><init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->ac:Z

    return v0
.end method


# virtual methods
.method public action(Lcom/alipay/mobile/security/bio/task/ActionFrame;)Lcom/alipay/mobile/security/bio/task/ActionType;
    .locals 12
    .param p1, "frame"    # Lcom/alipay/mobile/security/bio/task/ActionFrame;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 173
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/task/ActionFrame;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    .line 175
    .local v3, "faceFrame":Lcom/alipay/mobile/security/faceauth/api/FaceFrame;
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->a(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;)V

    .line 1290
    if-eqz v3, :cond_1

    .line 1291
    invoke-virtual {v3}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getEyeLeftOcclussion()F

    move-result v5

    cmpl-float v5, v5, v8

    if-lez v5, :cond_0

    .line 1292
    iget v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->w:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->w:I

    .line 1294
    :cond_0
    invoke-virtual {v3}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getEyeRightOcclussion()F

    move-result v5

    cmpl-float v5, v5, v8

    if-lez v5, :cond_1

    .line 1295
    iget v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->x:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->x:I

    .line 181
    :cond_1
    iget-boolean v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->L:Z

    if-nez v5, :cond_2

    .line 182
    invoke-virtual {v3}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->hasFace()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 183
    iput-boolean v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->L:Z

    .line 184
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->C:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    sget-object v8, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_DETECT_COND_END:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    .line 1409
    invoke-static {v3}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceFrameUtil;->getFaceParam(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;)Ljava/util/Map;

    move-result-object v9

    .line 184
    invoke-virtual {v5, v8, v9}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;Ljava/util/Map;)V

    .line 185
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->C:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    sget-object v8, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_POSE_START:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    invoke-virtual {v5, v8}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;)V

    .line 187
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 188
    .local v2, "extParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "bis_action"

    const-string/jumbo v8, "7"

    invoke-interface {v2, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->C:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    sget-object v8, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_LIVE_BODY_START:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    invoke-virtual {v5, v8, v2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;Ljava/util/Map;)V

    .line 190
    invoke-static {}, Lcom/alipay/mobile/security/faceauth/util/TimeRecord;->getInstance()Lcom/alipay/mobile/security/faceauth/util/TimeRecord;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/alipay/mobile/security/faceauth/util/TimeRecord;->setLivebodyStartTime(J)V

    .line 195
    .end local v2    # "extParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    iget-boolean v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->M:Z

    if-nez v5, :cond_3

    .line 1462
    invoke-virtual {v3}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getLeftEyeHwratio()F

    move-result v5

    const v8, 0x38d1b717    # 1.0E-4f

    cmpg-float v5, v5, v8

    if-ltz v5, :cond_f

    .line 1470
    if-eqz v3, :cond_f

    .line 1474
    invoke-virtual {v3}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->isEyeBlink()Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v6

    .line 195
    :goto_0
    if-eqz v5, :cond_3

    .line 196
    iput-boolean v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->M:Z

    .line 199
    iput-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->t:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    .line 2409
    invoke-static {v3}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceFrameUtil;->getFaceParam(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;)Ljava/util/Map;

    move-result-object v2

    .line 202
    .restart local v2    # "extParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "bis_action"

    const-string/jumbo v8, "7"

    invoke-interface {v2, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string/jumbo v5, "vidcnt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->v:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 205
    .local v0, "endTime":J
    const-string/jumbo v5, "timecost"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/security/faceauth/util/TimeRecord;->getInstance()Lcom/alipay/mobile/security/faceauth/util/TimeRecord;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alipay/mobile/security/faceauth/util/TimeRecord;->getLivebodyStartTime()J

    move-result-wide v10

    sub-long v10, v0, v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->C:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    sget-object v8, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_LIVE_BODY_END:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    invoke-virtual {v5, v8, v2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;Ljava/util/Map;)V

    .line 209
    .end local v0    # "endTime":J
    .end local v2    # "extParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v3}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->hasFace()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 211
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;)F

    move-result v4

    .line 213
    .local v4, "poseWeight":F
    iget v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->S:F

    cmpl-float v5, v4, v5

    if-lez v5, :cond_b

    .line 215
    iget-boolean v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->ad:Z

    if-nez v5, :cond_4

    .line 216
    iput v4, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->a:F

    .line 217
    iput-boolean v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->ad:Z

    .line 220
    :cond_4
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->W:Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask$RecordExtContext;

    iget-boolean v5, v5, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask$RecordExtContext;->poseTag:Z

    if-nez v5, :cond_5

    .line 221
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->W:Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask$RecordExtContext;

    iput-boolean v6, v5, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask$RecordExtContext;->poseTag:Z

    .line 3409
    invoke-static {v3}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceFrameUtil;->getFaceParam(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;)Ljava/util/Map;

    move-result-object v2

    .line 223
    .restart local v2    # "extParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "poseFirst"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->a:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string/jumbo v5, "poseOk"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->C:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    sget-object v7, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_POSE_END:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    invoke-virtual {v5, v7, v2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;Ljava/util/Map;)V

    .line 3437
    .end local v2    # "extParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    if-eqz v3, :cond_6

    .line 3439
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->s:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    if-nez v5, :cond_6

    .line 3440
    iput-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->s:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    .line 230
    :cond_6
    iget-boolean v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->ab:Z

    if-eqz v5, :cond_9

    .line 231
    sget-object v5, Lcom/alipay/mobile/security/bio/task/ActionType;->RUN:Lcom/alipay/mobile/security/bio/task/ActionType;

    .line 286
    .end local v4    # "poseWeight":F
    :goto_1
    return-object v5

    .line 1479
    :cond_7
    invoke-virtual {v3}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getLeftEyeHwratio()F

    move-result v5

    iget-object v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->F:Ljava/util/List;

    iget-object v9, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->G:Ljava/util/List;

    iget-object v10, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->H:Ljava/util/List;

    invoke-virtual {p0, v5, v8, v9, v10}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->a(FLjava/util/List;Ljava/util/List;Ljava/util/List;)F

    move-result v5

    .line 1481
    invoke-direct {p0, v3, v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->a(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;FZ)Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v6

    .line 1483
    goto/16 :goto_0

    .line 1486
    :cond_8
    invoke-virtual {v3}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getRightEyeHwratio()F

    move-result v5

    iget-object v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->I:Ljava/util/List;

    iget-object v9, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->K:Ljava/util/List;

    iget-object v10, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->J:Ljava/util/List;

    invoke-virtual {p0, v5, v8, v9, v10}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->a(FLjava/util/List;Ljava/util/List;Ljava/util/List;)F

    move-result v5

    .line 1488
    invoke-direct {p0, v3, v5, v7}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->a(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;FZ)Z

    move-result v5

    if-eqz v5, :cond_f

    move v5, v6

    .line 1489
    goto/16 :goto_0

    .line 233
    .restart local v4    # "poseWeight":F
    :cond_9
    iput-boolean v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->ab:Z

    .line 234
    iput-boolean v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->N:Z

    .line 236
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->d:Landroid/os/Handler;

    new-instance v7, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$2;

    invoke-direct {v7, p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$2;-><init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;)V

    const-wide/16 v8, 0x3e8

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 244
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v5, v4}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->showProcessBar(F)V

    .line 267
    .end local v4    # "poseWeight":F
    :goto_2
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->Q:Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;

    invoke-virtual {v5, v3}, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->checkPose(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;)Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;

    move-result-object v5

    iput-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->P:Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;

    .line 268
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->P:Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;->isQualityOk()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 269
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->d(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;)V

    .line 270
    iget-boolean v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->O:Z

    if-nez v5, :cond_a

    .line 271
    iput-boolean v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->O:Z

    .line 272
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->C:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    sget-object v6, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_POSE_CHECK_END:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;)V

    .line 276
    :cond_a
    iget-boolean v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->M:Z

    if-eqz v5, :cond_e

    iget-boolean v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->N:Z

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->r:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->r:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    .line 279
    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getFaceQuality()F

    move-result v5

    iget v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->B:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_e

    .line 281
    iput-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->R:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    .line 283
    sget-object v5, Lcom/alipay/mobile/security/bio/task/ActionType;->DONE:Lcom/alipay/mobile/security/bio/task/ActionType;

    goto/16 :goto_1

    .line 246
    .restart local v4    # "poseWeight":F
    :cond_b
    iput-boolean v7, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->ab:Z

    .line 247
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v5, v4}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->showProcessBar(F)V

    goto :goto_2

    .line 251
    .end local v4    # "poseWeight":F
    :cond_c
    iget-boolean v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->ac:Z

    if-eqz v5, :cond_d

    .line 252
    sget-object v5, Lcom/alipay/mobile/security/bio/task/ActionType;->RUN:Lcom/alipay/mobile/security/bio/task/ActionType;

    goto/16 :goto_1

    .line 254
    :cond_d
    iput-boolean v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->ac:Z

    .line 255
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->d:Landroid/os/Handler;

    new-instance v7, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$3;

    invoke-direct {v7, p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$3;-><init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 262
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    const/4 v7, 0x0

    const/16 v8, 0x32

    invoke-interface {v5, v7, v8, v6}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->showProcessBar(FIZ)V

    goto :goto_2

    .line 286
    :cond_e
    invoke-super {p0, p1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionTask;->action(Lcom/alipay/mobile/security/bio/task/ActionFrame;)Lcom/alipay/mobile/security/bio/task/ActionType;

    move-result-object v5

    goto/16 :goto_1

    :cond_f
    move v5, v7

    goto/16 :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 527
    invoke-super {p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionTask;->destroy()V

    .line 528
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->i:Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->i:Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;->cancel()V

    .line 530
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->i:Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;

    .line 532
    :cond_0
    return-void
.end method

.method public done()I
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v1, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 404
    iput-boolean v7, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->M:Z

    .line 406
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTitleBar()Lcom/alipay/biometrics/ui/widget/TitleBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/biometrics/ui/widget/TitleBar;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTip()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTipContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->z:J

    .line 3449
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->p:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->u:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->v:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->w:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x2

    iget v4, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->x:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;->extInfo:Ljava/lang/String;

    .line 3450
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "BisBehavTask:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->p:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;

    iget-object v1, v1, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;->extInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 3451
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->p:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;

    iput v6, v0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;->quality:I

    .line 3452
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->p:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->A:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;->name:Ljava/lang/String;

    .line 3453
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->p:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;

    const-string/jumbo v1, "0"

    iput-object v1, v0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;->idx:Ljava/lang/String;

    .line 3454
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->p:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;

    iget-wide v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->z:J

    iget-wide v4, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->y:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, v0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;->dur:I

    .line 415
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2, v7}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->showProcessBar(FIZ)V

    .line 418
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->j:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->setRoundColor(I)V

    .line 419
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->k:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    invoke-virtual {v0, v6}, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->setVisibility(I)V

    .line 421
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->i:Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;

    sget v1, Lcom/alipay/biometrics/ui/widget/WaveView;->DEFAULT_BEHIND_WAVE_COLOR:I

    sget v2, Lcom/alipay/biometrics/ui/widget/WaveView;->DEFAULT_FRONT_WAVE_COLOR:I

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;->setWaveColor(II)V

    .line 424
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->i:Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;->start()V

    .line 426
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->disableSwitch()V

    .line 428
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->R:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->c(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;)V

    .line 432
    invoke-super {p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionTask;->done()I

    move-result v0

    return v0
.end method

.method public init()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 87
    const-string/jumbo v2, "SelfBlink"

    iput-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->A:Ljava/lang/String;

    .line 88
    iput-boolean v7, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->M:Z

    .line 89
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->e:Lcom/alipay/mobile/security/faceauth/FaceService;

    if-eqz v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->e:Lcom/alipay/mobile/security/faceauth/FaceService;

    sget-object v3, Lcom/alipay/mobile/security/faceauth/FaceDetectType;->AIMLESS:Lcom/alipay/mobile/security/faceauth/FaceDetectType;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/security/faceauth/FaceService;->setDetectType(Lcom/alipay/mobile/security/faceauth/FaceDetectType;)V

    .line 92
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->showProcessBar(F)V

    .line 93
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTitleBar()Lcom/alipay/biometrics/ui/widget/TitleBar;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/alipay/biometrics/ui/widget/TitleBar;->setSoundButton(I)V

    .line 94
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTitleBar()Lcom/alipay/biometrics/ui/widget/TitleBar;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/alipay/biometrics/ui/widget/TitleBar;->setVisibility(I)V

    .line 95
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->i:Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;

    iget v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->h:I

    iget v4, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->g:I

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;->setBorder(II)V

    .line 96
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->i:Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;->cancel()V

    .line 98
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->j:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->setRoundColor(I)V

    .line 99
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTip()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTipContainer()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 101
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->n:Landroid/os/Handler;

    new-instance v3, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$1;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$1;-><init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getGuassianBackgroud()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->C:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    if-eqz v2, :cond_1

    .line 130
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->C:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    sget-object v3, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_DETECT_COND_START:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;)V

    .line 133
    :cond_1
    iget-boolean v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->X:Z

    if-eqz v2, :cond_4

    .line 134
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->k:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    invoke-virtual {v2, v7}, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->setVisibility(I)V

    .line 135
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->l:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    invoke-virtual {v2, v6}, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->setVisibility(I)V

    .line 142
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->E:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->Y:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->Z:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 146
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->m:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->Z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :cond_2
    iget v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->aa:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 151
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Ligf$b;->face_circle_people2:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 152
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->D:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 161
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_3
    :goto_1
    invoke-super {p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionTask;->init()I

    move-result v2

    return v2

    .line 137
    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->k:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    invoke-virtual {v2, v6}, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->setVisibility(I)V

    .line 138
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->l:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    invoke-virtual {v2, v7}, Lcom/alipay/biometrics/ui/widget/RoundProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 153
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 155
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public showFaceStatus()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 344
    const/4 v0, 0x1

    .line 347
    .local v0, "isShowTip":Z
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->P:Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;->isHasFace()Z

    move-result v2

    if-nez v2, :cond_0

    .line 349
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->Q:Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->getTopText_noface()Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, "prompt":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTip()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    .end local v1    # "prompt":Ljava/lang/String;
    :goto_0
    return v0

    .line 353
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->P:Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;->isPoseOk()Z

    move-result v2

    if-nez v2, :cond_1

    .line 354
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->P:Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseStatus;->getPoseText()Ljava/lang/String;

    move-result-object v1

    .line 355
    .restart local v1    # "prompt":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTip()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 358
    .end local v1    # "prompt":Ljava/lang/String;
    :cond_1
    iget-boolean v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->N:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->r:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->r:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getFaceQuality()F

    move-result v2

    iget v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->B:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 359
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->Q:Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->getTopText_quality()Ljava/lang/String;

    move-result-object v1

    .line 360
    .restart local v1    # "prompt":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTip()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 364
    .end local v1    # "prompt":Ljava/lang/String;
    :cond_3
    iget-boolean v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->M:Z

    if-nez v2, :cond_4

    .line 365
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->Q:Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/PoseUtil;->getTopText_blink()Ljava/lang/String;

    move-result-object v1

    .line 366
    .restart local v1    # "prompt":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTip()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 370
    .end local v1    # "prompt":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 378
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTitleBar()Lcom/alipay/biometrics/ui/widget/TitleBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTitleBar()Lcom/alipay/biometrics/ui/widget/TitleBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/biometrics/ui/widget/TitleBar;->setVisibility(I)V

    .line 382
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->M:Z

    .line 383
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTip()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTip()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTipContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 388
    :cond_1
    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->c:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    .line 389
    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    .line 390
    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->n:Landroid/os/Handler;

    .line 391
    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->d:Landroid/os/Handler;

    .line 392
    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->e:Lcom/alipay/mobile/security/faceauth/FaceService;

    .line 394
    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->j:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    .line 395
    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->k:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    .line 396
    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->m:Landroid/widget/TextView;

    .line 397
    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->f:Landroid/content/Context;

    .line 398
    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->o:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 399
    return-void
.end method
