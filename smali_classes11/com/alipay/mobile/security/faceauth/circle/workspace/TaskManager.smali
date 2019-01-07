.class public Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;
.super Ljava/lang/Object;
.source "TaskManager.java"


# instance fields
.field private a:Lcom/alipay/mobile/security/bio/service/BioTaskService;

.field private b:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

.field private c:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

.field private d:Landroid/os/Handler;

.field private e:Landroid/content/Context;

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

.field private j:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

.field private k:Lcom/alipay/mobile/security/faceauth/circle/workspace/UploadChannel;

.field private l:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

.field private m:Z

.field private n:Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;

.field private o:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

.field private p:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/security/bio/service/BioServiceManager;Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;Landroid/os/Handler;Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;)V
    .locals 2
    .param p1, "bioServiceManager"    # Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    .param p2, "faceCircle"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;
    .param p3, "workspaceHandler"    # Landroid/os/Handler;
    .param p4, "faceCircleCallBack"    # Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->f:I

    .line 62
    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->g:Z

    .line 550
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->p:Ljava/lang/Object;

    .line 84
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->b:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    .line 85
    iput-object p2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->c:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->b:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    const-class v1, Lcom/alipay/mobile/security/bio/service/BioTaskService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/service/BioTaskService;

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->a:Lcom/alipay/mobile/security/bio/service/BioTaskService;

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->b:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    const-class v1, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->o:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    .line 90
    iput-object p3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->d:Landroid/os/Handler;

    .line 91
    invoke-interface {p4}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->getRemoteConfig()Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->i:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 92
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->e:Landroid/content/Context;

    .line 93
    invoke-interface {p4}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->getAppDescription()Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->j:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    .line 94
    iput-object p4, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->l:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    .line 95
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;

    invoke-direct {v0, p1, p4}, Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;-><init>(Lcom/alipay/mobile/security/bio/service/BioServiceManager;Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->n:Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->i:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->a(Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;)Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->resetTask(Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;)V

    .line 99
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/UploadChannelByJson;

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->b:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/UploadChannelByJson;-><init>(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->k:Lcom/alipay/mobile/security/faceauth/circle/workspace/UploadChannel;

    .line 112
    return-void
.end method

.method private a(Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;Lcom/alipay/mobile/security/faceauth/InvokeType;)Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;
    .locals 12
    .param p1, "userinfo"    # Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;
    .param p2, "invtp"    # Lcom/alipay/mobile/security/faceauth/InvokeType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v11, 0x3e0

    .line 353
    new-instance v3, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;

    invoke-direct {v3}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;-><init>()V

    .line 354
    .local v3, "bisBehavLog":Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;
    new-instance v5, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientInfo;

    invoke-direct {v5}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientInfo;-><init>()V

    .line 355
    .local v5, "bisClientInfo":Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientInfo;
    iget-object v9, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->e:Landroid/content/Context;

    invoke-static {v9}, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor;->getFrameworkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientInfo;->setClientVer(Ljava/lang/String;)V

    .line 356
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientInfo;->setModel(Ljava/lang/String;)V

    .line 357
    const-string/jumbo v9, "android"

    invoke-virtual {v5, v9}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientInfo;->setOs(Ljava/lang/String;)V

    .line 358
    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientInfo;->setOsVer(Ljava/lang/String;)V

    .line 361
    new-instance v4, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;

    invoke-direct {v4}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;-><init>()V

    .line 363
    .local v4, "bisBehavToken":Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;
    iget-object v9, p1, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->apdid:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->setApdid(Ljava/lang/String;)V

    .line 364
    iget-object v9, p1, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->appid:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->setAppid(Ljava/lang/String;)V

    .line 366
    iget-object v9, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->b:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    const-class v10, Lcom/alipay/mobile/security/bio/service/local/apsecurity/ApSecurityService;

    invoke-virtual {v9, v10}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/service/local/apsecurity/ApSecurityService;

    .line 367
    .local v0, "apSecurityService":Lcom/alipay/mobile/security/bio/service/local/apsecurity/ApSecurityService;
    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/service/local/apsecurity/ApSecurityService;->getApDidToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->setApdidToken(Ljava/lang/String;)V

    .line 371
    :cond_0
    iget-object v9, p1, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->behid:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->setBehid(Ljava/lang/String;)V

    .line 372
    iget-object v9, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->j:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    if-eqz v9, :cond_2

    .line 373
    iget-object v9, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->j:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v9}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBistoken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->setToken(Ljava/lang/String;)V

    .line 374
    iget-object v9, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->j:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v9}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBioAction()I

    move-result v9

    const/16 v10, 0x3df

    if-eq v9, v10, :cond_1

    iget-object v9, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->j:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v9}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBioAction()I

    move-result v9

    if-ne v9, v11, :cond_4

    .line 375
    :cond_1
    const/16 v9, 0x12e

    invoke-virtual {v4, v9}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->setSampleMode(I)V

    .line 381
    :goto_0
    iget-object v9, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->j:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v9}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBioType()I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->setType(I)V

    .line 382
    iget-object v9, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->j:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v9}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBistoken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->setBizid(Ljava/lang/String;)V

    .line 384
    :cond_2
    iget-object v9, p1, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->userid:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->setUid(Ljava/lang/String;)V

    .line 385
    iget-object v9, p1, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->vtoken:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->setVtoken(Ljava/lang/String;)V

    .line 386
    iget-object v9, p1, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->verifyid:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->setVerifyid(Ljava/lang/String;)V

    .line 388
    new-instance v2, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;

    invoke-direct {v2}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;-><init>()V

    .line 389
    .local v2, "bisBehavCommon":Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;
    invoke-virtual {p2}, Lcom/alipay/mobile/security/faceauth/InvokeType;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;->setInvtp(Ljava/lang/String;)V

    .line 390
    const-string/jumbo v9, ""

    invoke-virtual {v2, v9}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;->setTm(Ljava/lang/String;)V

    .line 391
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->f:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;->setRetry(Ljava/lang/String;)V

    .line 393
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v1, "behaviorTasks":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;>;"
    iget-object v9, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->a:Lcom/alipay/mobile/security/bio/service/BioTaskService;

    if-eqz v9, :cond_6

    .line 396
    iget-object v9, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->a:Lcom/alipay/mobile/security/bio/service/BioTaskService;

    invoke-virtual {v9}, Lcom/alipay/mobile/security/bio/service/BioTaskService;->getTasks()Ljava/util/Vector;

    move-result-object v8

    .line 397
    .local v8, "tasks":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/alipay/mobile/security/bio/task/SubTask;>;"
    invoke-virtual {v8}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/security/bio/task/SubTask;

    .local v6, "item":Lcom/alipay/mobile/security/bio/task/SubTask;
    move-object v7, v6

    .line 398
    check-cast v7, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;

    .line 400
    .local v7, "task":Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->isHasBeHaviorInfo()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 401
    invoke-virtual {v7}, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->getBisBehavTask()Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 376
    .end local v1    # "behaviorTasks":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;>;"
    .end local v2    # "bisBehavCommon":Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;
    .end local v6    # "item":Lcom/alipay/mobile/security/bio/task/SubTask;
    .end local v7    # "task":Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;
    .end local v8    # "tasks":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/alipay/mobile/security/bio/task/SubTask;>;"
    :cond_4
    iget-object v9, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->j:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v9}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBioAction()I

    move-result v9

    if-ne v9, v11, :cond_5

    .line 377
    const/16 v9, 0x12f

    invoke-virtual {v4, v9}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->setSampleMode(I)V

    goto/16 :goto_0

    .line 379
    :cond_5
    iget-object v9, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->j:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v9}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBioAction()I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->setSampleMode(I)V

    goto/16 :goto_0

    .line 407
    .restart local v1    # "behaviorTasks":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;>;"
    .restart local v2    # "bisBehavCommon":Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;
    :cond_6
    invoke-virtual {v3, v2}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;->setBehavCommon(Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;)V

    .line 408
    invoke-virtual {v3, v1}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;->setBehavTask(Ljava/util/List;)V

    .line 409
    invoke-virtual {v3, v4}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;->setBehavToken(Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;)V

    .line 410
    invoke-virtual {v3, v5}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;->setClientInfo(Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientInfo;)V

    .line 412
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "bisBehavLog:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 414
    return-object v3
