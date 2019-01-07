.class Lcom/ali/user/open/ucc/b$2$2;
.super Ljava/lang/Object;
.source "UccBindPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/ucc/b$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/user/open/ucc/b$2;


# direct methods
.method constructor <init>(Lcom/ali/user/open/ucc/b$2;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/ali/user/open/ucc/b$2$2;->a:Lcom/ali/user/open/ucc/b$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 148
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$2$2;->a:Lcom/ali/user/open/ucc/b$2;

    iget-object v0, v0, Lcom/ali/user/open/ucc/b$2;->c:Lcom/ali/user/open/ucc/UccCallback;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$2$2;->a:Lcom/ali/user/open/ucc/b$2;

    iget-object v0, v0, Lcom/ali/user/open/ucc/b$2;->c:Lcom/ali/user/open/ucc/UccCallback;

    iget-object v1, p0, Lcom/ali/user/open/ucc/b$2$2;->a:Lcom/ali/user/open/ucc/b$2;

    iget-object v1, v1, Lcom/ali/user/open/ucc/b$2;->d:Ljava/lang/String;

    const/16 v2, 0x3ee

    const-string/jumbo v3, "\u7528\u6237\u53d6\u6d88\u6362\u7ed1"

    invoke-interface {v0, v1, v2, v3}, Lcom/ali/user/open/ucc/UccCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    .line 151
    :cond_0
    return-void
.end method
