.class public final Lcom/taobao/dp/DeviceSecuritySDK;
.super Ljava/lang/Object;
.source "DeviceSecuritySDK.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ENVIRONMENT_DAILY:I = 0x2

.field public static final ENVIRONMENT_ONLINE:I = 0x0

.field public static final ENVIRONMENT_PRE:I = 0x1

.field private static instance:Lcom/taobao/dp/DeviceSecuritySDK;


# instance fields
.field private mUmidComponent:Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;

.field private mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/dp/DeviceSecuritySDK;->instance:Lcom/taobao/dp/DeviceSecuritySDK;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/taobao/dp/DeviceSecuritySDK;->mUmidComponent:Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;

    .line 34
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    .line 35
    .local v1, "mamanger":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    const-class v2, Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;

    invoke-virtual {v1, v2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;

    iput-object v2, p0, Lcom/taobao/dp/DeviceSecuritySDK;->mUmidComponent:Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;

    .line 36
    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getSDKVerison()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/dp/DeviceSecuritySDK;->mVersion:Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v1    # "mamanger":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    sget-object v0, Lcom/taobao/dp/DeviceSecuritySDK;->instance:Lcom/taobao/dp/DeviceSecuritySDK;

    if-nez v0, :cond_1

    .line 44
    const-class v1, Lcom/taobao/dp/DeviceSecuritySDK;

    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Lcom/taobao/dp/DeviceSecuritySDK;->instance:Lcom/taobao/dp/DeviceSecuritySDK;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/taobao/dp/DeviceSecuritySDK;

    invoke-direct {v0, p0}, Lcom/taobao/dp/DeviceSecuritySDK;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/taobao/dp/DeviceSecuritySDK;->instance:Lcom/taobao/dp/DeviceSecuritySDK;

    .line 48
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_1
    sget-object v0, Lcom/taobao/dp/DeviceSecuritySDK;->instance:Lcom/taobao/dp/DeviceSecuritySDK;

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final getSecurityToken()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 159
    const-string/jumbo v1, "000000000000000000000000"

    .line 161
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/taobao/dp/DeviceSecuritySDK;->mUmidComponent:Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;

    if-eqz v2, :cond_0

    .line 162
    iget-object v2, p0, Lcom/taobao/dp/DeviceSecuritySDK;->mUmidComponent:Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;

    invoke-interface {v2}, Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;->getSecurityToken()Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 168
    :cond_0
    :goto_0
    return-object v1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    goto :goto_0
.end method

.method public final getSecurityToken(I)Ljava/lang/String;
    .locals 3
    .param p1, "env"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 172
    const-string/jumbo v1, "000000000000000000000000"

    .line 174
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/taobao/dp/DeviceSecuritySDK;->mUmidComponent:Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;

    if-eqz v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/taobao/dp/DeviceSecuritySDK;->mUmidComponent:Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;

    invoke-interface {v2, p1}, Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;->getSecurityToken(I)Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 180
    :cond_0
    :goto_0
    return-object v1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    goto :goto_0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/taobao/dp/DeviceSecuritySDK;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final init()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/taobao/dp/DeviceSecuritySDK;->mUmidComponent:Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/taobao/dp/DeviceSecuritySDK;->mUmidComponent:Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;

    invoke-interface {v1}, Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;->initUMID()V
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    goto :goto_0
.end method

.method public final init(Lcom/taobao/dp/http/IUrlRequestService;)V
    .locals 2
    .param p1, "reqService"    # Lcom/taobao/dp/http/IUrlRequestService;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/taobao/dp/DeviceSecuritySDK;->mUmidComponent:Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/taobao/dp/DeviceSecuritySDK;->mUmidComponent:Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;

    invoke-interface {v1}, Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;->initUMID()V
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    goto :goto_0
.end method

.method public final initAsync(Ljava/lang/String;ILcom/taobao/dp/http/IUrlRequestService;Lcom/taobao/dp/client/IInitResultListener;)V
    .locals 6
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "envMode"    # I
    .param p3, "reqService"    # Lcom/taobao/dp/http/IUrlRequestService;
    .param p4, "listener"    # Lcom/taobao/dp/client/IInitResultListener;

    .prologue
    .line 98
    const-string/jumbo v2, ""

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/dp/DeviceSecuritySDK;->initAsync(Ljava/lang/String;Ljava/lang/String;ILcom/taobao/dp/http/IUrlRequestService;Lcom/taobao/dp/client/IInitResultListener;)V

    .line 99
    return-void
.end method

.method public final initAsync(Ljava/lang/String;Ljava/lang/String;ILcom/taobao/dp/http/IUrlRequestService;Lcom/taobao/dp/client/IInitResultListener;)V
    .locals 4
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "authCode"    # Ljava/lang/String;
    .param p3, "envMode"    # I
    .param p4, "reqService"    # Lcom/taobao/dp/http/IUrlRequestService;
    .param p5, "listener"    # Lcom/taobao/dp/client/IInitResultListener;

    .prologue
    .line 112
    const/4 v1, 0x0

    .line 113
    .local v1, "umidInitListenerEx":Lcom/alibaba/wireless/security/open/umid/IUMIDInitListenerEx;
    if-eqz p5, :cond_0

    .line 114
    new-instance v1, Lcom/taobao/dp/DeviceSecuritySDK$1;

    .end local v1    # "umidInitListenerEx":Lcom/alibaba/wireless/security/open/umid/IUMIDInitListenerEx;
    invoke-direct {v1, p0, p5}, Lcom/taobao/dp/DeviceSecuritySDK$1;-><init>(Lcom/taobao/dp/DeviceSecuritySDK;Lcom/taobao/dp/client/IInitResultListener;)V

    .line 123
    .restart local v1    # "umidInitListenerEx":Lcom/alibaba/wireless/security/open/umid/IUMIDInitListenerEx;
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/taobao/dp/DeviceSecuritySDK;->mUmidComponent:Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;

    if-eqz v2, :cond_1

    .line 124
    iget-object v2, p0, Lcom/taobao/dp/DeviceSecuritySDK;->mUmidComponent:Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;

    invoke-interface {v2, p3, v1}, Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;->initUMID(ILcom/alibaba/wireless/security/open/umid/IUMIDInitListenerEx;)V
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_1
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    .line 128
    if-eqz p5, :cond_1

    .line 129
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-interface {p5, v2, v3}, Lcom/taobao/dp/client/IInitResultListener;->onInitFinished(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final initSync(Ljava/lang/String;ILcom/taobao/dp/http/IUrlRequestService;)I
    .locals 1
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "envMode"    # I
    .param p3, "reqService"    # Lcom/taobao/dp/http/IUrlRequestService;

    .prologue
    .line 63
    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/taobao/dp/DeviceSecuritySDK;->initSync(Ljava/lang/String;Ljava/lang/String;ILcom/taobao/dp/http/IUrlRequestService;)I

    move-result v0

    return v0
.end method

.method public final initSync(Ljava/lang/String;Ljava/lang/String;ILcom/taobao/dp/http/IUrlRequestService;)I
    .locals 3
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "authCode"    # Ljava/lang/String;
    .param p3, "envMode"    # I
    .param p4, "reqService"    # Lcom/taobao/dp/http/IUrlRequestService;

    .prologue
    .line 77
    const/4 v1, -0x1

    .line 79
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/taobao/dp/DeviceSecuritySDK;->mUmidComponent:Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;

    if-eqz v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/taobao/dp/DeviceSecuritySDK;->mUmidComponent:Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;

    invoke-interface {v2, p3}, Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;->initUMIDSync(I)I
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 86
    :cond_0
    :goto_0
    return v1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    .line 84
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public final sendLoginResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "nick"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 187
    return-void
.end method

.method public final setEnvironment(I)V
    .locals 2
    .param p1, "environment"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/taobao/dp/DeviceSecuritySDK;->mUmidComponent:Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/taobao/dp/DeviceSecuritySDK;->mUmidComponent:Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;

    invoke-interface {v1, p1}, Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;->setEnvironment(I)V
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    goto :goto_0
.end method

.method public final declared-synchronized setOnlineHost(Lcom/taobao/dp/OnlineHost;)V
    .locals 3
    .param p1, "host"    # Lcom/taobao/dp/OnlineHost;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 210
    monitor-enter p0

    if-nez p1, :cond_0

    .line 211
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "host is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 215
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/taobao/dp/DeviceSecuritySDK;->mUmidComponent:Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;

    if-eqz v1, :cond_1

    .line 216
    iget-object v1, p0, Lcom/taobao/dp/DeviceSecuritySDK;->mUmidComponent:Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;

    invoke-virtual {p1}, Lcom/taobao/dp/OnlineHost;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;->setOnlineHost(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    :try_start_2
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
