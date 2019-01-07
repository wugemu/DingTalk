.class final Lges$1;
.super Ljava/lang/Object;
.source "SpaceCreateFolderPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lges;->a(Ljava/lang/String;)V
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
.field final synthetic a:Lges;


# direct methods
.method constructor <init>(Lges;)V
    .locals 0
    .param p1, "this$0"    # Lges;

    .prologue
    .line 67
    iput-object p1, p0, Lges$1;->a:Lges;

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
    .line 67
    check-cast p1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1070
    iget-object v0, p0, Lges$1;->a:Lges;

    iget-object v0, v0, Lges;->a:Lget$b;

    invoke-interface {v0}, Lget$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Lges$1;->a:Lges;

    iget-object v0, v0, Lges;->a:Lget$b;

    invoke-interface {v0}, Lget$b;->H_()V

    .line 1075
    if-nez p1, :cond_1

    .line 1076
    iget-object v0, p0, Lges$1;->a:Lges;

    iget-object v0, v0, Lges;->a:Lget$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lget$b;->a(Z)V

    .line 1077
    iget-object v0, p0, Lges$1;->a:Lges;

    iget-object v0, v0, Lges;->a:Lget$b;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lges$1;->a:Lges;

    iget-object v2, v2, Lges;->b:Landroid/content/Context;

    sget v3, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lget$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    :cond_0
    :goto_0
    return-void

    .line 1081
    :cond_1
    iget-object v0, p0, Lges$1;->a:Lges;

    invoke-static {v0, p1}, Lges;->a(Lges;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 1082
    iget-object v0, p0, Lges$1;->a:Lges;

    iget-object v0, v0, Lges;->a:Lget$b;

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
    .line 91
    iget-object v2, p0, Lges$1;->a:Lges;

    iget-object v2, v2, Lges;->a:Lget$b;

    invoke-interface {v2}, Lget$b;->d()Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v2, p0, Lges$1;->a:Lges;

    iget-object v2, v2, Lges;->a:Lget$b;

    invoke-interface {v2}, Lget$b;->H_()V

    .line 96
    iget-object v2, p0, Lges$1;->a:Lges;

    iget-object v2, v2, Lges;->a:Lget$b;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lget$b;->a(Z)V

    .line 98
    iget-object v2, p0, Lges$1;->a:Lges;

    iget-object v2, v2, Lges;->b:Landroid/content/Context;

    sget v3, Lfzs$h;->cspace_createfolder_error:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "errorDesc":Ljava/lang/String;
    const-string/jumbo v2, "13023003"

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    iget-object v2, p0, Lges$1;->a:Lges;

    iget-object v2, v2, Lges;->b:Landroid/content/Context;

    sget v3, Lfzs$h;->cspace_create_folder_name_same:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    :cond_1
    :goto_1
    iget-object v2, p0, Lges$1;->a:Lges;

    iget-object v2, v2, Lges;->a:Lget$b;

    const-string/jumbo v3, ""

    invoke-interface {v2, v3, v0}, Lget$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_2
    const/16 v2, 0xc

    invoke-static {v2, p1, p2}, Lggr;->a(ILjava/lang/String;Ljava/lang/String;)Lggs;

    move-result-object v1

    .line 104
    .local v1, "exception":Lggs;
    iget-object v2, v1, Lggs;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 105
    iget-object v0, v1, Lggs;->b:Ljava/lang/String;

    goto :goto_1
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 87
    return-void
.end method