.end method

.method private static a(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;ZIII)Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;
    .locals 11
    .param p0, "faceFrame"    # Lcom/alipay/mobile/security/faceauth/api/FaceFrame;
    .param p1, "isSmall"    # Z
    .param p2, "pressRate"    # I
    .param p3, "width"    # I
    .param p4, "code"    # I

    .prologue
    .line 478
    const/4 v9, 0x0

    .line 481
    .local v9, "faceImage":Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;
    if-eqz p0, :cond_0

    .line 484
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 488
    .local v1, "rect":Landroid/graphics/Rect;
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v7, p4

    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getImageData(Landroid/graphics/Rect;ZIIZZI)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 495
    .local v10, "qualityImgCode":[B
    :goto_0
    if-eqz v10, :cond_0

    .line 499
    const/16 v0, 0x8

    invoke-static {v10, v0}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v8

    .line 500
    .local v8, "encodeQualityImage":Ljava/lang/String;
    new-instance v9, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;

    .end local v9    # "faceImage":Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;
    invoke-direct {v9}, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;-><init>()V

    .line 501
    .restart local v9    # "faceImage":Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;
    iput-object v8, v9, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;->content:Ljava/lang/String;

    .line 502
    const/4 v0, 0x0

    iput v0, v9, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;->taskidx:I

    .line 503
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getFaceQuality()F

    move-result v0

    float-to-int v0, v0

    iput v0, v9, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;->quality:I

    .line 504
    iget v0, v1, Landroid/graphics/Rect;->left:I

    iput v0, v9, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;->rectx:I

    .line 505
    iget v0, v1, Landroid/graphics/Rect;->top:I

    iput v0, v9, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;->recty:I

    .line 506
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, v9, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;->height:I

    .line 507
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, v9, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;->width:I

    .line 511
    .end local v1    # "rect":Landroid/graphics/Rect;
    .end local v8    # "encodeQualityImage":Ljava/lang/String;
    .end local v10    # "qualityImgCode":[B
    :cond_0
    return-object v9

    .line 492
    .restart local v1    # "rect":Landroid/graphics/Rect;
    :catch_0
    move-exception v0

    const/4 v10, 0x0

    .restart local v10    # "qualityImgCode":[B
    goto :goto_0
.end method

.method private a(Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;)Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;
    .locals 4
    .param p1, "config"    # Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 147
    sget-object v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;->SELFFACE:Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;

    .line 148
    .local v1, "actionMode":Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;
    iget v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->f:I

    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getActionMode()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 149
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getActionMode()[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->f:I

    aget-object v0, v2, v3

    .line 154
    .local v0, "actionCode":Ljava/lang/String;
    const-string/jumbo v2, "6"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    sget-object v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;->ONLYFACE:Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;

    .line 163
    .end local v0    # "actionCode":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 156
    .restart local v0    # "actionCode":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "7"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 157
    sget-object v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;->SELFFACE:Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;

    goto :goto_0

    .line 158
    :cond_2
    const-string/jumbo v2, "8"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    sget-object v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;->FPPFACE:Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;)V
    .locals 7
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;

    .prologue
    .line 52
    .line 1599
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->k:Lcom/alipay/mobile/security/faceauth/circle/workspace/UploadChannel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->n:Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->n:Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;->isNeedUpload()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1616
    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->p:Ljava/lang/Object;

    monitor-enter v6

    .line 1617
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->i:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->b(Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;)Ljava/lang/String;

    move-result-object v4

    .line 1618
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->l:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    if-eqz v0, :cond_0

    .line 1619
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->l:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->getUserVerifyInfo()Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;

    move-result-object v0

    .line 1620
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->getMineShoot(Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;)Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceUploadContent;

    move-result-object v1

    .line 1621
    sget-object v2, Lcom/alipay/mobile/security/faceauth/InvokeType;->MONITOR:Lcom/alipay/mobile/security/faceauth/InvokeType;

    invoke-direct {p0, v0, v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->a(Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;Lcom/alipay/mobile/security/faceauth/InvokeType;)Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;

    move-result-object v2

    .line 1622
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->j:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBistoken()Ljava/lang/String;

    move-result-object v3

    .line 1623
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->k:Lcom/alipay/mobile/security/faceauth/circle/workspace/UploadChannel;

    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->i:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 1624
    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getEnv()I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    .line 1623
    :goto_0
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/UploadChannel;->doUploadNineShoot(Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceUploadContent;Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1626
    :cond_0
    monitor-exit v6

    :cond_1
    return-void

    .line 1624
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 1626
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static b(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;ZIII)Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;
    .locals 11
    .param p0, "faceFrame"    # Lcom/alipay/mobile/security/faceauth/api/FaceFrame;
    .param p1, "isSmall"    # Z
    .param p2, "pressRate"    # I
    .param p3, "width"    # I
    .param p4, "code"    # I

    .prologue
    .line 515
    const/4 v9, 0x0

    .line 518
    .local v9, "faceImage":Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;
    if-eqz p0, :cond_0

    .line 521
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 524
    .local v1, "rect":Landroid/graphics/Rect;
    const/4 v2, 0x1

    const/16 v3, 0x46

    const/16 v4, 0xc8

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move v7, p4

    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getImageData(Landroid/graphics/Rect;ZIIZZI)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 531
    .local v10, "qualityImgCode":[B
    :goto_0
    if-eqz v10, :cond_0

    .line 535
    const/16 v0, 0x8

    invoke-static {v10, v0}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v8

    .line 536
    .local v8, "encodeQualityImage":Ljava/lang/String;
    new-instance v9, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;

    .end local v9    # "faceImage":Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;
    invoke-direct {v9}, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;-><init>()V

    .line 537
    .restart local v9    # "faceImage":Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;
    iput-object v8, v9, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;->content:Ljava/lang/String;

    .line 538
    const/4 v0, -0x1

    iput v0, v9, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;->taskidx:I

    .line 539
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getFaceQuality()F

    move-result v0

    float-to-int v0, v0

    iput v0, v9, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;->quality:I

    .line 540
    iget v0, v1, Landroid/graphics/Rect;->left:I

    iput v0, v9, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;->rectx:I

    .line 541
    iget v0, v1, Landroid/graphics/Rect;->top:I

    iput v0, v9, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;->recty:I

    .line 542
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, v9, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;->height:I

    .line 543
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, v9, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;->width:I

    .line 547
    .end local v1    # "rect":Landroid/graphics/Rect;
    .end local v8    # "encodeQualityImage":Ljava/lang/String;
    .end local v10    # "qualityImgCode":[B
    :cond_0
    return-object v9

    .line 528
    .restart local v1    # "rect":Landroid/graphics/Rect;
    :catch_0
    move-exception v0

    const/4 v10, 0x0

    .restart local v10    # "qualityImgCode":[B
    goto :goto_0
.end method

.method private b(Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;)Ljava/lang/String;
    .locals 7
    .param p1, "config"    # Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 317
    const-string/jumbo v2, ""

    .line 323
    .local v2, "publicKey":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "PublicKey:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getEnv()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 324
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getEnv()I

    move-result v4

    if-nez v4, :cond_1

    .line 326
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "PublicKey:"

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->j:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v4}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v6, "pubkey"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 328
    const-string/jumbo v4, "mybank"

    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->j:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object v5

    const-string/jumbo v6, "pubkey"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 329
    const-string/jumbo v4, "PublicKey A"

    invoke-static {v4}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 330
    iget-object v4, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->e:Landroid/content/Context;

    const-string/jumbo v5, "bid-log-key-public_b.key"

    invoke-static {v4, v5}, Lcom/alipay/mobile/security/bio/utils/FileUtil;->getAssetsData(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    .line 339
    .local v0, "btPublicKey":[B
    :goto_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .end local v2    # "publicKey":Ljava/lang/String;
    .local v3, "publicKey":Ljava/lang/String;
    move-object v2, v3

    .line 349
    .end local v0    # "btPublicKey":[B
    .end local v3    # "publicKey":Ljava/lang/String;
    .restart local v2    # "publicKey":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 332
    :cond_0
    const-string/jumbo v4, "PublicKey B"

    invoke-static {v4}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 333
    iget-object v4, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->e:Landroid/content/Context;

    const-string/jumbo v5, "bid-log-key-public.key"

    invoke-static {v4, v5}, Lcom/alipay/mobile/security/bio/utils/FileUtil;->getAssetsData(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    .restart local v0    # "btPublicKey":[B
    goto :goto_0

    .line 337
    .end local v0    # "btPublicKey":[B
    :cond_1
    iget-object v4, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->e:Landroid/content/Context;

    const-string/jumbo v5, "bid-log-key-public_t.key"

    invoke-static {v4, v5}, Lcom/alipay/mobile/security/bio/utils/FileUtil;->getAssetsData(Landroid/content/Context;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .restart local v0    # "btPublicKey":[B
    goto :goto_0

    .line 341
    .end local v0    # "btPublicKey":[B
    :catch_0
    move-exception v1

    .line 342
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 343
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 344
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 293
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 294
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->destroyTask()V

    .line 295
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->a:Lcom/alipay/mobile/security/bio/service/BioTaskService;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->a:Lcom/alipay/mobile/security/bio/service/BioTaskService;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/service/BioTaskService;->clearTask()V

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->a:Lcom/alipay/mobile/security/bio/service/BioTaskService;

    .line 299
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->b:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->c:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->d:Landroid/os/Handler;

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->i:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->e:Landroid/content/Context;

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->j:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->l:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    .line 307
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->n:Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->n:Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;->destroy()V

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->n:Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;

    .line 311
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->o:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    .line 312
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public destroyTask()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 179
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->a:Lcom/alipay/mobile/security/bio/service/BioTaskService;

    invoke-virtual {v3}, Lcom/alipay/mobile/security/bio/service/BioTaskService;->getTasks()Ljava/util/Vector;

    move-result-object v2

    .line 180
    .local v2, "tasks":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/alipay/mobile/security/bio/task/SubTask;>;"
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/task/SubTask;

    .local v0, "item":Lcom/alipay/mobile/security/bio/task/SubTask;
    move-object v1, v0

    .line 181
    check-cast v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;

    .line 183
    .local v1, "task":Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;
    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->destroy()V

    goto :goto_0

    .line 185
    .end local v0    # "item":Lcom/alipay/mobile/security/bio/task/SubTask;
    .end local v1    # "task":Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;
    :cond_0
    return-void
.end method

.method public doAction(Lcom/alipay/mobile/security/bio/task/ActionFrame;)V
    .locals 2
    .param p1, "actionFrame"    # Lcom/alipay/mobile/security/bio/task/ActionFrame;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->n:Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;->shootFaceFrame(Lcom/alipay/mobile/security/bio/task/ActionFrame;)V

    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->a:Lcom/alipay/mobile/security/bio/service/BioTaskService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->g:Z

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->a:Lcom/alipay/mobile/security/bio/service/BioTaskService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/bio/service/BioTaskService;->action(Lcom/alipay/mobile/security/bio/task/ActionFrame;)V

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->a:Lcom/alipay/mobile/security/bio/service/BioTaskService;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/service/BioTaskService;->getLeftTaskCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->g:Z

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->m:Z

    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->d:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 200
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->isHasSuitableImage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager$1;-><init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 206
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->d:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public getFaceUploadContent(Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;)Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceUploadContent;
    .locals 14
    .param p1, "userinfo"    # Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 419
    const/4 v4, 0x0

    .line 421
    .local v4, "code":I
    if-eqz p1, :cond_0

    .line 422
    iget-object v11, p1, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->bistoken:Ljava/lang/String;

    const/4 v12, 0x6

    invoke-static {v11, v12}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 425
    :cond_0
    new-instance v3, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceUploadContent;

    invoke-direct {v3}, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceUploadContent;-><init>()V

    .line 426
    .local v3, "bisFaceUploadContent":Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceUploadContent;
    new-instance v11, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;

    invoke-direct {v11}, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;-><init>()V

    iput-object v11, v3, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceUploadContent;->panoImage:Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;

    .line 427
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v3, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceUploadContent;->monitorImages:Ljava/util/List;

    .line 428
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v3, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceUploadContent;->aliveImages:Ljava/util/List;

    .line 429
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v3, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceUploadContent;->actionImages:Ljava/util/List;

    .line 432
    iget-object v11, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->a:Lcom/alipay/mobile/security/bio/service/BioTaskService;

    invoke-virtual {v11}, Lcom/alipay/mobile/security/bio/service/BioTaskService;->getTasks()Ljava/util/Vector;

    move-result-object v10

    .line 433
    .local v10, "tasks":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/alipay/mobile/security/bio/task/SubTask;>;"
    invoke-virtual {v10}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/security/bio/task/SubTask;

    .line 434
    .local v5, "item":Lcom/alipay/mobile/security/bio/task/SubTask;
    instance-of v12, v5, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionTask;

    if-eqz v12, :cond_1

    move-object v2, v5

    .line 435
    check-cast v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionTask;

    .line 436
    .local v2, "actionTask":Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionTask;
    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionTask;->getQualityFrame()Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    move-result-object v9

    .line 437
    .local v9, "qualityFrame":Lcom/alipay/mobile/security/faceauth/api/FaceFrame;
    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionTask;->getActionFrame()Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    move-result-object v0

    .line 438
    .local v0, "actionFrame":Lcom/alipay/mobile/security/faceauth/api/FaceFrame;
    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionTask;->getPoseFrame()Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    move-result-object v7

    .line 440
    .local v7, "poseFrame":Lcom/alipay/mobile/security/faceauth/api/FaceFrame;
    instance-of v11, v5, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;

    if-eqz v11, :cond_2

    .line 441
    iget-object v11, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->i:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v11}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->isUploadPoseOkPic()Z

    move-result v11

    if-eqz v11, :cond_2

    if-eqz v7, :cond_2

    .line 442
    const-string/jumbo v11, "aliveImage===pose"

    invoke-static {v11}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 443
    const/4 v11, 0x1

    const/16 v12, 0x46

    const/16 v13, 0xc8

    invoke-static {v7, v11, v12, v13, v4}, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->b(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;ZIII)Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;

    move-result-object v8

    .line 444
    .local v8, "poseImage":Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;
    if-eqz v8, :cond_2

    .line 445
    iget-object v11, v3, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceUploadContent;->actionImages:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    .end local v8    # "poseImage":Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;
    :cond_2
    iget-object v11, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->i:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v11}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->isUploadBigPic()Z

    move-result v11

    if-eqz v11, :cond_3

    if-eqz v9, :cond_3

    .line 450
    const-string/jumbo v11, "aliveImage===pano"

    invoke-static {v11}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 451
    const/4 v11, 0x0

    const/16 v12, 0x50

    const/16 v13, 0x280

    invoke-static {v9, v11, v12, v13, v4}, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->a(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;ZIII)Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;

    move-result-object v11

    iput-object v11, v3, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceUploadContent;->panoImage:Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;

    .line 453
    :cond_3
    iget-object v11, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->i:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v11}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->isUploadBestPic()Z

    move-result v11

    if-eqz v11, :cond_4

    if-eqz v9, :cond_4

    .line 454
    const-string/jumbo v11, "aliveImage===quality"

    invoke-static {v11}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 455
    const/4 v11, 0x1

    const/16 v12, 0x64

    const/16 v13, 0xc8

    invoke-static {v9, v11, v12, v13, v4}, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->a(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;ZIII)Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;

    move-result-object v6

    .line 456
    .local v6, "minQualityImage":Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;
    if-eqz v6, :cond_4

    .line 457
    iget-object v11, v3, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceUploadContent;->aliveImages:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    .end local v6    # "minQualityImage":Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;
    :cond_4
    iget-object v11, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->i:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v11}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->isUploadLivePic()Z

    move-result v11

    if-eqz v11, :cond_5

    if-eqz v0, :cond_5

    .line 461
    const-string/jumbo v11, "aliveImage===action"

    invoke-static {v11}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 462
    const/4 v11, 0x1

    const/16 v12, 0x46

    const/16 v13, 0xc8

    invoke-static {v0, v11, v12, v13, v4}, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->a(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;ZIII)Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;

    move-result-object v1

    .line 463
    .local v1, "actionImage":Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;
    if-eqz v1, :cond_5

    .line 464
    iget-object v11, v3, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceUploadContent;->actionImages:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    .end local v0    # "actionFrame":Lcom/alipay/mobile/security/faceauth/api/FaceFrame;
    .end local v1    # "actionImage":Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;
    .end local v2    # "actionTask":Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionTask;
    .end local v5    # "item":Lcom/alipay/mobile/security/bio/task/SubTask;
    .end local v7    # "poseFrame":Lcom/alipay/mobile/security/faceauth/api/FaceFrame;
    .end local v9    # "qualityFrame":Lcom/alipay/mobile/security/faceauth/api/FaceFrame;
    :cond_5
    return-object v3
.end method

.method public getMineShoot(Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;)Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceUploadContent;
    .locals 9
    .param p1, "userinfo"    # Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 631
    const/4 v2, 0x0

    .line 632
    .local v2, "code":I
    if-eqz p1, :cond_0

    .line 633
    iget-object v5, p1, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->bistoken:Ljava/lang/String;

    const/4 v6, 0x6

    invoke-static {v5, v6}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 636
    :cond_0
    new-instance v1, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceUploadContent;

    invoke-direct {v1}, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceUploadContent;-><init>()V

    .line 637
    .local v1, "bisFaceUploadContent":Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceUploadContent;
    new-instance v5, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;

    invoke-direct {v5}, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;-><init>()V

    iput-object v5, v1, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceUploadContent;->panoImage:Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;

    .line 638
    iget-object v5, v1, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceUploadContent;->panoImage:Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;

    const-string/jumbo v6, ""

    iput-object v6, v5, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;->content:Ljava/lang/String;

    .line 639
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceUploadContent;->monitorImages:Ljava/util/List;

    .line 640
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceUploadContent;->aliveImages:Ljava/util/List;

    .line 641
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceUploadContent;->actionImages:Ljava/util/List;

    .line 644
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->n:Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;

    if-eqz v5, :cond_2

    .line 647
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->n:Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;->getShootList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    .line 648
    .local v3, "faceFrames":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/alipay/mobile/security/faceauth/api/FaceFrame;>;"
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    .line 650
    .local v4, "item":Lcom/alipay/mobile/security/faceauth/api/FaceFrame;
    if-eqz v4, :cond_1

    .line 651
    const/4 v6, 0x0

    const/16 v7, 0x50

    const/16 v8, 0x140

    invoke-static {v4, v6, v7, v8, v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->a(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;ZIII)Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;

    move-result-object v0

    .line 652
    .local v0, "bisFaceImage":Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;
    const-string/jumbo v6, "aliveImage===monitor"

    invoke-static {v6}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 653
    if-eqz v0, :cond_1

    .line 654
    iget-object v6, v1, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceUploadContent;->monitorImages:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 659
    .end local v0    # "bisFaceImage":Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;
    .end local v3    # "faceFrames":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/alipay/mobile/security/faceauth/api/FaceFrame;>;"
    .end local v4    # "item":Lcom/alipay/mobile/security/faceauth/api/FaceFrame;
    :cond_2
    return-object v1
.end method

.method public getRetryTime()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->f:I

    return v0
.end method

.method public isHasSuitableImage()Z
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 219
    const/4 v6, 0x0

    .line 221
    .local v6, "result":Z
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 222
    .local v4, "picScore":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->a:Lcom/alipay/mobile/security/bio/service/BioTaskService;

    invoke-virtual {v8}, Lcom/alipay/mobile/security/bio/service/BioTaskService;->getTasks()Ljava/util/Vector;

    move-result-object v7

    .line 223
    .local v7, "tasks":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/alipay/mobile/security/bio/task/SubTask;>;"
    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/security/bio/task/SubTask;

    .line 224
    .local v3, "item":Lcom/alipay/mobile/security/bio/task/SubTask;
    const-string/jumbo v9, "SubTask:"

    invoke-static {v9}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 225
    instance-of v9, v3, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionTask;

    if-eqz v9, :cond_0

    move-object v0, v3

    .line 226
    check-cast v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionTask;

    .line 227
    .local v0, "actionTask":Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionTask;
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionTask;->getQualityFrame()Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    move-result-object v5

    .line 228
    .local v5, "qualityFrame":Lcom/alipay/mobile/security/faceauth/api/FaceFrame;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getFaceQuality()F

    move-result v9

    iget-object v10, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->i:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v10}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getUpload()Lcom/alipay/mobile/security/bio/config/bean/Upload;

    move-result-object v10

    .line 229
    invoke-virtual {v10}, Lcom/alipay/mobile/security/bio/config/bean/Upload;->getMinquality()I

    move-result v10

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_3

    .line 230
    const/4 v6, 0x1

    .line 232
    invoke-static {v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceFrameUtil;->getFaceParam(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;)Ljava/util/Map;

    move-result-object v1

    .line 233
    .local v1, "bigPicParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->o:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    sget-object v9, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_BIG_PIC_SLICE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    invoke-virtual {v8, v9, v1}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;Ljava/util/Map;)V

    .line 235
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 236
    .local v2, "extParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "vidcnt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionTask;->getVidcnt()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string/jumbo v8, "faceQuality"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getFaceQuality()F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->o:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    sget-object v9, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_UPLOAD_START:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    invoke-virtual {v8, v9, v2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;Ljava/util/Map;)V

    .line 240
    invoke-static {}, Lcom/alipay/mobile/security/faceauth/util/TimeRecord;->getInstance()Lcom/alipay/mobile/security/faceauth/util/TimeRecord;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/alipay/mobile/security/faceauth/util/TimeRecord;->setUploadStartTime(J)V

    .line 251
    .end local v0    # "actionTask":Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionTask;
    .end local v1    # "bigPicParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "extParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "item":Lcom/alipay/mobile/security/bio/task/SubTask;
    .end local v5    # "qualityFrame":Lcom/alipay/mobile/security/faceauth/api/FaceFrame;
    :cond_1
    if-nez v6, :cond_2

    .line 252
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 253
    .restart local v2    # "extParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "picscore"

    invoke-virtual {v4}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->o:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    sget-object v9, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_UPLOAD_AVARRIABLE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    invoke-virtual {v8, v9, v2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;Ljava/util/Map;)V

    .line 257
    .end local v2    # "extParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return v6

    .line 244
    .restart local v0    # "actionTask":Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionTask;
    .restart local v3    # "item":Lcom/alipay/mobile/security/bio/task/SubTask;
    .restart local v5    # "qualityFrame":Lcom/alipay/mobile/security/faceauth/api/FaceFrame;
    :cond_3
    if-eqz v5, :cond_0

    .line 245
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getFaceQuality()F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public isInUploadProcess()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->m:Z

    return v0
.end method

.method public isPassRetryTime()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 115
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->f:I

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->i:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getRetry()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetTask()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 265
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->f:I

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mRetryTime: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->o:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->o:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->setRetryID(Ljava/lang/String;)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->i:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->a(Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;)Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->resetTask(Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;)V

    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->m:Z

    .line 272
    return-void
.end method

.method public resetTask(Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;)V
    .locals 5
    .param p1, "actionMode"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->destroyTask()V

    .line 120
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->a:Lcom/alipay/mobile/security/bio/service/BioTaskService;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/service/BioTaskService;->clearTask()V

    .line 122
    const/4 v0, 0x0

    .line 124
    .local v0, "baseTask":Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;
    sget-object v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager$3;->a:[I

    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 138
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->a:Lcom/alipay/mobile/security/bio/service/BioTaskService;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/bio/service/BioTaskService;->addTask(Lcom/alipay/mobile/security/bio/task/SubTask;)V

    .line 140
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->a:Lcom/alipay/mobile/security/bio/service/BioTaskService;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/service/BioTaskService;->initAndBegin()V

    .line 142
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->g:Z

    .line 144
    return-void

    .line 126
    :pswitch_0
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;

    .end local v0    # "baseTask":Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->b:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->c:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->d:Landroid/os/Handler;

    iget-object v4, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->i:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/security/faceauth/circle/workspace/SelectFaceTask;-><init>(Lcom/alipay/mobile/security/bio/service/BioServiceManager;Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;Landroid/os/Handler;Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;)V

    .line 127
    .restart local v0    # "baseTask":Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;
    goto :goto_0

    .line 129
    :pswitch_1
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;

    .end local v0    # "baseTask":Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->b:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->c:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->d:Landroid/os/Handler;

    iget-object v4, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->i:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;-><init>(Lcom/alipay/mobile/security/bio/service/BioServiceManager;Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;Landroid/os/Handler;Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;)V

    .line 130
    .restart local v0    # "baseTask":Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;
    goto :goto_0

    .line 132
    :pswitch_2
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;

    .end local v0    # "baseTask":Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->b:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->c:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->d:Landroid/os/Handler;

    iget-object v4, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->i:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;-><init>(Lcom/alipay/mobile/security/bio/service/BioServiceManager;Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;Landroid/os/Handler;Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;)V

    .restart local v0    # "baseTask":Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;
    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public retryUpload()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->isHasSuitableImage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->d:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 290
    :goto_0
    return-void

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->uploadFaceInfo()V

    goto :goto_0
.end method

.method public stopTask()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 167
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->g:Z

    .line 169
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->a:Lcom/alipay/mobile/security/bio/service/BioTaskService;

    invoke-virtual {v3}, Lcom/alipay/mobile/security/bio/service/BioTaskService;->getTasks()Ljava/util/Vector;

    move-result-object v2

    .line 170
    .local v2, "tasks":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/alipay/mobile/security/bio/task/SubTask;>;"
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/task/SubTask;

    .local v0, "item":Lcom/alipay/mobile/security/bio/task/SubTask;
    move-object v1, v0

    .line 171
    check-cast v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;

    .line 173
    .local v1, "task":Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;
    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->stop()V

    goto :goto_0

    .line 176
    .end local v0    # "item":Lcom/alipay/mobile/security/bio/task/SubTask;
    .end local v1    # "task":Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;
    :cond_0
    return-void
.end method

.method public uploadFaceInfo()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 571
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->k:Lcom/alipay/mobile/security/faceauth/circle/workspace/UploadChannel;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->i:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->b(Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;)Ljava/lang/String;

    move-result-object v4

    .line 573
    .local v4, "publicKey":Ljava/lang/String;
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->l:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->getUserVerifyInfo()Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->getFaceUploadContent(Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;)Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceUploadContent;

    move-result-object v1

    .line 574
    .local v1, "content":Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceUploadContent;
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->l:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->getUserVerifyInfo()Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;

    move-result-object v0

    sget-object v5, Lcom/alipay/mobile/security/faceauth/InvokeType;->NORMAL:Lcom/alipay/mobile/security/faceauth/InvokeType;

    invoke-direct {p0, v0, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->a(Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;Lcom/alipay/mobile/security/faceauth/InvokeType;)Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;

    move-result-object v2

    .line 575
    .local v2, "log":Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->j:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBistoken()Ljava/lang/String;

    move-result-object v3

    .line 577
    .local v3, "bisToken":Ljava/lang/String;
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->k:Lcom/alipay/mobile/security/faceauth/circle/workspace/UploadChannel;

    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->i:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getEnv()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/UploadChannel;->uploadFaceInfo(Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceUploadContent;Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 580
    .end local v1    # "content":Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceUploadContent;
    .end local v2    # "log":Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;
    .end local v3    # "bisToken":Ljava/lang/String;
    .end local v4    # "publicKey":Ljava/lang/String;
    :cond_0
    return-void

    .line 577
    .restart local v1    # "content":Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceUploadContent;
    .restart local v2    # "log":Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;
    .restart local v3    # "bisToken":Ljava/lang/String;
    .restart local v4    # "publicKey":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public uploadNineShoot()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 584
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->h:Z

    if-eqz v0, :cond_0

    .line 596
    :goto_0
    return-void

    .line 587
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->h:Z

    .line 589
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager$2;-><init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 594
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
