.class public Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;
.super Lcom/alibaba/alimei/framework/api/AbsApiImpl;
.source "ContactApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/contact/api/ContactApi;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/api/AbsApiImpl;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/alimei/restfulapi/data/contact/Department;)Lcom/alibaba/alimei/contact/model/DepartmentModel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/restfulapi/data/contact/Department;

    .prologue
    .line 55
    invoke-static {p0}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->buildDepartmentModel(Lcom/alibaba/alimei/restfulapi/data/contact/Department;)Lcom/alibaba/alimei/contact/model/DepartmentModel;

    move-result-object v0

    return-object v0
.end method

.method private static buildDepartmentModel(Lcom/alibaba/alimei/restfulapi/data/contact/Department;)Lcom/alibaba/alimei/contact/model/DepartmentModel;
    .locals 5
    .param p0, "department"    # Lcom/alibaba/alimei/restfulapi/data/contact/Department;

    .prologue
    .line 385
    if-nez p0, :cond_1

    .line 386
    const/4 v0, 0x0

    .line 404
    :cond_0
    return-object v0

    .line 388
    :cond_1
    new-instance v0, Lcom/alibaba/alimei/contact/model/DepartmentModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/contact/model/DepartmentModel;-><init>()V

    .line 389
    .local v0, "model":Lcom/alibaba/alimei/contact/model/DepartmentModel;
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/data/contact/Department;->getId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/alimei/contact/model/DepartmentModel;->serverId:Ljava/lang/String;

    .line 390
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/data/contact/Department;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/alimei/contact/model/DepartmentModel;->name:Ljava/lang/String;

    .line 392
    move-object v2, v0

    .line 393
    .local v2, "nextModel":Lcom/alibaba/alimei/contact/model/DepartmentModel;
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/data/contact/Department;->getParent()Lcom/alibaba/alimei/restfulapi/data/contact/Department;

    move-result-object v3

    .line 395
    .local v3, "nextParentDepartment":Lcom/alibaba/alimei/restfulapi/data/contact/Department;
    :goto_0
    if-eqz v3, :cond_0

    .line 396
    new-instance v1, Lcom/alibaba/alimei/contact/model/DepartmentModel;

    invoke-direct {v1}, Lcom/alibaba/alimei/contact/model/DepartmentModel;-><init>()V

    .line 397
    .local v1, "modelParent":Lcom/alibaba/alimei/contact/model/DepartmentModel;
    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/data/contact/Department;->getId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/alimei/contact/model/DepartmentModel;->serverId:Ljava/lang/String;

    .line 398
    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/data/contact/Department;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/alimei/contact/model/DepartmentModel;->name:Ljava/lang/String;

    .line 399
    iput-object v1, v2, Lcom/alibaba/alimei/contact/model/DepartmentModel;->parent:Lcom/alibaba/alimei/contact/model/DepartmentModel;

    .line 401
    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/data/contact/Department;->getParent()Lcom/alibaba/alimei/restfulapi/data/contact/Department;

    move-result-object v3

    .line 402
    move-object v2, v1

    .line 403
    goto :goto_0
.end method


