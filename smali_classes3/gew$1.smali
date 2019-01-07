.class final Lgew$1;
.super Ljava/lang/Object;
.source "SpaceRenameDentryPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgew;->a(Ljava/lang/String;)V
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
.field final synthetic a:Lgew;


# direct methods
.method constructor <init>(Lgew;)V
    .locals 0
    .param p1, "this$0"    # Lgew;

    .prologue
    .line 95
    iput-object p1, p0, Lgew$1;->a:Lgew;

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
    .line 95
    check-cast p1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1098
    iget-object v0, p0, Lgew$1;->a:Lgew;

    iget-object v0, v0, Lgew;->a:Lget$b;

    invoke-interface {v0}, Lget$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1101
    iget-object v0, p0, Lgew$1;->a:Lgew;

    iget-object v0, v0, Lgew;->a:Lget$b;

    invoke-interface {v0}, Lget$b;->H_()V

    .line 1103
    if-nez p1, :cond_1

    .line 1104
    iget-object v0, p0, Lgew$1;->a:Lgew;

    iget-object v0, v0, Lgew;->a:Lget$b;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lgew$1;->a:Lgew;

    iget-object v2, v2, Lgew;->b:Landroid/content/Context;

    sget v3, Lfzs$h;->cspace_rename_error:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lget$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    :cond_0
    :goto_0
    return-void

    .line 1108
    :cond_1
    iget-object v0, p0, Lgew$1;->a:Lgew;

    .line 2025
    iget-object v0, v0, Lgew;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1108
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setName(Ljava/lang/String;)V

    .line 1109
    iget-object v0, p0, Lgew$1;->a:Lgew;

    .line 3025
    iget-object v0, v0, Lgew;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1109
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPath(Ljava/lang/String;)V

    .line 1110
    iget-object v0, p0, Lgew$1;->a:Lgew;

    iget-object v1, p0, Lgew$1;->a:Lgew;

    .line 4025
    iget-object v1, v1, Lgew;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1110
    invoke-static {v0, v1}, Lgew;->a(Lgew;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 1111
    iget-object v0, p0, Lgew$1;->a:Lgew;

    iget-object v0, v0, Lgew;->a:Lget$b;

    invoke-interface {v0}, Lget$b;->g()V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 120
    iget-object v1, p0, Lgew$1;->a:Lgew;

    iget-object v1, v1, Lgew;->a:Lget$b;

    invoke-interface {v1}, Lget$b;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v1, p0, Lgew$1;->a:Lgew;

    iget-object v1, v1, Lgew;->a:Lget$b;

    invoke-interface {v1}, Lget$b;->H_()V

    .line 124
    iget-object v1, p0, Lgew$1;->a:Lgew;

    iget-object v1, v1, Lgew;->a:Lget$b;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lget$b;->a(Z)V

    .line 127
    const-string/jumbo v1, "13023003"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "13023004"

    .line 128
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 129
    :cond_1
    iget-object v1, p0, Lgew$1;->a:Lgew;

    iget-object v2, v1, Lgew;->b:Landroid/content/Context;

    iget-object v1, p0, Lgew$1;->a:Lgew;

    .line 1025
    iget-boolean v1, v1, Lgew;->d:Z

    .line 129
    if-eqz v1, :cond_2

    sget v1, Lfzs$h;->cspace_rename_folder_exist:I

    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "errorDesc":Ljava/lang/String;
    :goto_2
    iget-object v1, p0, Lgew$1;->a:Lgew;

    iget-object v1, v1, Lgew;->a:Lget$b;

    const-string/jumbo v2, ""

    invoke-interface {v1, v2, v0}, Lget$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 129
    .end local v0    # "errorDesc":Ljava/lang/String;
    :cond_2
    sget v1, Lfzs$h;->cspace_rename_file_exist:I

    goto :goto_1

    .line 133
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    move-object v0, p2

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lgew$1;->a:Lgew;

    iget-object v1, v1, Lgew;->b:Landroid/content/Context;

    sget v2, Lfzs$h;->cspace_rename_error:I

    .line 134
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 116
    return-void
.end method
