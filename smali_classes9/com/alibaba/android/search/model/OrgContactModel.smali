.class public Lcom/alibaba/android/search/model/OrgContactModel;
.super Lcom/alibaba/android/search/model/BaseModel;
.source "OrgContactModel.java"


# static fields
.field private static final serialVersionUID:J = 0xda910e443b2eeacL


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/alibaba/android/search/model/BaseModel;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 56
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->OrgContact:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/OrgContactModel;->setModelType(Lcom/alibaba/android/search/model/BaseModel$ModelType;)V

    .line 57
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/OrgContactModel;->setChooseMode(I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V
    .locals 1
    .param p1, "orgNodeItemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alibaba/android/search/model/BaseModel;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 62
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->OrgContact:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/OrgContactModel;->setModelType(Lcom/alibaba/android/search/model/BaseModel$ModelType;)V

    .line 63
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/OrgContactModel;->setChooseMode(I)V

    .line 64
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/OrgContactModel;->setUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 65
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    iput v0, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mUserType:I

    .line 68
    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->searchCallbackMode:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/android/search/utils/SearchUtils;->b(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/OrgContactModel;->setRecallSearchResult(Z)V

    .line 69
    return-void
.end method

.method private getDeptName()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 217
    iget-object v4, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v1, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->deptList:Ljava/util/List;

    .line 218
    .local v1, "deptObjectArrayList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-object v3

    .line 223
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 224
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 225
    .local v0, "dept":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 229
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    goto :goto_0

    .line 223
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getAvatar()Ljava/util/List;
    .locals 4
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

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 74
    iget-object v3, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-nez v3, :cond_0

    .line 75
    const/4 v2, 0x0

    .line 102
    :goto_0
    return-object v2

    .line 78
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v2, "userIconObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/SearchUserIconObject;>;"
    new-instance v1, Lcom/alibaba/android/search/SearchUserIconObject;

    invoke-direct {v1}, Lcom/alibaba/android/search/SearchUserIconObject;-><init>()V

    .line 82
    .local v1, "userIconObject":Lcom/alibaba/android/search/SearchUserIconObject;
    iget-object v3, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v3, :cond_3

    .line 83
    iget-object v3, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/android/search/SearchUserIconObject;->mediaId:Ljava/lang/String;

    .line 88
    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 89
    .local v0, "realNick":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 90
    iget-object v3, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-static {v3}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_2
    :goto_2
    invoke-static {v0}, Lcpt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/search/SearchUserIconObject;->nick:Ljava/lang/String;

    .line 100
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    .end local v0    # "realNick":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v3, :cond_1

    .line 85
    iget-object v3, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAvatarMediaId:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/android/search/SearchUserIconObject;->mediaId:Ljava/lang/String;

    goto :goto_1

    .line 91
    .restart local v0    # "realNick":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v3, :cond_2

    .line 92
    iget-object v3, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgNickName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 93
    iget-object v3, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgNickName:Ljava/lang/String;

    invoke-static {v3}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 94
    :cond_5
    iget-object v3, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 95
    iget-object v3, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    invoke-static {v3}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public getDesc(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 138
    iget-object v2, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-nez v2, :cond_2

    .line 139
    :cond_0
    const/4 v1, 0x0

    .line 155
    :cond_1
    :goto_0
    return-object v1

    .line 142
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v1, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgName:Ljava/lang/String;

    .line 143
    .local v1, "desc":Ljava/lang/String;
    invoke-direct {p0}, Lcom/alibaba/android/search/model/OrgContactModel;->getDeptName()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "deptName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 148
    sget v2, Lemt$g;->dt_search_org_contact_colleague:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 150
    new-array v2, v6, [Ljava/lang/String;

    aput-object v1, v2, v4

    const-string/jumbo v3, "-"

    aput-object v3, v2, v5

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    :cond_3
    new-array v2, v6, [Ljava/lang/String;

    aput-object v1, v2, v4

    aput-object v0, v2, v5

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/OrgContactModel;->getKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/search/utils/SearchUtils;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getDesc2(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 160
    iget-object v0, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->hitField:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 161
    :cond_0
    const/4 v0, 0x0

    .line 163
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->hitField:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/android/search/model/OrgContactModel;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/search/utils/SearchUtils;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 237
    iget-object v0, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 241
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
    .line 108
    iget-object v1, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-nez v1, :cond_2

    .line 109
    :cond_0
    const/4 v0, 0x0

    .line 124
    :cond_1
    :goto_0
    return-object v0

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    .line 114
    .local v0, "displayName":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgNickName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 115
    iget-object v1, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgNickName:Ljava/lang/String;

    .line 120
    :cond_3
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/OrgContactModel;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/search/utils/SearchUtils;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 117
    iget-object v1, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    goto :goto_1
.end method

.method public getPersonStatus()Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-nez v0, :cond_1

    .line 130
    :cond_0
    const/4 v0, 0x0

    .line 132
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v2, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;J)Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;

    move-result-object v0

    goto :goto_0
.end method

.method protected getUserIdentityObjectSource()I
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/app/Activity;Landroid/view/View;)V
    .locals 5
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 169
    const-string/jumbo v0, "search_click_type"

    const-string/jumbo v1, "type=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "groupcontact"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Letd;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-nez v0, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lemt$e;->iv_profile:I

    if-ne v0, v1, :cond_4

    .line 177
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/OrgContactModel;->isRobot()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    invoke-virtual {v0, p1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Landroid/app/Activity;J)V

    .line 204
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/OrgContactModel;->isDemissionColleague()Z

    move-result v0

    if-nez v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mUserIdentityObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {p0}, Lcom/alibaba/android/search/model/OrgContactModel;->getDeptName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;)V

    .line 207
    :cond_2
    invoke-static {p1, p0}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Landroid/content/Context;Lcom/alibaba/android/search/model/BaseModel;)V

    goto :goto_0

    .line 180
    :cond_3
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/user/profile.html"

    new-instance v2, Lcom/alibaba/android/search/model/OrgContactModel$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/search/model/OrgContactModel$1;-><init>(Lcom/alibaba/android/search/model/OrgContactModel;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_1

    .line 195
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/OrgContactModel;->isRobot()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 196
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/model/OrgContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    invoke-virtual {v0, p1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Landroid/app/Activity;J)V

    goto :goto_1

    .line 199
    :cond_5
    invoke-virtual {p0, p1}, Lcom/alibaba/android/search/model/OrgContactModel;->openConversation(Landroid/app/Activity;)V

    goto :goto_1
.end method
