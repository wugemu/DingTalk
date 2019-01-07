.class final Lger$1;
.super Ljava/lang/Object;
.source "SpaceCreateFilePresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lger;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lger;


# direct methods
.method constructor <init>(Lger;)V
    .locals 0
    .param p1, "this$0"    # Lger;

    .prologue
    .line 143
    iput-object p1, p0, Lger$1;->a:Lger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 143
    check-cast p1, Ljava/lang/String;

    .line 1146
    iget-object v0, p0, Lger$1;->a:Lger;

    iget-object v0, v0, Lger;->a:Lget$b;

    invoke-interface {v0}, Lget$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1151
    iget-object v0, p0, Lger$1;->a:Lger;

    iget-object v0, v0, Lger;->a:Lget$b;

    invoke-interface {v0}, Lget$b;->H_()V

    .line 1152
    iget-object v0, p0, Lger$1;->a:Lger;

    iget-object v0, v0, Lger;->a:Lget$b;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lger$1;->a:Lger;

    iget-object v2, v2, Lger;->b:Landroid/content/Context;

    sget v3, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lget$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    iget-object v0, p0, Lger$1;->a:Lger;

    iget-object v0, v0, Lger;->a:Lget$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lget$b;->a(Z)V

    .line 1154
    :cond_0
    :goto_0
    return-void

    .line 1157
    :cond_1
    iget-object v0, p0, Lger$1;->a:Lger;

    invoke-static {v0, p1}, Lger;->a(Lger;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 166
    iget-object v0, p0, Lger$1;->a:Lger;

    iget-object v0, v0, Lger;->a:Lget$b;

    invoke-interface {v0}, Lget$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lger$1;->a:Lger;

    iget-object v0, v0, Lger;->a:Lget$b;

    invoke-interface {v0}, Lget$b;->H_()V

    .line 170
    iget-object v0, p0, Lger$1;->a:Lger;

    iget-object v0, v0, Lger;->a:Lget$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lget$b;->a(Z)V

    .line 172
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "RESULT_NULL"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    :cond_1
    iget-object v0, p0, Lger$1;->a:Lger;

    iget-object v0, v0, Lger;->a:Lget$b;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lger$1;->a:Lger;

    iget-object v2, v2, Lger;->b:Landroid/content/Context;

    sget v3, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lget$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_2
    iget-object v0, p0, Lger$1;->a:Lger;

    iget-object v0, v0, Lger;->a:Lget$b;

    invoke-interface {v0, p1, p2}, Lget$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 162
    return-void
.end method
