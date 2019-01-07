.class Lcom/ali/user/open/oauth/alipay3/b$1$1;
.super Ljava/lang/Object;
.source "AlipayRpcPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/oauth/alipay3/b$1;->onSuccess(Lcom/ali/user/open/core/model/RpcResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ali/user/open/oauth/alipay3/b$1;


# direct methods
.method constructor <init>(Lcom/ali/user/open/oauth/alipay3/b$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/ali/user/open/oauth/alipay3/b$1$1;->b:Lcom/ali/user/open/oauth/alipay3/b$1;

    iput-object p2, p0, Lcom/ali/user/open/oauth/alipay3/b$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ali/user/open/oauth/alipay3/b$1$1;->b:Lcom/ali/user/open/oauth/alipay3/b$1;

    iget-object v0, v0, Lcom/ali/user/open/oauth/alipay3/b$1;->a:Lcom/ali/user/open/oauth/alipay3/c;

    iget-object v1, p0, Lcom/ali/user/open/oauth/alipay3/b$1$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ali/user/open/oauth/alipay3/c;->a(Ljava/lang/String;)V

    .line 35
    return-void
.end method
