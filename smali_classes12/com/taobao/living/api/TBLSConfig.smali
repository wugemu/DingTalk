.class public Lcom/taobao/living/api/TBLSConfig;
.super Ljava/lang/Object;
.source "TBLSConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/living/api/TBLSConfig$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONFIT_UNKNOW:Ljava/lang/String; = "unknow"

.field private static final TBLS_SDK_VERSION:Ljava/lang/String; = "0.1.0"


# instance fields
.field private appKey:Ljava/lang/String;

.field public awpConfigMap:Ljava/util/Map;

.field public carriers:Ljava/lang/String;

.field public deviceId:Ljava/lang/String;

.field public enableHwcode:Z

.field public env:I

.field private isEnableHwcode:Z

.field private isLandScape:Z

.field private localUserId:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public networkType:Ljava/lang/String;

.field private pushStreamMode:Lcom/taobao/living/api/TBConstants$PushStreamMode;

.field public role:Lcom/taobao/living/api/TBConstants$Role;

.field public sdkVersion:Ljava/lang/String;

.field private serviceName:Ljava/lang/String;

.field private videoDefinition:Lcom/taobao/living/api/TBConstants$VideoDefinition;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/taobao/living/api/TBConstants$Role;->ANCHOR:Lcom/taobao/living/api/TBConstants$Role;

    iput-object v0, p0, Lcom/taobao/living/api/TBLSConfig;->role:Lcom/taobao/living/api/TBConstants$Role;

    .line 25
    sget-object v0, Lcom/taobao/living/api/TBConstants$VideoDefinition;->StandardDefinition:Lcom/taobao/living/api/TBConstants$VideoDefinition;

    iput-object v0, p0, Lcom/taobao/living/api/TBLSConfig;->videoDefinition:Lcom/taobao/living/api/TBConstants$VideoDefinition;

    .line 26
    sget-object v0, Lcom/taobao/living/api/TBConstants$PushStreamMode;->MODE_RTMP:Lcom/taobao/living/api/TBConstants$PushStreamMode;

    iput-object v0, p0, Lcom/taobao/living/api/TBLSConfig;->pushStreamMode:Lcom/taobao/living/api/TBConstants$PushStreamMode;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/living/api/TBLSConfig;->isLandScape:Z

    .line 28
    iput-boolean v1, p0, Lcom/taobao/living/api/TBLSConfig;->isEnableHwcode:Z

    .line 32
    iput-boolean v1, p0, Lcom/taobao/living/api/TBLSConfig;->enableHwcode:Z

    .line 45
    const-string/jumbo v0, "unknow"

    iput-object v0, p0, Lcom/taobao/living/api/TBLSConfig;->carriers:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "unknow"

    iput-object v0, p0, Lcom/taobao/living/api/TBLSConfig;->model:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "unknow"

    iput-object v0, p0, Lcom/taobao/living/api/TBLSConfig;->networkType:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "0.1.0"

    iput-object v0, p0, Lcom/taobao/living/api/TBLSConfig;->sdkVersion:Ljava/lang/String;

    .line 49
    return-void
.end method

.method static synthetic access$002(Lcom/taobao/living/api/TBLSConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/living/api/TBLSConfig;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/taobao/living/api/TBLSConfig;->appKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/taobao/living/api/TBLSConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/living/api/TBLSConfig;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/taobao/living/api/TBLSConfig;->serviceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/taobao/living/api/TBLSConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/living/api/TBLSConfig;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/taobao/living/api/TBLSConfig;->localUserId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/taobao/living/api/TBLSConfig;Lcom/taobao/living/api/TBConstants$VideoDefinition;)Lcom/taobao/living/api/TBConstants$VideoDefinition;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/living/api/TBLSConfig;
    .param p1, "x1"    # Lcom/taobao/living/api/TBConstants$VideoDefinition;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/taobao/living/api/TBLSConfig;->videoDefinition:Lcom/taobao/living/api/TBConstants$VideoDefinition;

    return-object p1
.end method

.method static synthetic access$402(Lcom/taobao/living/api/TBLSConfig;Lcom/taobao/living/api/TBConstants$PushStreamMode;)Lcom/taobao/living/api/TBConstants$PushStreamMode;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/living/api/TBLSConfig;
    .param p1, "x1"    # Lcom/taobao/living/api/TBConstants$PushStreamMode;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/taobao/living/api/TBLSConfig;->pushStreamMode:Lcom/taobao/living/api/TBConstants$PushStreamMode;

    return-object p1
.end method

