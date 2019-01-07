.class public final Lgew;
.super Lgeu;
.source "SpaceRenameDentryPresenter.java"


# instance fields
.field final c:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final d:Z

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lget$b;Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameDentryArgs;)V
    .locals 2
    .param p1, "view"    # Lget$b;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "args"    # Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameDentryArgs;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lgeu;-><init>(Lget$b;Landroid/content/Context;)V

    .line 34
    invoke-static {p3}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameDentryArgs;->fix(Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameDentryArgs;)Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameDentryArgs;

    move-result-object p3

    .line 35
    iget-object v0, p3, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameDentryArgs;->dentry:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object v0, p0, Lgew;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 36
    iget-object v0, p0, Lgew;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgew;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "folder"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lgew;->d:Z

    .line 37
    iget-object v0, p0, Lgew;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgew;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lgew;->e:Ljava/lang/String;

    .line 38
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lgew;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 2
    .param p0, "x0"    # Lgew;
    .param p1, "x1"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 25
    .line 1145
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alibaba.dingtalk.space.rename"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1146
    const-string/jumbo v1, "dentry_model"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1147
    iget-object v1, p0, Lgew;->b:Landroid/content/Context;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 25
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 42
    iget-object v0, p0, Lgew;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-nez v0, :cond_1

    .line 43
    invoke-virtual {p0}, Lgew;->b()V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    iget-boolean v0, p0, Lgew;->d:Z

    if-eqz v0, :cond_2

    .line 1055
    iget-object v0, p0, Lgew;->a:Lget$b;

    iget-object v1, p0, Lgew;->b:Landroid/content/Context;

    sget v2, Lfzs$h;->dt_cspace_co_folder_rename:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lget$b;->a(Ljava/lang/String;)V

    .line 1056
    iget-object v0, p0, Lgew;->a:Lget$b;

    iget-object v1, p0, Lgew;->b:Landroid/content/Context;

    sget v2, Lfzs$h;->cspace_create_folder_hint:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lget$b;->c(Ljava/lang/String;)V

    .line 1057
    iget-object v0, p0, Lgew;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1060
    iget-object v0, p0, Lgew;->a:Lget$b;

    iget-object v1, p0, Lgew;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Lget$b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1064
    :cond_2
    iget-object v0, p0, Lgew;->a:Lget$b;

    iget-object v1, p0, Lgew;->b:Landroid/content/Context;

    sget v2, Lfzs$h;->dt_cspace_file_rename:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lget$b;->a(Ljava/lang/String;)V

    .line 1065
    iget-object v0, p0, Lgew;->a:Lget$b;

    iget-object v1, p0, Lgew;->b:Landroid/content/Context;

    sget v2, Lfzs$h;->cspace_create_file_hint:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lget$b;->c(Ljava/lang/String;)V

    .line 1066
    iget-object v0, p0, Lgew;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1069
    iget-object v0, p0, Lgew;->e:Ljava/lang/String;

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1070
    iget-object v1, p0, Lgew;->a:Lget$b;

    if-gez v0, :cond_3

    iget-object v0, p0, Lgew;->e:Ljava/lang/String;

    :goto_1
    invoke-interface {v1, v0}, Lget$b;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lgew;->e:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lgew;->a:Lget$b;

    const-string/jumbo v2, ""

    iget-object v3, p0, Lgew;->b:Landroid/content/Context;

    sget v4, Lfzs$h;->dt_cspace_empty_name_tip:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lget$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-boolean v1, p0, Lgew;->d:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lgew;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 81
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "."

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lgew;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 83
    :cond_1
    iget-object v1, p0, Lgew;->e:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    iget-object v1, p0, Lgew;->a:Lget$b;

    invoke-interface {v1}, Lget$b;->g()V

    goto :goto_0

    .line 88
    :cond_2
    iget-object v1, p0, Lgew;->b:Landroid/content/Context;

    invoke-static {v1}, Lcms;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 89
    iget-object v1, p0, Lgew;->a:Lget$b;

    const-string/jumbo v2, ""

    iget-object v3, p0, Lgew;->b:Landroid/content/Context;

    sget v4, Lfzs$h;->network_error:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lget$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_3
    iget-object v1, p0, Lgew;->a:Lget$b;

    invoke-interface {v1}, Lget$b;->b()V

    .line 94
    iget-object v1, p0, Lgew;->a:Lget$b;

    invoke-interface {v1, v4}, Lget$b;->a(Z)V

    .line 95
    new-instance v0, Lgew$1;

    invoke-direct {v0, p0}, Lgew$1;-><init>(Lgew;)V

    .line 140
    .local v0, "listener":Lcma;, "Lcma<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    const-class v1, Lcma;

    iget-object v2, p0, Lgew;->a:Lget$b;

    invoke-interface {v2}, Lget$b;->e()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;, "Lcma<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    check-cast v0, Lcma;

    .line 141
    .restart local v0    # "listener":Lcma;, "Lcma<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    iget-object v2, p0, Lgew;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1, v2, p1, v0}, Lgon;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method
