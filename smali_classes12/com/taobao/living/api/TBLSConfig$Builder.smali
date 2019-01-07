.class public Lcom/taobao/living/api/TBLSConfig$Builder;
.super Ljava/lang/Object;
.source "TBLSConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/living/api/TBLSConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private appKey:Ljava/lang/String;

.field private awpConfigMap:Ljava/util/Map;

.field private deviceId:Ljava/lang/String;

.field private env:I

.field private isEnableHwcode:Z

.field private isLandscape:Z

.field private localUserId:Ljava/lang/String;

.field private pushStreamMode:Lcom/taobao/living/api/TBConstants$PushStreamMode;

.field private role:Lcom/taobao/living/api/TBConstants$Role;

.field private serviceName:Ljava/lang/String;

.field private videoDefinition:Lcom/taobao/living/api/TBConstants$VideoDefinition;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/living/api/TBLSConfig$Builder;->isEnableHwcode:Z

    .line 136
    return-void
.end method


# virtual methods
.method public build()Lcom/taobao/living/api/TBLSConfig;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 229
    new-instance v0, Lcom/taobao/living/api/TBLSConfig;

    invoke-direct {v0}, Lcom/taobao/living/api/TBLSConfig;-><init>()V

    .line 230
    .local v0, "tblsConfig":Lcom/taobao/living/api/TBLSConfig;
    iget-object v1, p0, Lcom/taobao/living/api/TBLSConfig$Builder;->appKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/living/api/TBLSConfig;->access$002(Lcom/taobao/living/api/TBLSConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 231
    iget-object v1, p0, Lcom/taobao/living/api/TBLSConfig$Builder;->serviceName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/living/api/TBLSConfig;->access$102(Lcom/taobao/living/api/TBLSConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 232
    iget-object v1, p0, Lcom/taobao/living/api/TBLSConfig$Builder;->deviceId:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/living/api/TBLSConfig;->deviceId:Ljava/lang/String;

    .line 233
    iget-object v1, p0, Lcom/taobao/living/api/TBLSConfig$Builder;->localUserId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/living/api/TBLSConfig;->access$202(Lcom/taobao/living/api/TBLSConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    iget v1, p0, Lcom/taobao/living/api/TBLSConfig$Builder;->env:I

    iput v1, v0, Lcom/taobao/living/api/TBLSConfig;->env:I

    .line 235
    iget-object v1, p0, Lcom/taobao/living/api/TBLSConfig$Builder;->role:Lcom/taobao/living/api/TBConstants$Role;

    iput-object v1, v0, Lcom/taobao/living/api/TBLSConfig;->role:Lcom/taobao/living/api/TBConstants$Role;

    .line 236
    iget-object v1, p0, Lcom/taobao/living/api/TBLSConfig$Builder;->videoDefinition:Lcom/taobao/living/api/TBConstants$VideoDefinition;

    invoke-static {v0, v1}, Lcom/taobao/living/api/TBLSConfig;->access$302(Lcom/taobao/living/api/TBLSConfig;Lcom/taobao/living/api/TBConstants$VideoDefinition;)Lcom/taobao/living/api/TBConstants$VideoDefinition;

    .line 237
    iget-object v1, p0, Lcom/taobao/living/api/TBLSConfig$Builder;->pushStreamMode:Lcom/taobao/living/api/TBConstants$PushStreamMode;

    invoke-static {v0, v1}, Lcom/taobao/living/api/TBLSConfig;->access$402(Lcom/taobao/living/api/TBLSConfig;Lcom/taobao/living/api/TBConstants$PushStreamMode;)Lcom/taobao/living/api/TBConstants$PushStreamMode;

    .line 238
    iget-boolean v1, p0, Lcom/taobao/living/api/TBLSConfig$Builder;->isLandscape:Z

    invoke-static {v0, v1}, Lcom/taobao/living/api/TBLSConfig;->access$502(Lcom/taobao/living/api/TBLSConfig;Z)Z

    .line 239
    iget-boolean v1, p0, Lcom/taobao/living/api/TBLSConfig$Builder;->isEnableHwcode:Z

    invoke-static {v0, v1}, Lcom/taobao/living/api/TBLSConfig;->access$602(Lcom/taobao/living/api/TBLSConfig;Z)Z

    .line 240
    iget-object v1, p0, Lcom/taobao/living/api/TBLSConfig$Builder;->awpConfigMap:Ljava/util/Map;

    iput-object v1, v0, Lcom/taobao/living/api/TBLSConfig;->awpConfigMap:Ljava/util/Map;

    .line 241
    return-object v0
.end method

.method public setAppKey(Ljava/lang/String;)Lcom/taobao/living/api/TBLSConfig$Builder;
    .locals 0
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/taobao/living/api/TBLSConfig$Builder;->appKey:Ljava/lang/String;

    .line 144
    return-object p0
.end method

.method public setAwpConfigMap(Ljava/util/Map;)Lcom/taobao/living/api/TBLSConfig$Builder;
    .locals 0
    .param p1, "awpConfigMap"    # Ljava/util/Map;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/taobao/living/api/TBLSConfig$Builder;->awpConfigMap:Ljava/util/Map;

    .line 216
    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/taobao/living/api/TBLSConfig$Builder;
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/taobao/living/api/TBLSConfig$Builder;->deviceId:Ljava/lang/String;

    .line 154
    return-object p0
.end method

.method public setEnableHwcode(Z)Lcom/taobao/living/api/TBLSConfig$Builder;
    .locals 0
    .param p1, "enableHwcode"    # Z

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/taobao/living/api/TBLSConfig$Builder;->isEnableHwcode:Z

    .line 225
    return-object p0
.end method

.method public setEnv(I)Lcom/taobao/living/api/TBLSConfig$Builder;
    .locals 0
    .param p1, "env"    # I

    .prologue
    .line 171
    iput p1, p0, Lcom/taobao/living/api/TBLSConfig$Builder;->env:I

    .line 172
    return-object p0
.end method

.method public setIsLandscape(Z)Lcom/taobao/living/api/TBLSConfig$Builder;
    .locals 0
    .param p1, "isLandscape"    # Z

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/taobao/living/api/TBLSConfig$Builder;->isLandscape:Z

    .line 208
    return-object p0
.end method

.method public setLocalUserId(Ljava/lang/String;)Lcom/taobao/living/api/TBLSConfig$Builder;
    .locals 0
    .param p1, "localUserId"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/taobao/living/api/TBLSConfig$Builder;->localUserId:Ljava/lang/String;

    .line 163
    return-object p0
.end method

.method public setPushStreamMode(Lcom/taobao/living/api/TBConstants$PushStreamMode;)Lcom/taobao/living/api/TBLSConfig$Builder;
    .locals 0
    .param p1, "pushStreamMode"    # Lcom/taobao/living/api/TBConstants$PushStreamMode;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/taobao/living/api/TBLSConfig$Builder;->pushStreamMode:Lcom/taobao/living/api/TBConstants$PushStreamMode;

    .line 199
    return-object p0
.end method

.method public setRole(Lcom/taobao/living/api/TBConstants$Role;)Lcom/taobao/living/api/TBLSConfig$Builder;
    .locals 0
    .param p1, "role"    # Lcom/taobao/living/api/TBConstants$Role;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/taobao/living/api/TBLSConfig$Builder;->role:Lcom/taobao/living/api/TBConstants$Role;

    .line 181
    return-object p0
.end method

.method public setServiceName(Ljava/lang/String;)Lcom/taobao/living/api/TBLSConfig$Builder;
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/taobao/living/api/TBLSConfig$Builder;->serviceName:Ljava/lang/String;

    .line 149
    return-object p0
.end method

.method public setVideoDefinition(Lcom/taobao/living/api/TBConstants$VideoDefinition;)Lcom/taobao/living/api/TBLSConfig$Builder;
    .locals 0
    .param p1, "videoDefinition"    # Lcom/taobao/living/api/TBConstants$VideoDefinition;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/taobao/living/api/TBLSConfig$Builder;->videoDefinition:Lcom/taobao/living/api/TBConstants$VideoDefinition;

    .line 190
    return-object p0
.end method
