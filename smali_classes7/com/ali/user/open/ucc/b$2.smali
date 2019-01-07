.class Lcom/ali/user/open/ucc/b$2;
.super Ljava/lang/Object;
.source "UccBindPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/ucc/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ali/user/open/ucc/UccCallback;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/ali/user/open/ucc/b;


# direct methods
.method constructor <init>(Lcom/ali/user/open/ucc/b;Landroid/content/Context;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/ali/user/open/ucc/b$2;->g:Lcom/ali/user/open/ucc/b;

    iput-object p2, p0, Lcom/ali/user/open/ucc/b$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/ali/user/open/ucc/b$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/ali/user/open/ucc/b$2;->c:Lcom/ali/user/open/ucc/UccCallback;

    iput-object p5, p0, Lcom/ali/user/open/ucc/b$2;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/ali/user/open/ucc/b$2;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/ali/user/open/ucc/b$2;->f:Ljava/lang/String;

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
    .line 143
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ali/user/open/ucc/b$2;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/ali/user/open/ucc/b$2;->b:Ljava/lang/String;

    .line 144
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u53d6\u6d88"

    new-instance v2, Lcom/ali/user/open/ucc/b$2$2;

    invoke-direct {v2, p0}, Lcom/ali/user/open/ucc/b$2$2;-><init>(Lcom/ali/user/open/ucc/b$2;)V

    .line 145
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u7ee7\u7eed\u7ed1\u5b9a"

    new-instance v2, Lcom/ali/user/open/ucc/b$2$1;

    invoke-direct {v2, p0}, Lcom/ali/user/open/ucc/b$2$1;-><init>(Lcom/ali/user/open/ucc/b$2;)V

    .line 153
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 160
    return-void
.end method
