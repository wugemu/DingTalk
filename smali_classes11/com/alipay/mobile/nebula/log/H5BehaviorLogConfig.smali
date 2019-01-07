.class public Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;
.super Ljava/lang/Object;
.source "H5BehaviorLogConfig.java"


# static fields
.field public static final DEDIUM_LOG_LEVEL:I = 0x2

.field public static final HIGH_LOG_LEVEL:I = 0x1

.field public static final LOW_LOG_LEVEL:I = 0x3

.field public static final NEBULA_TCEH_BEHAVIOUR:Ljava/lang/String; = "NebulaTech"


# instance fields
.field private abTestInfo:Ljava/lang/String;

.field private actionId:Ljava/lang/String;

.field private behaviourPro:Ljava/lang/String;

.field private entityContentId:Ljava/lang/String;

.field private logLevel:I

.field private pageId:Ljava/lang/String;

.field private userCaseId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newH5BehaviorLogConfig()Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;-><init>()V

    .line 24
    .local v0, "behaviorLogConfig":Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;
    return-object v0
.end method


# virtual methods
.method public getAbTestInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->abTestInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getActionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->actionId:Ljava/lang/String;

    return-object v0
.end method

.method public getBehaviourPro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->behaviourPro:Ljava/lang/String;

    return-object v0
.end method

.method public getEntityContentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->entityContentId:Ljava/lang/String;

    return-object v0
.end method

.method public getLogLevel()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->logLevel:I

    return v0
.end method

.method public getPageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->pageId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCaseId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->userCaseId:Ljava/lang/String;

    return-object v0
.end method

.method public setAbTestInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;
    .locals 0
    .param p1, "abTestInfo"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->abTestInfo:Ljava/lang/String;

    .line 46
    return-object p0
.end method

.method public setActionId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;
    .locals 0
    .param p1, "actionId"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->actionId:Ljava/lang/String;

    .line 61
    return-object p0
.end method

.method public setBehaviourPro(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;
    .locals 0
    .param p1, "behaviourPro"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->behaviourPro:Ljava/lang/String;

    .line 31
    return-object p0
.end method

.method public setEntityContentId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;
    .locals 0
    .param p1, "entityContentId"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->entityContentId:Ljava/lang/String;

    .line 51
    return-object p0
.end method

.method public setLogLevel(I)Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;
    .locals 0
    .param p1, "logLevel"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->logLevel:I

    .line 36
    return-object p0
.end method

.method public setPageId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;
    .locals 0
    .param p1, "pageId"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->pageId:Ljava/lang/String;

    .line 56
    return-object p0
.end method

.method public setUserCaseId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;
    .locals 0
    .param p1, "userCaseId"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->userCaseId:Ljava/lang/String;

    .line 41
    return-object p0
.end method
