.class public Lcom/alibaba/alimei/mail/operation/tools/OperationModelsConvertHelper;
.super Ljava/lang/Object;
.source "OperationModelsConvertHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertAccountModel(Lcom/alibaba/alimei/framework/db/Account;Lcom/alibaba/alimei/framework/db/HostAuth;)Lcom/alibaba/alimei/mail/operation/model/OpsAccountModel;
    .locals 12
    .param p0, "account"    # Lcom/alibaba/alimei/framework/db/Account;
    .param p1, "hostAuth"    # Lcom/alibaba/alimei/framework/db/HostAuth;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 27
    if-nez p0, :cond_1

    .line 28
    const/4 v1, 0x0

    .line 64
    :cond_0
    :goto_0
    return-object v1

    .line 31
    :cond_1
    new-instance v1, Lcom/alibaba/alimei/mail/operation/model/OpsAccountModel;

    invoke-direct {v1}, Lcom/alibaba/alimei/mail/operation/model/OpsAccountModel;-><init>()V

    .line 32
    .local v1, "opsAccount":Lcom/alibaba/alimei/mail/operation/model/OpsAccountModel;
    iget-wide v6, p0, Lcom/alibaba/alimei/framework/db/Account;->mId:J

    iput-wide v6, v1, Lcom/alibaba/alimei/mail/operation/model/OpsAccountModel;->id:J

    .line 33
    iget-object v2, p0, Lcom/alibaba/alimei/framework/db/Account;->mEmailAddress:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/alimei/mail/operation/model/OpsAccountModel;->emailAddress:Ljava/lang/String;

    .line 34
    iget-object v2, p0, Lcom/alibaba/alimei/framework/db/Account;->mDisplayName:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/alimei/mail/operation/model/OpsAccountModel;->displayName:Ljava/lang/String;

    .line 35
    iget-object v2, p0, Lcom/alibaba/alimei/framework/db/Account;->mSyncKey:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/alimei/mail/operation/model/OpsAccountModel;->folderSyncKey:Ljava/lang/String;

    .line 36
    iget-object v2, p0, Lcom/alibaba/alimei/framework/db/Account;->mSyncKey:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/alimei/mail/operation/model/OpsAccountModel;->tagSyncKey:Ljava/lang/String;

    .line 37
    iget-boolean v2, p0, Lcom/alibaba/alimei/framework/db/Account;->mIsDefault:Z

    iput-boolean v2, v1, Lcom/alibaba/alimei/mail/operation/model/OpsAccountModel;->isDefault:Z

    .line 38
    iget-object v2, p0, Lcom/alibaba/alimei/framework/db/Account;->mSenderName:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/alimei/mail/operation/model/OpsAccountModel;->senderName:Ljava/lang/String;

    .line 39
    iget v2, p0, Lcom/alibaba/alimei/framework/db/Account;->accountType:I

    iput v2, v1, Lcom/alibaba/alimei/mail/operation/model/OpsAccountModel;->accountType:I

    .line 40
    iget-object v2, p0, Lcom/alibaba/alimei/framework/db/Account;->incomingServer:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/alimei/mail/operation/model/OpsAccountModel;->incomingServer:Ljava/lang/String;

    .line 41
    iget-object v2, p0, Lcom/alibaba/alimei/framework/db/Account;->incomingPort:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/alimei/mail/operation/model/OpsAccountModel;->incomingPort:Ljava/lang/String;

    .line 42
    iget v2, p0, Lcom/alibaba/alimei/framework/db/Account;->incomingSsl:I

    iput v2, v1, Lcom/alibaba/alimei/mail/operation/model/OpsAccountModel;->incomingSsl:I

    .line 43
    iget-object v2, p0, Lcom/alibaba/alimei/framework/db/Account;->smtpServer:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/alimei/mail/operation/model/OpsAccountModel;->smtpServer:Ljava/lang/String;

    .line 44
    iget-object v2, p0, Lcom/alibaba/alimei/framework/db/Account;->smtpPort:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/alimei/mail/operation/model/OpsAccountModel;->smtpPort:Ljava/lang/String;

    .line 45
    iget v2, p0, Lcom/alibaba/alimei/framework/db/Account;->smtpSsl:I

    iput v2, v1, Lcom/alibaba/alimei/mail/operation/model/OpsAccountModel;->smtpSsl:I

    .line 46
    iget-object v2, p0, Lcom/alibaba/alimei/framework/db/Account;->oauthToken:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_1
    iput-boolean v2, v1, Lcom/alibaba/alimei/mail/operation/model/OpsAccountModel;->isOAuthAccount:Z

    .line 47
    iget-wide v6, p0, Lcom/alibaba/alimei/framework/db/Account;->oauthExpires:J

    iput-wide v6, v1, Lcom/alibaba/alimei/mail/operation/model/OpsAccountModel;->oauthExpires:J

    .line 49
    iget v2, p0, Lcom/alibaba/alimei/framework/db/Account;->accountType:I

    invoke-static {v2}, Lyu;->a(I)Z

    move-result v0

    .line 50
    .local v0, "isCommonAccount":Z
    if-eqz v0, :cond_5

    .line 51
    iput-boolean v3, v1, Lcom/alibaba/alimei/mail/operation/model/OpsAccountModel;->isLogin:Z

    .line 52
    iget-boolean v2, v1, Lcom/alibaba/alimei/mail/operation/model/OpsAccountModel;->isOAuthAccount:Z

    if-eqz v2, :cond_2

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/alibaba/alimei/framework/db/Account;->oauthExpires:J

    sub-long/2addr v6, v8

    cmp-long v2, v6, v10

    if-gez v2, :cond_4

    :goto_2
    iput-boolean v3, v1, Lcom/alibaba/alimei/mail/operation/model/OpsAccountModel;->isLogin:Z

    .line 59
    :cond_2
    :goto_3
    if-eqz p1, :cond_0

    .line 60
    iget-object v2, p1, Lcom/alibaba/alimei/framework/db/HostAuth;->expiredTime:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/alimei/mail/operation/model/OpsAccountModel;->expiredTime:Ljava/lang/String;

    .line 61
    iget-object v2, p1, Lcom/alibaba/alimei/framework/db/HostAuth;->masterAccount:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/alimei/mail/operation/model/OpsAccountModel;->masterAccount:Ljava/lang/String;

    goto :goto_0

    .end local v0    # "isCommonAccount":Z
    :cond_3
    move v2, v4

    .line 46
    goto :goto_1

    .restart local v0    # "isCommonAccount":Z
    :cond_4
    move v3, v4

    .line 53
    goto :goto_2

    .line 56
    :cond_5
    iget-wide v6, p0, Lcom/alibaba/alimei/framework/db/Account;->mHostAuthKeyRecv:J

    cmp-long v2, v6, v10

    if-lez v2, :cond_6

    :goto_4
    iput-boolean v3, v1, Lcom/alibaba/alimei/mail/operation/model/OpsAccountModel;->isLogin:Z

    goto :goto_3

    :cond_6
    move v3, v4

    goto :goto_4
