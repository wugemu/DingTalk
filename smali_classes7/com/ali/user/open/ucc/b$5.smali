.class Lcom/ali/user/open/ucc/b$5;
.super Ljava/lang/Object;
.source "UccBindPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/ucc/b;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/core/callback/MemberCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ali/user/open/core/callback/MemberCallback;

.field final synthetic d:Lcom/ali/user/open/ucc/b;


# direct methods
.method constructor <init>(Lcom/ali/user/open/ucc/b;Landroid/app/Activity;Ljava/lang/String;Lcom/ali/user/open/core/callback/MemberCallback;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lcom/ali/user/open/ucc/b$5;->d:Lcom/ali/user/open/ucc/b;

    iput-object p2, p0, Lcom/ali/user/open/ucc/b$5;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ali/user/open/ucc/b$5;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/ali/user/open/ucc/b$5;->c:Lcom/ali/user/open/core/callback/MemberCallback;

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
    .line 450
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/ali/user/open/ucc/b$5;->a:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/ali/user/open/ucc/b$5;->b:Ljava/lang/String;

    .line 451
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u4eb2\uff0c\u60a8\u7684\u624b\u673a\u7f51\u7edc\u4e0d\u592a\u987a\u7545\u5594~"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u6211\u77e5\u9053\u4e86"

    new-instance v2, Lcom/ali/user/open/ucc/b$5$1;

    invoke-direct {v2, p0}, Lcom/ali/user/open/ucc/b$5$1;-><init>(Lcom/ali/user/open/ucc/b$5;)V

    .line 452
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 458
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 459
    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$5;->b:Ljava/lang/String;

    goto :goto_0
.end method
