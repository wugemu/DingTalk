.class Lcom/ali/user/open/ucc/b$3$1;
.super Ljava/lang/Object;
.source "UccBindPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/ucc/b$3;->onSuccess(Lcom/ali/user/open/core/model/RpcResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/user/open/core/model/RpcResponse;

.field final synthetic b:Lcom/ali/user/open/ucc/b$3;


# direct methods
.method constructor <init>(Lcom/ali/user/open/ucc/b$3;Lcom/ali/user/open/core/model/RpcResponse;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/ali/user/open/ucc/b$3$1;->b:Lcom/ali/user/open/ucc/b$3;

    iput-object p2, p0, Lcom/ali/user/open/ucc/b$3$1;->a:Lcom/ali/user/open/core/model/RpcResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 176
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$3$1;->b:Lcom/ali/user/open/ucc/b$3;

    iget-object v0, v0, Lcom/ali/user/open/ucc/b$3;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/open/ucc/b$3$1;->a:Lcom/ali/user/open/core/model/RpcResponse;

    iget-object v1, v1, Lcom/ali/user/open/core/model/RpcResponse;->message:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 177
    return-void
.end method
