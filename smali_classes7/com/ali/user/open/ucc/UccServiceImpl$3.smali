.class Lcom/ali/user/open/ucc/UccServiceImpl$3;
.super Ljava/lang/Object;
.source "UccServiceImpl.java"

# interfaces
.implements Lcom/ali/user/open/core/callback/MemberCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/ucc/UccServiceImpl;->bind(Ljava/lang/String;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V
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

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/ali/user/open/ucc/UccCallback;

.field final synthetic d:Lcom/ali/user/open/ucc/UccServiceImpl;


# direct methods
.method constructor <init>(Lcom/ali/user/open/ucc/UccServiceImpl;Ljava/lang/String;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/ali/user/open/ucc/UccServiceImpl$3;->d:Lcom/ali/user/open/ucc/UccServiceImpl;

    iput-object p2, p0, Lcom/ali/user/open/ucc/UccServiceImpl$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ali/user/open/ucc/UccServiceImpl$3;->b:Ljava/util/Map;

    iput-object p4, p0, Lcom/ali/user/open/ucc/UccServiceImpl$3;->c:Lcom/ali/user/open/ucc/UccCallback;

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
    .line 157
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl$3;->d:Lcom/ali/user/open/ucc/UccServiceImpl;

    iget-object v1, p0, Lcom/ali/user/open/ucc/UccServiceImpl$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/ali/user/open/ucc/UccServiceImpl$3;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/ali/user/open/ucc/UccServiceImpl$3;->c:Lcom/ali/user/open/ucc/UccCallback;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/ali/user/open/ucc/UccServiceImpl;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V

    .line 158
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 162
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl$3;->c:Lcom/ali/user/open/ucc/UccCallback;

    iget-object v1, p0, Lcom/ali/user/open/ucc/UccServiceImpl$3;->a:Ljava/lang/String;

    const/16 v2, 0x3ec

    const-string/jumbo v3, "userToken is null"

    invoke-interface {v0, v1, v2, v3}, Lcom/ali/user/open/ucc/UccCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    .line 163
    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 154
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ali/user/open/ucc/UccServiceImpl$3;->a(Ljava/lang/String;)V

    return-void
.end method