.end method

.method public static convertDingtalkUserProfile(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile;
    .locals 10
    .param p0, "userObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .prologue
    .line 68
    if-nez p0, :cond_1

    .line 69
    const/4 v3, 0x0

    .line 108
    :cond_0
    :goto_0
    return-object v3

    .line 72
    :cond_1
    new-instance v3, Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile;

    invoke-direct {v3}, Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile;-><init>()V

    .line 73
    .local v3, "opsProfile":Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile;
    iget-wide v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    iput-wide v6, v3, Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile;->uid:J

    .line 74
    iget-boolean v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mAllowChangeDingTalkId:Z

    iput-boolean v6, v3, Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile;->allowChangeDingTalkId:Z

    .line 75
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->email:Ljava/lang/String;

    iput-object v6, v3, Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile;->email:Ljava/lang/String;

    .line 76
    iget-boolean v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mIsEmailBind:Z

    iput-boolean v6, v3, Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile;->isBindEmail:Z

    .line 77
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mobile:Ljava/lang/String;

    iput-object v6, v3, Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile;->mobile:Ljava/lang/String;

    .line 78
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->workMobile:Ljava/lang/String;

    iput-object v6, v3, Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile;->workMobile:Ljava/lang/String;

    .line 80
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 81
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 82
    .local v0, "employeeList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 83
    .local v5, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    .local v1, "opsEmployeeObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile$DingtalkOrgEmployeeObject;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 86
    .local v4, "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v4, :cond_2

    .line 90
    new-instance v2, Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile$DingtalkOrgEmployeeObject;

    invoke-direct {v2}, Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile$DingtalkOrgEmployeeObject;-><init>()V

    .line 91
    .local v2, "opsObject":Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile$DingtalkOrgEmployeeObject;
    iget-wide v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->uid:J

    iput-wide v8, v2, Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile$DingtalkOrgEmployeeObject;->uid:J

    .line 92
    iget-boolean v7, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->isOrgAuth:Z

    iput-boolean v7, v2, Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile$DingtalkOrgEmployeeObject;->isOrgAuth:Z

    .line 93
    iget-object v7, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgAuthEmail:Ljava/lang/String;

    iput-object v7, v2, Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile$DingtalkOrgEmployeeObject;->orgAuthEmail:Ljava/lang/String;

    .line 94
    iget-wide v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iput-wide v8, v2, Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile$DingtalkOrgEmployeeObject;->orgId:J

    .line 95
    iget-object v7, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgEmail:Ljava/lang/String;

    iput-object v7, v2, Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile$DingtalkOrgEmployeeObject;->orgMail:Ljava/lang/String;

    .line 96
    iget-object v7, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    iput-object v7, v2, Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile$DingtalkOrgEmployeeObject;->orgName:Ljava/lang/String;

    .line 97
    iget-object v7, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgNickName:Ljava/lang/String;

    iput-object v7, v2, Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile$DingtalkOrgEmployeeObject;->orgNickName:Ljava/lang/String;

    .line 98
    iget-object v7, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    iput-object v7, v2, Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile$DingtalkOrgEmployeeObject;->orgUserName:Ljava/lang/String;

    .line 99
    iget v7, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->role:I

    iput v7, v2, Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile$DingtalkOrgEmployeeObject;->role:I

    .line 102
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 105
    .end local v2    # "opsObject":Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile$DingtalkOrgEmployeeObject;
    .end local v4    # "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_3
    iput-object v1, v3, Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile;->orgEmployeeObjects:Ljava/util/List;

    goto :goto_0
.end method

.method public static convertToOpsFolderModel(Lcom/alibaba/alimei/sdk/model/FolderModel;)Lcom/alibaba/alimei/mail/operation/model/OpsFolderModel;
    .locals 2
    .param p0, "folderModel"    # Lcom/alibaba/alimei/sdk/model/FolderModel;

    .prologue
    .line 112
    if-nez p0, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 122
    :goto_0
    return-object v0

    .line 116
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/mail/operation/model/OpsFolderModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/mail/operation/model/OpsFolderModel;-><init>()V

    .line 117
    .local v0, "opsFolder":Lcom/alibaba/alimei/mail/operation/model/OpsFolderModel;
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/mail/operation/model/OpsFolderModel;->name:Ljava/lang/String;

    .line 118
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->isPush:Z

    iput-boolean v1, v0, Lcom/alibaba/alimei/mail/operation/model/OpsFolderModel;->newMailReminder:Z

    .line 119
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/mail/operation/model/OpsFolderModel;->serverId:Ljava/lang/String;

    .line 120
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->parentServerId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/mail/operation/model/OpsFolderModel;->parentServerId:Ljava/lang/String;

    .line 121
    iget v1, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    iput v1, v0, Lcom/alibaba/alimei/mail/operation/model/OpsFolderModel;->type:I

    goto :goto_0
.end method
