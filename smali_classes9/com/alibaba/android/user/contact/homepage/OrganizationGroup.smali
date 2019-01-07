.class public Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;
.super Lcom/alibaba/android/user/contact/homepage/Composite;
.source "OrganizationGroup.java"


# instance fields
.field private mAuthLevel:I

.field private mCanInvite:Z

.field private mDepartmentId:J

.field private mIsOpenEncrypt:Z

.field private mOrgId:J

.field private mOrgLogo:Ljava/lang/String;

.field private mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

.field private mOrgOperation:I

.field private mShowRedDot:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V
    .locals 4
    .param p1, "orgObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/homepage/Composite;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mCanInvite:Z

    .line 77
    iput-object p1, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 78
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mOrgId:J

    .line 79
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->setName(Ljava/lang/String;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->authLevel:I

    iput v0, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mAuthLevel:I

    .line 86
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mOrgId:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mIsOpenEncrypt:Z

    .line 88
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mOrgId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->initExpand(Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->initOrgLogo()V

    .line 90
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->initDepartmentId()V

    .line 91
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->initOrgOperation()V

    .line 92
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->isShowManageRedDot()Z

    .line 93
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->initInviteFlag()V

    .line 94
    return-void
.end method

.method private initDepartmentId()V
    .locals 4

    .prologue
    .line 110
    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->nodeItemObjectList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->nodeItemObjectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->nodeItemObjectList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 112
    .local v0, "nodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    invoke-static {v0}, Lfxe;->b(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mDepartmentId:J

    .line 114
    .end local v0    # "nodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_0
    return-void
.end method

.method private initInviteFlag()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->settingsObject:Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    if-nez v0, :cond_1

    .line 157
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mCanInvite:Z

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->settingsObject:Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->openInvite:Z

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mCanInvite:Z

    goto :goto_0
.end method

.method private initOrgLogo()V
    .locals 5

    .prologue
    .line 138
    iget-object v2, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-object v2, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mOrgLogo:Ljava/lang/String;

    .line 139
    iget-object v2, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mOrgLogo:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 152
    :goto_1
    return-void

    .line 138
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->logoMediaId:Ljava/lang/String;

    goto :goto_0

    .line 143
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mOrgLogo:Ljava/lang/String;

    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 145
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mOrgLogo:Ljava/lang/String;

    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mOrgLogo:Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_3
    :goto_2
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v1

    .line 151
    .local v1, "strategy":Lhcj;
    iget-object v2, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mOrgLogo:Ljava/lang/String;

    sget v3, Lcib;->a:I

    sget v4, Lcib;->a:I

    invoke-virtual {v1, v2, v3, v4}, Lhcj;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mOrgLogo:Ljava/lang/String;

    goto :goto_1

    .line 146
    .end local v1    # "strategy":Lhcj;
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_2
.end method

.method private initOrgOperation()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->managePermission:Z

    if-eqz v0, :cond_1

    .line 125
    const/4 v0, 0x1

    .line 128
    :goto_0
    iput v0, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mOrgOperation:I

    .line 131
    :cond_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->leavePermission:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->authLevel:I

    if-nez v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method


# virtual methods
.method public canInvite()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mCanInvite:Z

    return v0
.end method

.method public canManage()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 185
    iget v1, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mOrgOperation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAuthLevel()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mAuthLevel:I

    return v0
.end method

.method public getAuthLevelRes()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mAuthLevel:I

    packed-switch v0, :pswitch_data_0

    .line 176
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 170
    :pswitch_0
    sget v0, Lezg$g;->icon_advanced_certify:I

    goto :goto_0

    .line 172
    :pswitch_1
    sget v0, Lezg$g;->icon_middle_certify:I

    goto :goto_0

    .line 174
    :pswitch_2
    sget v0, Lezg$g;->icon_primary_certify:I

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getDepartmentId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 213
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mDepartmentId:J

    return-wide v0
.end method

.method public getOrgId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 205
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mOrgId:J

    return-wide v0
.end method

.method public getOrgLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mOrgLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getOrgObject()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/alibaba/android/user/contact/homepage/Component$GroupType;->Organization:Lcom/alibaba/android/user/contact/homepage/Component$GroupType;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Component$GroupType;->getValue()I

    move-result v0

    return v0
.end method

.method public getUnreadCount()I
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mShowRedDot:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/alibaba/android/user/contact/homepage/Composite;->getUnreadCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/contact/homepage/Composite;->getUnreadCount()I

    move-result v0

    goto :goto_0
.end method

.method public getUserRole()I
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->role:I

    return v0
.end method

.method public isOpenEncrypt()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mIsOpenEncrypt:Z

    return v0
.end method

.method public isShowManageRedDot()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 197
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->canManage()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mAuthLevel:I

    if-nez v1, :cond_0

    .line 198
    invoke-static {}, Lfls;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcpk;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-wide v2, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mOrgId:J

    .line 199
    invoke-static {v2, v3}, Lfls;->d(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mShowRedDot:Z

    .line 201
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mShowRedDot:Z

    return v0
.end method

.method public setAuthLevel(I)V
    .locals 0
    .param p1, "authLevel"    # I

    .prologue
    .line 221
    iput p1, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mAuthLevel:I

    .line 222
    return-void
.end method

.method public setOrgId(J)V
    .locals 1
    .param p1, "orgId"    # J

    .prologue
    .line 209
    iput-wide p1, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mOrgId:J

    .line 210
    return-void
.end method

.method public setOrgObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V
    .locals 0
    .param p1, "orgObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->mOrgObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 238
    return-void
.end method
