.class public Lcom/ali/user/open/ucc/util/MtopRemoteLogin;
.super Ljava/lang/Object;
.source "MtopRemoteLogin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static login(Lcom/ali/user/open/callback/LoginCallback;)V
    .locals 4

    .prologue
    .line 15
    const-class v0, Lcom/ali/user/open/ucc/UccService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/ucc/UccService;

    const-string/jumbo v1, "taobao"

    const/4 v2, 0x0

    new-instance v3, Lcom/ali/user/open/ucc/util/MtopRemoteLogin$1;

    invoke-direct {v3, p0}, Lcom/ali/user/open/ucc/util/MtopRemoteLogin$1;-><init>(Lcom/ali/user/open/callback/LoginCallback;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/ali/user/open/ucc/UccService;->trustLogin(Ljava/lang/String;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V

    .line 30
    return-void
.end method
