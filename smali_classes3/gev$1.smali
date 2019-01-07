.class final Lgev$1;
.super Ljava/lang/Object;
.source "SpaceRenameCoFolderPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgev;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lgev;


# direct methods
.method constructor <init>(Lgev;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lgev;

    .prologue
    .line 67
    iput-object p1, p0, Lgev$1;->b:Lgev;

    iput-object p2, p0, Lgev$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 67
    .line 1070
    iget-object v0, p0, Lgev$1;->b:Lgev;

    iget-object v0, v0, Lgev;->a:Lget$b;

    invoke-interface {v0}, Lget$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Lgev$1;->b:Lgev;

    iget-object v0, v0, Lgev;->a:Lget$b;

    invoke-interface {v0}, Lget$b;->H_()V

    .line 1075
    iget-object v0, p0, Lgev$1;->b:Lgev;

    iget-object v1, p0, Lgev$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lgev;->a(Lgev;Ljava/lang/String;)V

    .line 1076
    iget-object v0, p0, Lgev$1;->b:Lgev;

    iget-object v0, v0, Lgev;->a:Lget$b;

    invoke-interface {v0}, Lget$b;->g()V

    .line 67
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 85
    iget-object v0, p0, Lgev$1;->b:Lgev;

    iget-object v0, v0, Lgev;->a:Lget$b;

    invoke-interface {v0}, Lget$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lgev$1;->b:Lgev;

    iget-object v0, v0, Lgev;->a:Lget$b;

    invoke-interface {v0}, Lget$b;->H_()V

    .line 89
    iget-object v0, p0, Lgev$1;->b:Lgev;

    iget-object v0, v0, Lgev;->a:Lget$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lget$b;->a(Z)V

    .line 91
    iget-object v0, p0, Lgev$1;->b:Lgev;

    iget-object v1, v0, Lgev;->a:Lget$b;

    const-string/jumbo v2, ""

    const-string/jumbo v0, "13020005"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgev$1;->b:Lgev;

    iget-object v0, v0, Lgev;->b:Landroid/content/Context;

    sget v3, Lfzs$h;->dt_cspace_cf_rename_no_auth_tip:I

    .line 92
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    :goto_1
    invoke-interface {v1, v2, v0}, Lget$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Lgev$1;->b:Lgev;

    iget-object v0, v0, Lgev;->b:Landroid/content/Context;

    sget v3, Lfzs$h;->cspace_save_error:I

    .line 93
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 81
    return-void
.end method
