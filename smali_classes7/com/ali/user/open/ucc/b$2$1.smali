.class Lcom/ali/user/open/ucc/b$2$1;
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
    .line 153
    iput-object p1, p0, Lcom/ali/user/open/ucc/b$2$1;->a:Lcom/ali/user/open/ucc/b$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 156
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$2$1;->a:Lcom/ali/user/open/ucc/b$2;

    iget-object v0, v0, Lcom/ali/user/open/ucc/b$2;->g:Lcom/ali/user/open/ucc/b;

    iget-object v1, p0, Lcom/ali/user/open/ucc/b$2$1;->a:Lcom/ali/user/open/ucc/b$2;

    iget-object v1, v1, Lcom/ali/user/open/ucc/b$2;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/ali/user/open/ucc/b$2$1;->a:Lcom/ali/user/open/ucc/b$2;

    iget-object v2, v2, Lcom/ali/user/open/ucc/b$2;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/ali/user/open/ucc/b$2$1;->a:Lcom/ali/user/open/ucc/b$2;

    iget-object v3, v3, Lcom/ali/user/open/ucc/b$2;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/ali/user/open/ucc/b$2$1;->a:Lcom/ali/user/open/ucc/b$2;

    iget-object v4, v4, Lcom/ali/user/open/ucc/b$2;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/ali/user/open/ucc/b$2$1;->a:Lcom/ali/user/open/ucc/b$2;

    iget-object v5, v5, Lcom/ali/user/open/ucc/b$2;->c:Lcom/ali/user/open/ucc/UccCallback;

    invoke-static/range {v0 .. v5}, Lcom/ali/user/open/ucc/b;->a(Lcom/ali/user/open/ucc/b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V

    .line 157
    return-void
.end method
