.class public final Lges;
.super Lgeu;
.source "SpaceCreateFolderPresenter.java"


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lget$b;Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;)V
    .locals 1
    .param p1, "view"    # Lget$b;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "args"    # Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lgeu;-><init>(Lget$b;Landroid/content/Context;)V

    .line 34
    invoke-static {p3}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;->fix(Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;)Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;

    move-result-object p3

    .line 35
    iget-object v0, p3, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;->spaceId:Ljava/lang/String;

    iput-object v0, p0, Lges;->c:Ljava/lang/String;

    .line 36
    iget-object v0, p3, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;->parentPath:Ljava/lang/String;

    iput-object v0, p0, Lges;->d:Ljava/lang/String;

    .line 37
    iget-object v0, p3, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;->authFlag:Ljava/lang/String;

    iput-object v0, p0, Lges;->e:Ljava/lang/String;

    .line 38
    return-void
.end method

.method static synthetic a(Lges;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 2
    .param p0, "x0"    # Lges;
    .param p1, "x1"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 26
    .line 2116
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alibaba.dingtalk.space.file.create"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2117
    const-string/jumbo v1, "dentry_model"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2118
    iget-object v1, p0, Lges;->b:Landroid/content/Context;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 26
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 42
    iget-object v0, p0, Lges;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lges;->b()V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lges;->a:Lget$b;

    iget-object v1, p0, Lges;->b:Landroid/content/Context;

    sget v2, Lfzs$h;->space_op_create_folder:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lget$b;->a(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lges;->a:Lget$b;

    iget-object v1, p0, Lges;->b:Landroid/content/Context;

    sget v2, Lfzs$h;->cspace_create_folder_hint:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lget$b;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lges;->a:Lget$b;

    const-string/jumbo v1, ""

    iget-object v4, p0, Lges;->b:Landroid/content/Context;

    sget v5, Lfzs$h;->cspace_create_folder_empty:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Lget$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lges;->b:Landroid/content/Context;

    invoke-static {v0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    iget-object v0, p0, Lges;->a:Lget$b;

    const-string/jumbo v1, ""

    iget-object v4, p0, Lges;->b:Landroid/content/Context;

    sget v5, Lfzs$h;->network_error:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Lget$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lges;->a:Lget$b;

    invoke-interface {v0}, Lget$b;->b()V

    .line 63
    iget-object v0, p0, Lges;->a:Lget$b;

    invoke-interface {v0, v5}, Lget$b;->a(Z)V

    .line 64
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    iget-object v0, p0, Lges;->d:Ljava/lang/String;

    aput-object v0, v1, v5

    const/4 v4, 0x1

    iget-object v0, p0, Lges;->d:Ljava/lang/String;

    const-string/jumbo v6, "/"

    .line 65
    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, ""

    :goto_1
    aput-object v0, v1, v4

    const/4 v0, 0x2

    aput-object p1, v1, v0

    const/4 v0, 0x3

    const-string/jumbo v4, "/"

    aput-object v4, v1, v0

    .line 64
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "folderPath":Ljava/lang/String;
    new-instance v3, Lges$1;

    invoke-direct {v3, p0}, Lges$1;-><init>(Lges;)V

    .line 111
    .local v3, "callback":Lcma;, "Lcma<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    const-class v0, Lcma;

    iget-object v1, p0, Lges;->a:Lget$b;

    invoke-interface {v1}, Lget$b;->e()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "callback":Lcma;, "Lcma<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    check-cast v3, Lcma;

    .line 112
    .restart local v3    # "callback":Lcma;, "Lcma<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v0

    iget-object v1, p0, Lges;->c:Ljava/lang/String;

    iget-object v4, p0, Lges;->e:Ljava/lang/String;

    .line 1688
    invoke-virtual/range {v0 .. v5}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;Lcma;Ljava/lang/String;I)V

    goto :goto_0

    .line 65
    .end local v2    # "folderPath":Ljava/lang/String;
    .end local v3    # "callback":Lcma;, "Lcma<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :cond_2
    const-string/jumbo v0, "/"

    goto :goto_1
.end method
