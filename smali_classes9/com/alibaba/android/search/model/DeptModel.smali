.class public Lcom/alibaba/android/search/model/DeptModel;
.super Lcom/alibaba/android/search/model/BaseModel;
.source "DeptModel.java"


# instance fields
.field protected mDeptSearchObject:Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    const/4 v0, 0x0

    const-string/jumbo v1, ""

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/search/model/DeptModel;-><init>(Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;Ljava/lang/String;)V
    .locals 1
    .param p1, "deptSearchObject"    # Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;
    .param p2, "keyword"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/alibaba/android/search/model/BaseModel;-><init>()V

    .line 51
    iput-object p2, p0, Lcom/alibaba/android/search/model/DeptModel;->mKeyword:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/alibaba/android/search/model/DeptModel;->mDeptSearchObject:Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;

    .line 53
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->Dept:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/DeptModel;->setModelType(Lcom/alibaba/android/search/model/BaseModel$ModelType;)V

    .line 54
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/DeptModel;->setChooseMode(I)V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/search/model/DeptModel;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/model/DeptModel;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/model/DeptModel;->dismissLoadingDialog(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/android/search/model/DeptModel;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/model/DeptModel;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/search/model/DeptModel;->nav2OrgContacts(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    return-void
.end method

.method private dismissLoadingDialog(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 235
    instance-of v0, p1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 236
    check-cast p1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 238
    :cond_0
    return-void
.end method

.method private nav2OrgContacts(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V
    .locals 5
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "currentNode"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 208
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;-><init>()V

    .line 209
    .local v0, "builder":Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    iget-object v1, p0, Lcom/alibaba/android/search/model/DeptModel;->mDeptSearchObject:Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;

    iget-object v1, v1, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;->orgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 210
    iget-object v1, p0, Lcom/alibaba/android/search/model/DeptModel;->mDeptSearchObject:Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;

    iget-object v1, v1, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;->orgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->d(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 211
    iget-object v1, p0, Lcom/alibaba/android/search/model/DeptModel;->mDeptSearchObject:Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;

    iget-wide v2, v1, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;->orgId:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(J)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 212
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->k(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 213
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->l(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 214
    iget-object v1, p0, Lcom/alibaba/android/search/model/DeptModel;->mDeptSearchObject:Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;

    iget-wide v2, v1, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;->deptId:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(J)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 215
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 216
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    .line 2053
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 216
    invoke-virtual {v1, p1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V

    .line 217
    return-void
.end method

.method private showLoadingDialog(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 229
    instance-of v0, p1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 230
    check-cast p1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 232
    :cond_0
    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/SearchUserIconObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v1, "userIconObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/SearchUserIconObject;>;"
    new-instance v0, Lcom/alibaba/android/search/SearchUserIconObject;

    invoke-direct {v0}, Lcom/alibaba/android/search/SearchUserIconObject;-><init>()V

    .line 61
    .local v0, "userIconObject":Lcom/alibaba/android/search/SearchUserIconObject;
    const-string/jumbo v2, "@lALPBbCc1d3JAoVgYA"

    iput-object v2, v0, Lcom/alibaba/android/search/SearchUserIconObject;->mediaId:Ljava/lang/String;

    .line 62
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    return-object v1
.end method

.method public getDesc(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 84
    const-string/jumbo v0, ""

    .line 85
    .local v0, "managerName":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/search/model/DeptModel;->mDeptSearchObject:Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/search/model/DeptModel;->mDeptSearchObject:Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;

    iget-object v1, v1, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;->managerName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/alibaba/android/search/model/DeptModel;->mDeptSearchObject:Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;

    iget-object v0, v1, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;->managerName:Ljava/lang/String;

    .line 89
    :cond_0
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 221
    iget-object v0, p0, Lcom/alibaba/android/search/model/DeptModel;->mDeptSearchObject:Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/alibaba/android/search/model/DeptModel;->mDeptSearchObject:Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;

    iget-wide v0, v0, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;->deptId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 225
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/search/model/BaseModel;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 69
    const-string/jumbo v0, ""

    .line 70
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/search/model/DeptModel;->mDeptSearchObject:Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/search/model/DeptModel;->mDeptSearchObject:Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;

    iget-object v1, v1, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;->deptName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/alibaba/android/search/model/DeptModel;->mDeptSearchObject:Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;

    iget-object v0, v1, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;->deptName:Ljava/lang/String;

    .line 75
    :cond_0
    const-string/jumbo v1, "<red>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "</red>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/DeptModel;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_1
    return-object v0
.end method

.method public onClick(Landroid/app/Activity;Landroid/view/View;)V
    .locals 12
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    const/4 v6, 0x0

    .line 94
    iget-object v1, p0, Lcom/alibaba/android/search/model/DeptModel;->mDeptSearchObject:Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/search/model/DeptModel;->mDeptSearchObject:Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;

    iget-wide v4, v1, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;->orgId:J

    cmp-long v1, v4, v10

    if-lez v1, :cond_0

    invoke-static {p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    const-string/jumbo v2, ""

    .line 99
    .local v2, "keyword":Ljava/lang/String;
    const/4 v3, 0x0

    .line 100
    .local v3, "keyType":I
    iget-object v1, p0, Lcom/alibaba/android/search/model/DeptModel;->mDeptSearchObject:Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;

    iget-wide v4, v1, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;->orgId:J

    const-wide/16 v8, 0x5209

    cmp-long v1, v4, v8

    if-nez v1, :cond_3

    .line 101
    iget-object v1, p0, Lcom/alibaba/android/search/model/DeptModel;->mDeptSearchObject:Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;

    iget-object v2, v1, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;->orgStaffId:Ljava/lang/String;

    .line 102
    const/4 v3, 0x2

    .line 107
    :cond_2
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 108
    iget-object v1, p0, Lcom/alibaba/android/search/model/DeptModel;->mDeptSearchObject:Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;

    iget-wide v4, v1, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;->deptId:J

    const-wide/16 v8, -0x1

    cmp-long v1, v4, v8

    if-nez v1, :cond_4

    .line 109
    invoke-direct {p0, p1, v6}, Lcom/alibaba/android/search/model/DeptModel;->nav2OrgContacts(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    goto :goto_0

    .line 103
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/search/model/DeptModel;->mDeptSearchObject:Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;

    iget-wide v4, v1, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;->deptId:J

    cmp-long v1, v4, v10

    if-lez v1, :cond_2

    .line 104
    iget-object v1, p0, Lcom/alibaba/android/search/model/DeptModel;->mDeptSearchObject:Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;

    iget-wide v4, v1, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;->deptId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 111
    :cond_4
    const-string/jumbo v1, "[Dept] empty keyword"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 2050
    const-string/jumbo v5, "search"

    invoke-static {v5, v1, v4}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 116
    :cond_5
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/model/DeptModel;->showLoadingDialog(Landroid/app/Activity;)V

    .line 117
    new-instance v0, Lcom/alibaba/android/search/model/DeptModel$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/search/model/DeptModel$1;-><init>(Lcom/alibaba/android/search/model/DeptModel;Landroid/app/Activity;)V

    .line 203
    .local v0, "mApiEventListener":Lcma;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v4, p0, Lcom/alibaba/android/search/model/DeptModel;->mDeptSearchObject:Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;

    iget-wide v4, v4, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;->orgId:J

    const-class v7, Lcma;

    .line 204
    invoke-static {v0, v7, p1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcma;

    .line 203
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;IJLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Lcma;)V

    goto :goto_0
.end method
