.class public Lcom/alibaba/android/search/model/RecommendContactModel;
.super Lcom/alibaba/android/search/model/BaseModel;
.source "RecommendContactModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x16595affafc2ea30L


# instance fields
.field protected mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

.field protected mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/alibaba/android/search/model/BaseModel;-><init>()V

    .line 69
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->RecommendContact:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/RecommendContactModel;->setModelType(Lcom/alibaba/android/search/model/BaseModel$ModelType;)V

    .line 70
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/RecommendContactModel;->setChooseMode(I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;)V
    .locals 0
    .param p1, "userIntimacyPushObject"    # Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/alibaba/android/search/model/RecommendContactModel;-><init>()V

    .line 75
    invoke-virtual {p0, p1}, Lcom/alibaba/android/search/model/RecommendContactModel;->init(Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;)V

    .line 76
    return-void
.end method

.method private getFinalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 146
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v2, v3, :cond_1

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    if-eq v2, v3, :cond_1

    .line 147
    iget-object v2, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mKeyword:Ljava/lang/String;

    invoke-static {p1, v2}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    :cond_0
    :goto_0
    return-object v1

    .line 150
    :cond_1
    const-string/jumbo v1, ""

    .line 151
    .local v1, "type":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/RecommendContactModel;->getLogSearchType()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "searchType":Ljava/lang/String;
    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->RECOMMEND_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 153
    const-string/jumbo v1, "[R]"

    .line 158
    :cond_2
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 161
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mKeyword:Ljava/lang/String;

    invoke-static {v2, v3}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 154
    :cond_3
    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->CLICKED_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 155
    const-string/jumbo v1, "[H]"

    goto :goto_1
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
    .line 89
    iget-object v2, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    if-nez v2, :cond_0

    .line 90
    const/4 v1, 0x0

    .line 99
    :goto_0
    return-object v1

    .line 93
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v1, "userIconObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/SearchUserIconObject;>;"
    new-instance v0, Lcom/alibaba/android/search/SearchUserIconObject;

    invoke-direct {v0}, Lcom/alibaba/android/search/SearchUserIconObject;-><init>()V

    .line 95
    .local v0, "userIconObject":Lcom/alibaba/android/search/SearchUserIconObject;
    iget-object v2, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-object v2, v2, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->avatar:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/search/SearchUserIconObject;->mediaId:Ljava/lang/String;

    .line 96
    iget-object v2, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-object v2, v2, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->nick:Ljava/lang/String;

    invoke-static {v2}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/search/SearchUserIconObject;->nick:Ljava/lang/String;

    .line 97
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
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

    .line 176
    const-string/jumbo v0, ""

    .line 177
    .local v0, "desc":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    if-nez v2, :cond_0

    move-object v1, v0

    .line 191
    .end local v0    # "desc":Ljava/lang/String;
    .local v1, "desc":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 181
    .end local v1    # "desc":Ljava/lang/String;
    .restart local v0    # "desc":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-object v2, v2, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->depName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 182
    sget v2, Lemt$g;->dt_search_org_contact_colleague:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 184
    new-array v2, v6, [Ljava/lang/String;

    aput-object v0, v2, v4

    const-string/jumbo v3, "-"

    aput-object v3, v2, v5

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    :cond_1
    new-array v2, v6, [Ljava/lang/String;

    aput-object v0, v2, v4

    iget-object v3, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-object v3, v3, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->depName:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    move-object v1, v0

    .line 191
    .end local v0    # "desc":Ljava/lang/String;
    .restart local v1    # "desc":Ljava/lang/String;
    goto :goto_0

    .line 187
    .end local v1    # "desc":Ljava/lang/String;
    .restart local v0    # "desc":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-object v2, v2, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->orgName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 188
    iget-object v2, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-object v0, v2, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->orgName:Ljava/lang/String;

    goto :goto_1
.end method

.method public getDesc2(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 198
    iget-object v0, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-object v0, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->empName:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mKeyword:Ljava/lang/String;

    invoke-static {v0, v1}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getExplain(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 244
    iget-object v1, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->fromSearchExtra:Ljava/io/Serializable;

    instance-of v1, v1, Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchExtra2OrgModel;

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->fromSearchExtra:Ljava/io/Serializable;

    check-cast v0, Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchExtra2OrgModel;

    .line 246
    .local v0, "searchExtra2OrgModel":Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchExtra2OrgModel;
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchExtra2OrgModel;->explain:Ljava/lang/String;

    .line 251
    .end local v0    # "searchExtra2OrgModel":Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchExtra2OrgModel;
    :goto_0
    return-object v1

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-object v1, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->searchExtra2OrgModel:Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchExtra2OrgModel;

    if-eqz v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-object v1, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->searchExtra2OrgModel:Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchExtra2OrgModel;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchExtra2OrgModel;->explain:Ljava/lang/String;

    goto :goto_0

    .line 251
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/RecommendContactModel;->getUid()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    if-nez v0, :cond_0

    .line 135
    const-string/jumbo v0, ""

    .line 142
    :goto_0
    return-object v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-object v0, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->alias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-object v0, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->alias:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/android/search/model/RecommendContactModel;->getFinalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-object v0, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->nick:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/android/search/model/RecommendContactModel;->getFinalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPersonStatus()Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 167
    iget-object v0, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-nez v0, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 170
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;

    move-result-object v0

    goto :goto_0
.end method

.method public getUid()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-wide v0, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    .line 106
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected getUserIdentityObjectSource()I
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public getUserIntimacyPushObject()Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    return-object v0
.end method

.method protected init(Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;)V
    .locals 0
    .param p1, "userIntimacyPushObject"    # Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/alibaba/android/search/model/RecommendContactModel;->setUserIntimacyPushObject(Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;)V

    .line 80
    return-void
.end method

.method public onClick(Landroid/app/Activity;Landroid/view/View;)V
    .locals 5
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 204
    const-string/jumbo v0, "search_click_type"

    const-string/jumbo v1, "type=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "groupcontact"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Letd;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    iget-object v0, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-wide v0, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lemt$e;->iv_profile:I

    if-ne v0, v1, :cond_2

    .line 212
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/user/profile.html"

    new-instance v2, Lcom/alibaba/android/search/model/RecommendContactModel$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/search/model/RecommendContactModel$1;-><init>(Lcom/alibaba/android/search/model/RecommendContactModel;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 229
    :goto_1
    invoke-static {p1, p0}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Landroid/content/Context;Lcom/alibaba/android/search/model/BaseModel;)V

    goto :goto_0

    .line 222
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/RecommendContactModel;->isRobot()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 223
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-wide v2, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    invoke-virtual {v0, p1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Landroid/app/Activity;J)V

    goto :goto_1

    .line 226
    :cond_3
    invoke-virtual {p0, p1}, Lcom/alibaba/android/search/model/RecommendContactModel;->openConversation(Landroid/app/Activity;)V

    goto :goto_1
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mKeyword:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setUserIntimacyPushObject(Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;)V
    .locals 1
    .param p1, "userIntimacyPushObject"    # Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    .line 260
    iget-object v0, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    invoke-static {v0}, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->getUserIdentityObject(Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/RecommendContactModel;->setUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 261
    return-void
.end method

.method public setUserProfileObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 7
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v0, 0x0

    const/4 v6, 0x0

    .line 111
    iput-object p1, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 112
    iget-object v2, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    if-eqz v2, :cond_2

    .line 114
    iget-object v2, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgIdList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-wide v2, v2, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->orgId:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgIdList:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-wide v4, v3, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->orgId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 115
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-object v3, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgIdList:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgIdList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgIdList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_1
    iput-wide v0, v2, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->orgId:J

    .line 116
    iget-object v0, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->depName:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->orgName:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->empName:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->mobile:Ljava/lang/String;

    .line 121
    invoke-static {}, Lesm;->a()Lesm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    invoke-virtual {v0, v1}, Lesm;->a(Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;)V

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setUserProfileObject: resigned user "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 1120
    const-wide/32 v4, 0x6a01e35

    sub-long/2addr v2, v4

    .line 122
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    .line 2073
    const-string/jumbo v2, "search_rec"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v0, :cond_3

    .line 127
    iget-object v0, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    iput v0, p0, Lcom/alibaba/android/search/model/RecommendContactModel;->mUserType:I

    .line 129
    :cond_3
    return-void
.end method
