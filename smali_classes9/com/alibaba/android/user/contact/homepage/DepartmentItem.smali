.class public Lcom/alibaba/android/user/contact/homepage/DepartmentItem;
.super Lcom/alibaba/android/user/contact/homepage/Component;
.source "DepartmentItem.java"


# instance fields
.field private mAuthLevel:I

.field private mCanManage:Z

.field private mDepartmentId:J

.field private mGroupCreated:Z

.field private mNodeItem:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

.field private mOrgId:J

.field private mOrgName:Ljava/lang/String;

.field private mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

.field private mOrgOperation:I


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V
    .locals 1
    .param p1, "orgObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .param p2, "nodeItem"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/homepage/Component;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mCanManage:Z

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->init(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;)V
    .locals 1
    .param p1, "orgObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .param p2, "nodeItem"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .param p3, "deptName"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/homepage/Component;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mCanManage:Z

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->init(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method private init(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;)V
    .locals 2
    .param p1, "orgObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .param p2, "nodeItem"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .param p3, "deptName"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p2, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mNodeItem:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 81
    iput-object p1, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 82
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mOrgId:J

    .line 83
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mOrgName:Ljava/lang/String;

    .line 84
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-static {p2}, Lfxe;->e(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/homepage/Component;->mName:Ljava/lang/String;

    .line 90
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->authLevel:I

    iput v0, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mAuthLevel:I

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->initDepartmentId()V

    .line 94
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->initOrgOperation()V

    .line 95
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->initGroupCreated()V

    .line 96
    return-void

    .line 87
    :cond_1
    iput-object p3, p0, Lcom/alibaba/android/user/contact/homepage/Component;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method private initDepartmentId()V
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->isRootDepartment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mDepartmentId:J

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mNodeItem:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-static {v0}, Lfxe;->b(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mDepartmentId:J

    goto :goto_0
.end method

.method private initGroupCreated()V
    .locals 6

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->isRootDepartment()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->settingsObject:Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    if-nez v1, :cond_2

    .line 118
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mGroupCreated:Z

    .line 133
    :cond_1
    :goto_0
    return-void

    .line 120
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->settingsObject:Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->groupCreated:Z

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mGroupCreated:Z

    goto :goto_0

    .line 123
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 127
    .local v0, "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptSetting:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptSettingObject;

    if-eqz v2, :cond_4

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mDepartmentId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 130
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptSetting:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptSettingObject;

    iget-boolean v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptSettingObject;->groupCreated:Z

    iput-boolean v2, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mGroupCreated:Z

    goto :goto_1
.end method

.method private initOrgOperation()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->leavePermission:Z

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->authLevel:I

    if-nez v0, :cond_1

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mOrgOperation:I

    .line 151
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->managePermission:Z

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mCanManage:Z

    .line 153
    :cond_0
    return-void

    .line 147
    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    .line 149
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mOrgOperation:I

    goto :goto_1
.end method


# virtual methods
.method public canManage()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mCanManage:Z

    return v0
.end method

.method public getAuthLevel()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mAuthLevel:I

    return v0
.end method

.method public getDepartmentId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 176
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mDepartmentId:J

    return-wide v0
.end method

.method public getGroupCreated()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mGroupCreated:Z

    return v0
.end method

.method public getNodeItem()Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mNodeItem:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    return-object v0
.end method

.method public getOrgId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 168
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mOrgId:J

    return-wide v0
.end method

.method public getOrgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mOrgName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrgObject()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    return-object v0
.end method

.method public getOrgOperation()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mOrgOperation:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->Department:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->getValue()I

    move-result v0

    return v0
.end method

.method public getUserRole()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->role:I

    return v0
.end method

.method public isRootDepartment()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mNodeItem:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAuthLevel(I)V
    .locals 0
    .param p1, "authLevel"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mAuthLevel:I

    .line 189
    return-void
.end method

.method public setOrgId(J)V
    .locals 1
    .param p1, "orgId"    # J

    .prologue
    .line 172
    iput-wide p1, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mOrgId:J

    .line 173
    return-void
.end method

.method public setOrgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "orgName"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mOrgName:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setOrgObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V
    .locals 0
    .param p1, "orgObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 209
    return-void
.end method
