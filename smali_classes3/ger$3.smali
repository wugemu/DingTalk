.class final Lger$3;
.super Ljava/lang/Object;
.source "SpaceCreateFilePresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lger;->c()Lcma;
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
        "Lcom/alibaba/alimei/cspace/model/DentryModel;",
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
    .line 217
    iput-object p1, p0, Lger$3;->a:Lger;

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
    .line 217
    check-cast p1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1220
    iget-object v0, p0, Lger$3;->a:Lger;

    iget-object v0, v0, Lger;->a:Lget$b;

    invoke-interface {v0}, Lget$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1224
    if-nez p1, :cond_1

    .line 1225
    iget-object v0, p0, Lger$3;->a:Lger;

    iget-object v0, v0, Lger;->a:Lget$b;

    invoke-interface {v0}, Lget$b;->H_()V

    .line 1226
    iget-object v0, p0, Lger$3;->a:Lger;

    iget-object v0, v0, Lger;->a:Lget$b;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lger$3;->a:Lger;

    iget-object v2, v2, Lger;->b:Landroid/content/Context;

    sget v3, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lget$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    iget-object v0, p0, Lger$3;->a:Lger;

    iget-object v0, v0, Lger;->a:Lget$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lget$b;->a(Z)V

    .line 1245
    :cond_0
    :goto_0
    return-void

    .line 1231
    :cond_1
    iget-object v0, p0, Lger$3;->a:Lger;

    invoke-static {v0, p1}, Lger;->a(Lger;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 1233
    iget-object v0, p0, Lger$3;->a:Lger;

    invoke-static {v0}, Lger;->b(Lger;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1358
    invoke-static {}, Lcom/alibaba/android/dingtalk/doc/WEDocInterface;->a()Lcom/alibaba/android/dingtalk/doc/WEDocInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/doc/WEDocInterface;->c()Z

    move-result v0

    .line 1234
    if-eqz v0, :cond_2

    .line 1235
    iget-object v0, p0, Lger$3;->a:Lger;

    invoke-static {v0, p1}, Lger;->b(Lger;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    goto :goto_0

    .line 1237
    :cond_2
    iget-object v0, p0, Lger$3;->a:Lger;

    iget-object v0, v0, Lger;->a:Lget$b;

    invoke-interface {v0}, Lget$b;->H_()V

    .line 1238
    iget-object v0, p0, Lger$3;->a:Lger;

    iget-object v0, v0, Lger;->a:Lget$b;

    invoke-interface {v0}, Lget$b;->g()V

    goto :goto_0

    .line 1243
    :cond_3
    invoke-static {p1}, Lgpr;->f(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1244
    iget-object v0, p0, Lger$3;->a:Lger;

    invoke-static {v0, p1}, Lger;->b(Lger;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    goto :goto_0

    .line 1248
    :cond_4
    iget-object v0, p0, Lger$3;->a:Lger;

    iget-object v0, v0, Lger;->a:Lget$b;

    invoke-interface {v0}, Lget$b;->H_()V

    .line 1249
    iget-object v0, p0, Lger$3;->a:Lger;

    iget-object v0, v0, Lger;->a:Lget$b;

    invoke-interface {v0}, Lget$b;->g()V

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
    .line 258
    iget-object v0, p0, Lger$3;->a:Lger;

    iget-object v0, v0, Lger;->a:Lget$b;

    invoke-interface {v0}, Lget$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lger$3;->a:Lger;

    iget-object v0, v0, Lger;->a:Lget$b;

    invoke-interface {v0}, Lget$b;->H_()V

    .line 262
    iget-object v0, p0, Lger$3;->a:Lger;

    iget-object v0, v0, Lger;->a:Lget$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lget$b;->a(Z)V

    .line 264
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "RESULT_NULL"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    :cond_1
    iget-object v0, p0, Lger$3;->a:Lger;

    iget-object v0, v0, Lger;->a:Lget$b;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lger$3;->a:Lger;

    iget-object v2, v2, Lger;->b:Landroid/content/Context;

    sget v3, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lget$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 267
    :cond_2
    iget-object v0, p0, Lger$3;->a:Lger;

    iget-object v0, v0, Lger;->a:Lget$b;

    invoke-interface {v0, p1, p2}, Lget$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 254
    return-void
.end method
