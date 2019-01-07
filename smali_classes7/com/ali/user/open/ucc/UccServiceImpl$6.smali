.class Lcom/ali/user/open/ucc/UccServiceImpl$6;
.super Ljava/lang/Object;
.source "UccServiceImpl.java"

# interfaces
.implements Lcom/ali/user/open/core/callback/MemberCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/ucc/UccServiceImpl;->trustLogin(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V
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

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/ali/user/open/ucc/UccCallback;

.field final synthetic e:Lcom/ali/user/open/ucc/UccServiceImpl;


# direct methods
.method constructor <init>(Lcom/ali/user/open/ucc/UccServiceImpl;Ljava/lang/String;Ljava/util/Map;Landroid/app/Activity;Lcom/ali/user/open/ucc/UccCallback;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/ali/user/open/ucc/UccServiceImpl$6;->e:Lcom/ali/user/open/ucc/UccServiceImpl;

    iput-object p2, p0, Lcom/ali/user/open/ucc/UccServiceImpl$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ali/user/open/ucc/UccServiceImpl$6;->b:Ljava/util/Map;

    iput-object p4, p0, Lcom/ali/user/open/ucc/UccServiceImpl$6;->c:Landroid/app/Activity;

    iput-object p5, p0, Lcom/ali/user/open/ucc/UccServiceImpl$6;->d:Lcom/ali/user/open/ucc/UccCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 266
    new-instance v2, Lcom/ali/user/open/ucc/model/BindParams;

    invoke-direct {v2}, Lcom/ali/user/open/ucc/model/BindParams;-><init>()V

    .line 267
    invoke-static {}, Lcom/ali/user/open/core/AliMemberSDK;->getMasterSite()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/open/ucc/model/BindParams;->site:Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl$6;->a:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/open/ucc/model/BindParams;->bindSite:Ljava/lang/String;

    .line 269
    iput-object p1, v2, Lcom/ali/user/open/ucc/model/BindParams;->userToken:Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl$6;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl$6;->b:Ljava/util/Map;

    const-string/jumbo v1, "scene"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl$6;->b:Ljava/util/Map;

    const-string/jumbo v1, "scene"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/open/ucc/model/BindParams;->scene:Ljava/lang/String;

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl$6;->e:Lcom/ali/user/open/ucc/UccServiceImpl;

    iget-object v1, p0, Lcom/ali/user/open/ucc/UccServiceImpl$6;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/ali/user/open/ucc/UccServiceImpl$6;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/ali/user/open/ucc/UccServiceImpl$6;->b:Ljava/util/Map;

    iget-object v5, p0, Lcom/ali/user/open/ucc/UccServiceImpl$6;->d:Lcom/ali/user/open/ucc/UccCallback;

    invoke-static/range {v0 .. v5}, Lcom/ali/user/open/ucc/UccServiceImpl;->a(Lcom/ali/user/open/ucc/UccServiceImpl;Landroid/app/Activity;Lcom/ali/user/open/ucc/model/BindParams;Ljava/lang/String;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V

    .line 275
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 279
    iget-object v0, p0, Lcom/ali/user/open/ucc/UccServiceImpl$6;->d:Lcom/ali/user/open/ucc/UccCallback;

    iget-object v1, p0, Lcom/ali/user/open/ucc/UccServiceImpl$6;->a:Ljava/lang/String;

    const/16 v2, 0x3ec

    invoke-interface {v0, v1, v2, p2}, Lcom/ali/user/open/ucc/UccCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    .line 280
    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 263
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ali/user/open/ucc/UccServiceImpl$6;->a(Ljava/lang/String;)V

    return-void
.end method
