.class Lcom/ali/user/open/ucc/UccServiceImpl$4;
.super Ljava/lang/Object;
.source "UccServiceImpl.java"

# interfaces
.implements Lcom/ali/user/open/core/callback/MemberCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/ucc/UccServiceImpl;->unbind(Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ali/user/open/core/callback/MemberCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ali/user/open/ucc/UccCallback;

.field final synthetic c:Lcom/ali/user/open/ucc/UccServiceImpl;


# direct methods
.method constructor <init>(Lcom/ali/user/open/ucc/UccServiceImpl;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/ali/user/open/ucc/UccServiceImpl$4;->c:Lcom/ali/user/open/ucc/UccServiceImpl;

    iput-object p2, p0, Lcom/ali/user/open/ucc/UccServiceImpl$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ali/user/open/ucc/UccServiceImpl$4;->b:Lcom/ali/user/open/ucc/UccCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 198
    new-instance v0, Lcom/ali/user/open/ucc/model/BindParams;

    invoke-direct {v0}, Lcom/ali/user/open/ucc/model/BindParams;-><init>()V

    .line 199
    invoke-static {}, Lcom/ali/user/open/core/AliMemberSDK;->getMasterSite()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ali/user/open/ucc/model/BindParams;->site:Ljava/lang/String;

    .line 200
    iget-object v1, p0, Lcom/ali/user/open/ucc/UccServiceImpl$4;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/open/ucc/model/BindParams;->bindSite:Ljava/lang/String;

    .line 201
    iput-object p1, v0, Lcom/ali/user/open/ucc/model/BindParams;->userToken:Ljava/lang/String;

    .line 202
    iget-object v1, p0, Lcom/ali/user/open/ucc/UccServiceImpl$4;->c:Lcom/ali/user/open/ucc/UccServiceImpl;

    iget-object v2, p0, Lcom/ali/user/open/ucc/UccServiceImpl$4;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/ali/user/open/ucc/UccServiceImpl$4;->b:Lcom/ali/user/open/ucc/UccCallback;

    invoke-static {v1, v0, v2, v3}, Lcom/ali/user/open/ucc/UccServiceImpl;->a(Lcom/ali/user/open/ucc/UccServiceImpl;Lcom/ali/user/open/ucc/model/BindParams;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V

    .line 203
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 207
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl$4;->b:Lcom/ali/user/open/ucc/UccCallback;

    iget-object v1, p0, Lcom/ali/user/open/ucc/UccServiceImpl$4;->a:Ljava/lang/String;

    const/16 v2, 0x3ec

    const-string/jumbo v3, "userToken is null"

    invoke-interface {v0, v1, v2, v3}, Lcom/ali/user/open/ucc/UccCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    .line 208
    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 195
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ali/user/open/ucc/UccServiceImpl$4;->a(Ljava/lang/String;)V

    return-void
.end method
