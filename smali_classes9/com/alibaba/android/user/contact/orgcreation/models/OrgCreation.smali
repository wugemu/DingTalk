.class public Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;
.super Ljava/lang/Object;
.source "OrgCreation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3be877fc88c48d32L


# instance fields
.field private mBossList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentStep:I

.field private mInviteCode:Ljava/lang/String;

.field private mMaxDeptId:J

.field private mOrgDeptList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private mOrgName:Ljava/lang/String;

.field private mRegion:Ljava/lang/String;

.field private mSelectedBosses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private mTemplateIconUrl:Ljava/lang/String;

.field private mTemplateId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->mMaxDeptId:J

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->mCurrentStep:I

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->mSelectedBosses:Ljava/util/Set;

    return-void
.end method

.method private updateBossList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 120
    .local p1, "orgDeptList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 143
    :cond_0
    return-void

    .line 124
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    .line 126
    .local v1, "orgDeptViewModel":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 127
    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 131
    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getSubDepts()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->updateBossList(Ljava/util/List;)V

    .line 133
    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptMembers()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptMembers()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 136
    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptMembers()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;

    .line 137
    .local v0, "orgCreationUserModel":Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;->isBoss()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->mBossList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 140
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->mBossList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getCurrentStep()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->mCurrentStep:I

    return v0
.end method

.method public getInviteCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->mInviteCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxDeptId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->mMaxDeptId:J

    return-wide v0
.end method

.method public getOrgDeptList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->mOrgDeptList:Ljava/util/List;

    return-object v0
.end method

.method public getOrgDeptNodeObjectList()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 147
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->mOrgDeptList:Ljava/util/List;

    if-nez v4, :cond_0

    move-object v1, v3

    .line 167
    :goto_0
    return-object v1

    .line 151
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v1, "orgDeptNodeObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;>;"
    const/4 v0, 0x0

    .line 153
    .local v0, "bossCount":I
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->mOrgDeptList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    .line 155
    .local v2, "orgDeptViewModel":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 156
    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 160
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->mBossList:Ljava/util/List;

    invoke-virtual {v2, v5}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->updateBoss(Ljava/util/List;)V

    .line 162
    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->toOrgDeptNodeObject()Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getBossCount()I

    move-result v5

    add-int/2addr v0, v5

    .line 164
    goto :goto_1

    .line 166
    .end local v2    # "orgDeptViewModel":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    :cond_2
    const-string/jumbo v4, "org_create_finsh_manager_click"

    const-string/jumbo v5, "num=%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1315
    invoke-static {v3, v4, v5, v6}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getOrgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->mOrgName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganizationModel()Lcfi;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 196
    new-instance v0, Lcfi;

    invoke-direct {v0}, Lcfi;-><init>()V

    .line 197
    .local v0, "organizationModel":Lcfi;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->mOrgName:Ljava/lang/String;

    iput-object v1, v0, Lcfi;->b:Ljava/lang/String;

    .line 198
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->mRegion:Ljava/lang/String;

    iput-object v1, v0, Lcfi;->r:Ljava/lang/String;

    .line 199
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->mInviteCode:Ljava/lang/String;

    iput-object v1, v0, Lcfi;->p:Ljava/lang/String;

    .line 201
    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->mRegion:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedBosses()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->mSelectedBosses:Ljava/util/Set;

    return-object v0
.end method

.method public getTemplateIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->mTemplateIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->mTemplateId:J

    return-wide v0
.end method

.method public setCurrentStep(I)V
    .locals 0
    .param p1, "currentStep"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->mCurrentStep:I

    .line 97
    return-void
.end method

.method public setInviteCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "inviteCode"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->mInviteCode:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setMaxDeptId(J)V
    .locals 1
    .param p1, "maxDeptId"    # J

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->mMaxDeptId:J

    .line 89
    return-void
.end method

.method public setOrgDeptList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "orgDeptList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;>;"
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->mOrgDeptList:Ljava/util/List;

    .line 81
    return-void
.end method

.method public setOrgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "orgName"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->mOrgName:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0
    .param p1, "region"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->mRegion:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setSelectedBosses(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "selectedBosses":Ljava/util/Set;, "Ljava/util/Set<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->mSelectedBosses:Ljava/util/Set;

    .line 176
    return-void
.end method

.method public setTemplateIconUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "templateIconUrl"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->mTemplateIconUrl:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setTemplateId(J)V
    .locals 1
    .param p1, "templateId"    # J

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->mTemplateId:J

    .line 65
    return-void
.end method

.method public updateBossList()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->mBossList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->mBossList:Ljava/util/List;

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->mOrgDeptList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->updateBossList(Ljava/util/List;)V

    .line 116
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->mBossList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method