# virtual methods
.method public addBlackUser(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 532
    .local p1, "emailList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/alibaba/alimei/contact/command/UpdateBlackContactCommand;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/alimei/contact/command/UpdateBlackContactCommand;-><init>(ILjava/util/List;)V

    .line 534
    .local v0, "command":Lcom/alibaba/alimei/contact/command/UpdateBlackContactCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/contact/command/UpdateBlackContactCommand;->executeCommand()V

    .line 535
    return-void
.end method

.method public deleteBlackUser(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 539
    .local p1, "emailList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/alibaba/alimei/contact/command/UpdateBlackContactCommand;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Lcom/alibaba/alimei/contact/command/UpdateBlackContactCommand;-><init>(ILjava/util/List;)V

    .line 541
    .local v0, "command":Lcom/alibaba/alimei/contact/command/UpdateBlackContactCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/contact/command/UpdateBlackContactCommand;->executeCommand()V

    .line 542
    return-void
.end method

.method public deleteContact(JLxv;)V
    .locals 3
    .param p1, "contactId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 506
    .local p3, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$6;

    invoke-virtual {p0}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$6;-><init>(Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;Ljava/lang/String;J)V

    .line 514
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 515
    return-void
.end method

.method public getCompanyInfoFromServer(Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/contact/model/CompanyContactModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 333
    .local p2, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/contact/model/CompanyContactModel;>;"
    new-instance v0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$3;

    .line 334
    invoke-virtual {p0}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$3;-><init>(Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/contact/model/CompanyContactModel;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 382
    return-void
.end method

.method public getDepartmentChildrenFromServer(Ljava/lang/String;IILxv;)V
    .locals 6
    .param p1, "departmentId"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 416
    .local p4, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;>;"
    new-instance v0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$4;

    .line 417
    invoke-virtual {p0}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v3, p3

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$4;-><init>(Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;Ljava/lang/String;ILjava/lang/String;I)V

    .line 488
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;>;"
    invoke-virtual {p0, v0, p4}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 489
    return-void
.end method

.method public getDepartmentChildrenFromServer(Ljava/lang/String;ILxv;)V
    .locals 1
    .param p1, "departmentId"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 410
    .local p3, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;>;"
    const/16 v0, 0x14

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->getDepartmentChildrenFromServer(Ljava/lang/String;IILxv;)V

    .line 411
    return-void
.end method

.method public getUserSelfContact(Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/contact/model/UserSelfContactModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 107
    .local p1, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/contact/model/UserSelfContactModel;>;"
    new-instance v0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$1;

    invoke-virtual {p0}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$1;-><init>(Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;Ljava/lang/String;)V

    .line 141
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/contact/model/UserSelfContactModel;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 142
    return-void
.end method

.method public getUserSelfContactFromLocal(Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/contact/model/UserSelfContactModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 146
    .local p1, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/contact/model/UserSelfContactModel;>;"
    new-instance v0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$10;

    invoke-virtual {p0}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$10;-><init>(Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;Ljava/lang/String;)V

    .line 154
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/contact/model/UserSelfContactModel;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 155
    return-void
.end method

.method public getUserSelfContactFromServer(Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/contact/model/UserSelfContactModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 160
    .local p1, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/contact/model/UserSelfContactModel;>;"
    new-instance v0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$11;

    invoke-virtual {p0}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$11;-><init>(Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;Ljava/lang/String;)V

    .line 190
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/contact/model/UserSelfContactModel;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 191
    return-void
.end method

.method public isBlackUser(Ljava/util/List;Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 519
    .local p1, "emailList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$7;

    invoke-virtual {p0}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$7;-><init>(Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;Ljava/lang/String;Ljava/util/List;)V

    .line 527
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 528
    return-void
.end method

.method public queryAllEmailContacts(Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/contact/model/ContactModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 251
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/contact/model/ContactModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$16;

    invoke-virtual {p0}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$16;-><init>(Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;Ljava/lang/String;)V

    .line 257
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/contact/model/ContactModel;>;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 258
    return-void
.end method

.method public queryAllLocalBlackContacts(Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/contact/model/BlackContactModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 238
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/contact/model/BlackContactModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$15;

    invoke-virtual {p0}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$15;-><init>(Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;Ljava/lang/String;)V

    .line 246
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/contact/model/BlackContactModel;>;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 247
    return-void
.end method

.method public queryAllLocalContacts(Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/contact/model/ContactModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 223
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/contact/model/ContactModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$14;

    invoke-virtual {p0}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$14;-><init>(Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;Ljava/lang/String;)V

    .line 232
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/contact/model/ContactModel;>;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 233
    return-void
.end method

.method public queryLocalContact(JLxv;)V
    .locals 3
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/contact/model/ContactModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p3, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/contact/model/ContactModel;>;"
    new-instance v0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$12;

    invoke-virtual {p0}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$12;-><init>(Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;Ljava/lang/String;J)V

    .line 204
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/contact/model/ContactModel;>;"
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 205
    return-void
.end method

.method public queryLocalContact(Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/contact/model/ContactModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 210
    .local p2, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/contact/model/ContactModel;>;"
    new-instance v0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$13;

    invoke-virtual {p0}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$13;-><init>(Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/contact/model/ContactModel;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 219
    return-void
.end method

.method public saveCallLog(Lcom/alibaba/alimei/contact/db/entry/CallLog;)V
    .locals 2
    .param p1, "callLog"    # Lcom/alibaba/alimei/contact/db/entry/CallLog;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 546
    new-instance v0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$8;

    invoke-virtual {p0}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$8;-><init>(Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;Ljava/lang/String;Lcom/alibaba/alimei/contact/db/entry/CallLog;)V

    .line 562
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Void;>;"
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 563
    return-void
.end method

.method public saveContact(Lcom/alibaba/alimei/contact/model/ContactModel;Lxv;)V
    .locals 2
    .param p1, "contactModel"    # Lcom/alibaba/alimei/contact/model/ContactModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/contact/model/ContactModel;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/contact/model/ContactModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 493
    .local p2, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/contact/model/ContactModel;>;"
    new-instance v0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$5;

    invoke-virtual {p0}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$5;-><init>(Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;Ljava/lang/String;Lcom/alibaba/alimei/contact/model/ContactModel;)V

    .line 501
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/contact/model/ContactModel;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 502
    return-void
.end method

.method public searchContactsFromServer(Ljava/lang/String;IILxv;)V
    .locals 6
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/contact/model/SearchContactResultModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 276
    .local p4, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/contact/model/SearchContactResultModel;>;"
    new-instance v0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$2;

    .line 277
    invoke-virtual {p0}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$2;-><init>(Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;Ljava/lang/String;Ljava/lang/String;II)V

    .line 328
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/contact/model/SearchContactResultModel;>;"
    invoke-virtual {p0, v0, p4}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 329
    return-void
.end method

.method public searchContactsOnLocal(Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/contact/model/SearchContactModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 262
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/contact/model/SearchContactModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$17;

    .line 263
    invoke-virtual {p0}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$17;-><init>(Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/contact/model/SearchContactModel;>;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 271
    return-void
.end method

.method public startSyncBlackContacts()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 77
    new-instance v0, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;

    const/4 v1, 0x3

    .line 78
    invoke-virtual {p0}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;-><init>(ILjava/lang/String;Z)V

    .line 79
    .local v0, "command":Lcom/alibaba/alimei/contact/command/SyncContactsCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;->executeCommand()V

    .line 80
    return-void
.end method

.method public startSyncContacts(Z)V
    .locals 3
    .param p1, "forceFullSync"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 63
    new-instance v0, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;

    const/4 v1, 0x1

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;-><init>(ILjava/lang/String;Z)V

    .line 65
    .local v0, "command":Lcom/alibaba/alimei/contact/command/SyncContactsCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;->executeCommand()V

    .line 66
    return-void
.end method

.method public startSyncUserSelf()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 70
    new-instance v0, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;

    const/4 v1, 0x2

    .line 71
    invoke-virtual {p0}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;-><init>(ILjava/lang/String;Z)V

    .line 72
    .local v0, "command":Lcom/alibaba/alimei/contact/command/SyncContactsCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;->executeCommand()V

    .line 73
    return-void
.end method

.method public updateBlackContacts(ILjava/util/List;)V
    .locals 1
    .param p1, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p2, "emailList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/alibaba/alimei/contact/command/UpdateBlackContactCommand;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/alimei/contact/command/UpdateBlackContactCommand;-><init>(ILjava/util/List;)V

    .line 90
    .local v0, "command":Lcom/alibaba/alimei/contact/command/UpdateBlackContactCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/contact/command/UpdateBlackContactCommand;->executeCommand()V

    .line 91
    return-void
.end method

.method public updateSelfInfo(Ljava/lang/String;Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "defName"    # Ljava/lang/String;
    .param p2, "defSendMail"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 567
    .local p3, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$9;

    invoke-virtual {p0}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$9;-><init>(Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 601
    return-void
.end method

.method public updateUserAvatar(Ljava/lang/String;I)V
    .locals 1
    .param p1, "avatarUrl"    # Ljava/lang/String;
    .param p2, "avatarSize"    # I

    .prologue
    .line 101
    new-instance v0, Lcom/alibaba/alimei/contact/command/UploadAvatarCommand;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/alimei/contact/command/UploadAvatarCommand;-><init>(Ljava/lang/String;I)V

    .line 102
    .local v0, "command":Lcom/alibaba/alimei/contact/command/UploadAvatarCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/contact/command/UploadAvatarCommand;->executeCommand()V

    .line 103
    return-void
.end method

.method public updateUserSelf(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 95
    new-instance v0, Lcom/alibaba/alimei/contact/command/UpdateUserSelfContactCommand;

    invoke-virtual {p0}, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/alimei/contact/command/UpdateUserSelfContactCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .local v0, "command":Lcom/alibaba/alimei/contact/command/UpdateUserSelfContactCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/contact/command/UpdateUserSelfContactCommand;->executeCommand()V

    .line 97
    return-void
.end method
