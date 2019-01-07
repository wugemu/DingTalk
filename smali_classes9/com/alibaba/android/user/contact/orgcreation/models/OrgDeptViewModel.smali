.class public Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
.super Ljava/lang/Object;
.source "OrgDeptViewModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x736b52f2bb19a75aL


# instance fields
.field private transient mBossCount:I

.field private mDeptId:J

.field private mDeptMembers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;",
            ">;"
        }
    .end annotation
.end field

.field private mDeptName:Ljava/lang/String;

.field private mIsChecked:Z

.field private mIsMyDept:Z

.field private mSubDepts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromOrgDeptNodeObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;)Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    .locals 6
    .param p0, "deptNode"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;

    .prologue
    .line 136
    if-nez p0, :cond_1

    .line 137
    const/4 v0, 0x0

    .line 162
    :cond_0
    return-object v0

    .line 140
    :cond_1
    new-instance v0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    invoke-direct {v0}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;-><init>()V

    .line 141
    .local v0, "model":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->id:J

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->setDeptId(J)V

    .line 142
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->setDeptName(Ljava/lang/String;)V

    .line 144
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->subDepts:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->subDepts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 145
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->subDepts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->mSubDepts:Ljava/util/List;

    .line 146
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->subDepts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;

    .line 147
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;
    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->fromOrgDeptNodeObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;)Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    move-result-object v2

    .line 148
    .local v2, "orgDeptViewModel":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    if-eqz v2, :cond_2

    .line 151
    iget-object v4, v0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->mSubDepts:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updateBoss(Ljava/util/List;Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;)V
    .locals 4
    .param p2, "orgDeptViewModel"    # Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;",
            ">;",
            "Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 176
    .local p1, "bossList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;>;"
    if-nez p2, :cond_1

    .line 197
    :cond_0
    return-void

    .line 180
    :cond_1
    invoke-virtual {p2}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getSubDepts()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getSubDepts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 182
    invoke-virtual {p2}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getSubDepts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    .line 183
    .local v1, "subDept":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    invoke-direct {p0, p1, v1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->updateBoss(Ljava/util/List;Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;)V

    goto :goto_0

    .line 187
    .end local v1    # "subDept":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    :cond_2
    invoke-virtual {p2}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptMembers()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptMembers()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 188
    invoke-virtual {p2}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptMembers()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;

    .line 189
    .local v0, "orgCreationUserModel":Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;
    if-eqz v0, :cond_3

    .line 192
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 193
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;->setIsBoss(Z)V

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 201
    if-ne p0, p1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v1

    .line 202
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 204
    check-cast v0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    .line 206
    .local v0, "model":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    iget-wide v4, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->mDeptId:J

    iget-wide v6, v0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->mDeptId:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getBossCount()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->mBossCount:I

    return v0
.end method

.method public getDeptId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->mDeptId:J

    return-wide v0
.end method

.method public getDeptMembers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->mDeptMembers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDeptName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->mDeptName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubDepts()Ljava/util/List;
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
    .line 73
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->mSubDepts:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 212
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->mDeptId:J

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->mDeptId:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->mIsChecked:Z

    return v0
.end method

.method public isMyDept()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->mIsMyDept:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "isChecked"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->mIsChecked:Z

    .line 54
    return-void
.end method

.method public setDeptId(J)V
    .locals 1
    .param p1, "deptId"    # J

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->mDeptId:J

    .line 62
    return-void
.end method

.method public setDeptMembers(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "deptMembers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;>;"
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->mDeptMembers:Ljava/util/ArrayList;

    .line 86
    return-void
.end method

.method public setDeptName(Ljava/lang/String;)V
    .locals 0
    .param p1, "deptName"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->mDeptName:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setMyDept(Z)V
    .locals 0
    .param p1, "isMyDept"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->mIsMyDept:Z

    .line 94
    return-void
.end method

.method public setSubDepts(Ljava/util/List;)V
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
    .line 77
    .local p1, "subDepts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;>;"
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->mSubDepts:Ljava/util/List;

    .line 78
    return-void
.end method

.method public toOrgDeptNodeObject()Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 106
    const/4 v3, 0x0

    iput v3, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->mBossCount:I

    .line 107
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;-><init>()V

    .line 108
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;
    iget-wide v4, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->mDeptId:J

    iput-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->id:J

    .line 109
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->mDeptName:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->name:Ljava/lang/String;

    .line 111
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->mSubDepts:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->mSubDepts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 112
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->mSubDepts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->subDepts:Ljava/util/List;

    .line 113
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->mSubDepts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    .line 114
    .local v0, "model":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 115
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->subDepts:Ljava/util/List;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->toOrgDeptNodeObject()Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget v4, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->mBossCount:I

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getBossCount()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->mBossCount:I

    goto :goto_0

    .line 121
    .end local v0    # "model":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->mDeptMembers:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->mDeptMembers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 122
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->mDeptMembers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->members:Ljava/util/List;

    .line 123
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->mDeptMembers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;

    .line 124
    .local v2, "userObj":Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->members:Ljava/util/List;

    iget-wide v6, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->mDeptId:J

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;->isBoss()Z

    move-result v5

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;->getUserIdentityObject()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v8

    invoke-static {v6, v7, v5, v8}, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->fromUserIdentityObject(JZLcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;->isBoss()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 126
    iget v4, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->mBossCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->mBossCount:I

    goto :goto_1

    .line 131
    .end local v2    # "userObj":Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;
    :cond_3
    return-object v1
.end method

.method public updateBoss(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "bossList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-direct {p0, p1, p0}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->updateBoss(Ljava/util/List;Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;)V

    goto :goto_0
.end method