.method static synthetic access$502(Lcom/taobao/living/api/TBLSConfig;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/taobao/living/api/TBLSConfig;
    .param p1, "x1"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/taobao/living/api/TBLSConfig;->isLandScape:Z

    return p1
.end method

.method static synthetic access$602(Lcom/taobao/living/api/TBLSConfig;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/taobao/living/api/TBLSConfig;
    .param p1, "x1"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/taobao/living/api/TBLSConfig;->isEnableHwcode:Z

    return p1
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/taobao/living/api/TBLSConfig;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAwpConfigMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/taobao/living/api/TBLSConfig;->awpConfigMap:Ljava/util/Map;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/living/api/TBLSConfig;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getEnv()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/taobao/living/api/TBLSConfig;->env:I

    return v0
.end method

.method public getIsEnableHwcode()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/taobao/living/api/TBLSConfig;->isEnableHwcode:Z

    return v0
.end method

.method public getIsLandscape()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/taobao/living/api/TBLSConfig;->isLandScape:Z

    return v0
.end method

.method public getLocalUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/taobao/living/api/TBLSConfig;->localUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getPushStreamMode()Lcom/taobao/living/api/TBConstants$PushStreamMode;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/taobao/living/api/TBLSConfig;->pushStreamMode:Lcom/taobao/living/api/TBConstants$PushStreamMode;

    return-object v0
.end method

.method public getRole()Lcom/taobao/living/api/TBConstants$Role;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/taobao/living/api/TBLSConfig;->role:Lcom/taobao/living/api/TBConstants$Role;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/taobao/living/api/TBLSConfig;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoDefinition()Lcom/taobao/living/api/TBConstants$VideoDefinition;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/taobao/living/api/TBLSConfig;->videoDefinition:Lcom/taobao/living/api/TBConstants$VideoDefinition;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v3, 0x27

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "TBLSConfig{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "appKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/living/api/TBLSConfig;->appKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    const-string/jumbo v1, ", serviceName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/living/api/TBLSConfig;->serviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    const-string/jumbo v1, ", deviceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/living/api/TBLSConfig;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    const-string/jumbo v1, ", localUserId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/living/api/TBLSConfig;->localUserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    const-string/jumbo v1, ", env=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/taobao/living/api/TBLSConfig;->env:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    const-string/jumbo v1, ", role=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/living/api/TBLSConfig;->role:Lcom/taobao/living/api/TBConstants$Role;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    const-string/jumbo v1, ", videoDefinition=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/living/api/TBLSConfig;->videoDefinition:Lcom/taobao/living/api/TBConstants$VideoDefinition;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    const-string/jumbo v1, ", pushStreamMode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/living/api/TBLSConfig;->pushStreamMode:Lcom/taobao/living/api/TBConstants$PushStreamMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    const-string/jumbo v1, ", isLandscape=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/taobao/living/api/TBLSConfig;->isLandScape:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "yes"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    const-string/jumbo v1, ", isEnableHwcode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/taobao/living/api/TBLSConfig;->isEnableHwcode:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "yes"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    const-string/jumbo v1, ", deviceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/living/api/TBLSConfig;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    const-string/jumbo v1, ", carriers=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/living/api/TBLSConfig;->carriers:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    const-string/jumbo v1, ", model=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/living/api/TBLSConfig;->model:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    const-string/jumbo v1, ", networkType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/living/api/TBLSConfig;->networkType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    const-string/jumbo v1, ", sdkVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/living/api/TBLSConfig;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    const-string/jumbo v1, ", awpConfigMap=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/living/api/TBLSConfig;->awpConfigMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 109
    :cond_0
    const-string/jumbo v1, "false"

    goto/16 :goto_0

    .line 110
    :cond_1
    const-string/jumbo v1, "false"

    goto :goto_1
.end method

.method public verifyVaild()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    iget-object v0, p0, Lcom/taobao/living/api/TBLSConfig;->appKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/taobao/living/api/TBLSConfig;->localUserId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/taobao/living/api/TBLSConfig;->role:Lcom/taobao/living/api/TBConstants$Role;

    sget-object v1, Lcom/taobao/living/api/TBConstants$Role;->ANCHOR:Lcom/taobao/living/api/TBConstants$Role;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/taobao/living/api/TBLSConfig;->role:Lcom/taobao/living/api/TBConstants$Role;

    sget-object v1, Lcom/taobao/living/api/TBConstants$Role;->FANS:Lcom/taobao/living/api/TBConstants$Role;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/taobao/living/api/TBLSConfig;->role:Lcom/taobao/living/api/TBConstants$Role;

    sget-object v1, Lcom/taobao/living/api/TBConstants$Role;->CHAT:Lcom/taobao/living/api/TBConstants$Role;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/taobao/living/api/TBLSConfig;->videoDefinition:Lcom/taobao/living/api/TBConstants$VideoDefinition;

    sget-object v1, Lcom/taobao/living/api/TBConstants$VideoDefinition;->LowDefinition:Lcom/taobao/living/api/TBConstants$VideoDefinition;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/taobao/living/api/TBLSConfig;->videoDefinition:Lcom/taobao/living/api/TBConstants$VideoDefinition;

    sget-object v1, Lcom/taobao/living/api/TBConstants$VideoDefinition;->StandardDefinition:Lcom/taobao/living/api/TBConstants$VideoDefinition;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/taobao/living/api/TBLSConfig;->videoDefinition:Lcom/taobao/living/api/TBConstants$VideoDefinition;

    sget-object v1, Lcom/taobao/living/api/TBConstants$VideoDefinition;->HighDefinition:Lcom/taobao/living/api/TBConstants$VideoDefinition;

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/taobao/living/api/TBLSConfig;->pushStreamMode:Lcom/taobao/living/api/TBConstants$PushStreamMode;

    sget-object v1, Lcom/taobao/living/api/TBConstants$PushStreamMode;->MODE_RTMP:Lcom/taobao/living/api/TBConstants$PushStreamMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/taobao/living/api/TBLSConfig;->pushStreamMode:Lcom/taobao/living/api/TBConstants$PushStreamMode;

    sget-object v1, Lcom/taobao/living/api/TBConstants$PushStreamMode;->MODE_RTP:Lcom/taobao/living/api/TBConstants$PushStreamMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/taobao/living/api/TBLSConfig;->pushStreamMode:Lcom/taobao/living/api/TBConstants$PushStreamMode;

    sget-object v1, Lcom/taobao/living/api/TBConstants$PushStreamMode;->MODE_DEFAULT:Lcom/taobao/living/api/TBConstants$PushStreamMode;

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
