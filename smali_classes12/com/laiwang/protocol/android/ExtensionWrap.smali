.class public Lcom/laiwang/protocol/android/ExtensionWrap;
.super Lcom/laiwang/protocol/android/Extension;
.source "ExtensionWrap.java"


# instance fields
.field extension:Lcom/laiwang/protocol/android/Extension;


# direct methods
.method public constructor <init>(Lcom/laiwang/protocol/android/Extension;)V
    .locals 0
    .param p1, "extension"    # Lcom/laiwang/protocol/android/Extension;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/laiwang/protocol/android/Extension;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/laiwang/protocol/android/ExtensionWrap;->extension:Lcom/laiwang/protocol/android/Extension;

    .line 17
    return-void
.end method


# virtual methods
.method public authHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/laiwang/protocol/android/ExtensionWrap;->extension:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/Extension;->authHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public authUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/laiwang/protocol/android/ExtensionWrap;->extension:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/Extension;->authUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cacheHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/laiwang/protocol/android/ExtensionWrap;->extension:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/Extension;->cacheHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public defaultServerURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/laiwang/protocol/android/ExtensionWrap;->extension:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/Extension;->defaultServerURI()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public deviceAuthResult(Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;)V
    .locals 1
    .param p1, "result"    # Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/laiwang/protocol/android/ExtensionWrap;->extension:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/android/Extension;->deviceAuthResult(Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;)V

    .line 91
    return-void
.end method

.method public deviceIsOpen()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/laiwang/protocol/android/ExtensionWrap;->extension:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/Extension;->deviceIsOpen()Z

    move-result v0

    return v0
.end method

.method public deviceTokenInvalid()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 84
    iget-object v0, p0, Lcom/laiwang/protocol/android/ExtensionWrap;->extension:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/Extension;->deviceTokenInvalid()V

    .line 85
    sget-object v0, Lcom/laiwang/protocol/android/LWP$Action;->DEVICE_TOKEN_INVALID:Lcom/laiwang/protocol/android/LWP$Action;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/LWP;->send(Lcom/laiwang/protocol/android/LWP$Action;Landroid/os/Bundle;)V

    .line 86
    return-void
.end method

.method public deviceTokenRequired()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    iget-object v0, p0, Lcom/laiwang/protocol/android/ExtensionWrap;->extension:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/Extension;->deviceTokenRequired()V

    .line 79
    sget-object v0, Lcom/laiwang/protocol/android/LWP$Action;->DEVICE_TOKEN_REQUIRED:Lcom/laiwang/protocol/android/LWP$Action;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/LWP;->send(Lcom/laiwang/protocol/android/LWP$Action;Landroid/os/Bundle;)V

    .line 80
    return-void
.end method

.method public fixedServerURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/laiwang/protocol/android/ExtensionWrap;->extension:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/Extension;->fixedServerURI()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public mainOrgId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 110
    iget-object v0, p0, Lcom/laiwang/protocol/android/ExtensionWrap;->extension:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/Extension;->mainOrgId()J

    move-result-wide v0

    return-wide v0
.end method

.method public noAckPushUri()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/laiwang/protocol/android/ExtensionWrap;->extension:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/Extension;->noAckPushUri()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public noAckRpcUri()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/laiwang/protocol/android/ExtensionWrap;->extension:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/Extension;->noAckRpcUri()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public noAuthUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/laiwang/protocol/android/ExtensionWrap;->extension:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/Extension;->noAuthUris()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public token()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/laiwang/protocol/android/ExtensionWrap;->extension:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/Extension;->token()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tokenAuthResult(Lcom/laiwang/protocol/android/TokenListener$AuthResult;)V
    .locals 1
    .param p1, "result"    # Lcom/laiwang/protocol/android/TokenListener$AuthResult;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/laiwang/protocol/android/ExtensionWrap;->extension:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/android/Extension;->tokenAuthResult(Lcom/laiwang/protocol/android/TokenListener$AuthResult;)V

    .line 96
    return-void
.end method

.method public tokenInvalid()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 62
    iget-object v0, p0, Lcom/laiwang/protocol/android/ExtensionWrap;->extension:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/Extension;->tokenInvalid()V

    .line 63
    sget-object v0, Lcom/laiwang/protocol/android/LWP$Action;->TOKEN_INVALID:Lcom/laiwang/protocol/android/LWP$Action;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/LWP;->send(Lcom/laiwang/protocol/android/LWP$Action;Landroid/os/Bundle;)V

    .line 64
    return-void
.end method

.method public tokenRequired()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    iget-object v0, p0, Lcom/laiwang/protocol/android/ExtensionWrap;->extension:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/Extension;->tokenRequired()V

    .line 57
    sget-object v0, Lcom/laiwang/protocol/android/LWP$Action;->TOKEN_REQUIRED:Lcom/laiwang/protocol/android/LWP$Action;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/LWP;->send(Lcom/laiwang/protocol/android/LWP$Action;Landroid/os/Bundle;)V

    .line 58
    return-void
.end method

.method public vhost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/laiwang/protocol/android/ExtensionWrap;->extension:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/Extension;->vhost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
