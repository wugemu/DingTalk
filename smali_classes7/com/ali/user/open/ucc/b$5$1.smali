.class Lcom/ali/user/open/ucc/b$5$1;
.super Ljava/lang/Object;
.source "UccBindPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/ucc/b$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/user/open/ucc/b$5;


# direct methods
.method constructor <init>(Lcom/ali/user/open/ucc/b$5;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/ali/user/open/ucc/b$5$1;->a:Lcom/ali/user/open/ucc/b$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 455
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$5$1;->a:Lcom/ali/user/open/ucc/b$5;

    iget-object v0, v0, Lcom/ali/user/open/ucc/b$5;->c:Lcom/ali/user/open/core/callback/MemberCallback;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lcom/ali/user/open/core/callback/MemberCallback;->onSuccess(Ljava/lang/Object;)V

    .line 456
    return-void
.end method
