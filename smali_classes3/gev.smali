.class public final Lgev;
.super Lgeu;
.source "SpaceRenameCoFolderPresenter.java"


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lget$b;Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameCoFolderArgs;)V
    .locals 1
    .param p1, "view"    # Lget$b;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "args"    # Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameCoFolderArgs;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lgeu;-><init>(Lget$b;Landroid/content/Context;)V

    .line 30
    invoke-static {p3}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameCoFolderArgs;->fix(Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameCoFolderArgs;)Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameCoFolderArgs;

    move-result-object p3

    .line 31
    iget-object v0, p3, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameCoFolderArgs;->coFolderConvId:Ljava/lang/String;

    iput-object v0, p0, Lgev;->c:Ljava/lang/String;

    .line 32
    iget-object v0, p3, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameCoFolderArgs;->coFolderName:Ljava/lang/String;

    iput-object v0, p0, Lgev;->d:Ljava/lang/String;

    .line 33
    return-void
.end method

.method static synthetic a(Lgev;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lgev;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    .line 5101
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alibaba.dingtalk.space.cooperation.folder.rename"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5102
    const-string/jumbo v1, "cooperation_folder_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5103
    const-string/jumbo v1, "cooperation_folder_cid"

    iget-object v2, p0, Lgev;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5104
    iget-object v1, p0, Lgev;->b:Landroid/content/Context;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 22
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 37
    iget-object v0, p0, Lgev;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lgev;->b()V

    .line 45
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lgev;->a:Lget$b;

    iget-object v1, p0, Lgev;->b:Landroid/content/Context;

    sget v2, Lfzs$h;->dt_cspace_co_folder_rename:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lget$b;->a(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lgev;->a:Lget$b;

    iget-object v1, p0, Lgev;->b:Landroid/content/Context;

    sget v2, Lfzs$h;->cspace_create_folder_hint:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lget$b;->c(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lgev;->a:Lget$b;

    iget-object v1, p0, Lgev;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lget$b;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 50
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "cspace_filelist_setting_rename_savename"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    iget-object v1, p0, Lgev;->a:Lget$b;

    const-string/jumbo v2, ""

    iget-object v3, p0, Lgev;->b:Landroid/content/Context;

    sget v4, Lfzs$h;->dt_cspace_empty_name_tip:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lget$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 4377
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-object v1, p0, Lgev;->d:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    iget-object v1, p0, Lgev;->a:Lget$b;

    invoke-interface {v1}, Lget$b;->g()V

    goto :goto_0

    .line 60
    :cond_2
    iget-object v1, p0, Lgev;->b:Landroid/content/Context;

    invoke-static {v1}, Lcms;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 61
    iget-object v1, p0, Lgev;->a:Lget$b;

    const-string/jumbo v2, ""

    iget-object v3, p0, Lgev;->b:Landroid/content/Context;

    sget v4, Lfzs$h;->network_error:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lget$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_3
    iget-object v1, p0, Lgev;->a:Lget$b;

    invoke-interface {v1}, Lget$b;->b()V

    .line 66
    iget-object v1, p0, Lgev;->a:Lget$b;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lget$b;->a(Z)V

    .line 67
    new-instance v0, Lgev$1;

    invoke-direct {v0, p0, p1}, Lgev$1;-><init>(Lgev;Ljava/lang/String;)V

    .line 96
    .local v0, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-class v1, Lcma;

    iget-object v2, p0, Lgev;->a:Lget$b;

    invoke-interface {v2}, Lget$b;->e()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    check-cast v0, Lcma;

    .line 97
    .restart local v0    # "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    iget-object v2, p0, Lgev;->c:Ljava/lang/String;

    .line 4364
    if-eqz v0, :cond_0

    .line 4367
    iget-object v3, v1, Lgon;->d:Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;

    if-nez v3, :cond_4

    .line 4368
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceRPC"

    const-string/jumbo v3, "modifyCoFolderName: mDpCoFolderService is null"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4370
    const-string/jumbo v1, "SERVICE_NULL"

    const-string/jumbo v2, "mDpCoFolderService is null"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4373
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4374
    :cond_5
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceRPC"

    const-string/jumbo v3, "modifyCoFolderName: coFolderConvId or coFolderName is empty"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4376
    const-string/jumbo v1, "INVALID_PARAM"

    const-string/jumbo v2, "coFolderConvId or coFolderName is empty"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4379
    :cond_6
    iget-object v3, v1, Lgon;->d:Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;

    new-instance v4, Lgon$64;

    invoke-direct {v4, v1, v0}, Lgon$64;-><init>(Lgon;Lcma;)V

    invoke-interface {v3, v2, p1, v4}, Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;->modifyFolderName(Ljava/lang/String;Ljava/lang/String;Liyv;)V

    goto/16 :goto_0
.end method
