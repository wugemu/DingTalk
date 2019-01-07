.class public Lcom/alibaba/android/search/model/FriendModel;
.super Lcom/alibaba/android/search/model/BaseModel;
.source "FriendModel.java"


# instance fields
.field protected mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/alibaba/android/search/model/BaseModel;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/search/model/FriendModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 56
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->Friend:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/FriendModel;->setModelType(Lcom/alibaba/android/search/model/BaseModel$ModelType;)V

    .line 57
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/FriendModel;->setChooseMode(I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 1
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alibaba/android/search/model/BaseModel;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/alibaba/android/search/model/FriendModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 62
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->Friend:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/FriendModel;->setModelType(Lcom/alibaba/android/search/model/BaseModel$ModelType;)V

    .line 63
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/FriendModel;->setChooseMode(I)V

    .line 64
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/FriendModel;->setUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 65
    return-void
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
    .line 70
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v2, "userIconObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/SearchUserIconObject;>;"
    new-instance v1, Lcom/alibaba/android/search/SearchUserIconObject;

    invoke-direct {v1}, Lcom/alibaba/android/search/SearchUserIconObject;-><init>()V

    .line 74
    .local v1, "userIconObject":Lcom/alibaba/android/search/SearchUserIconObject;
    iget-object v3, p0, Lcom/alibaba/android/search/model/FriendModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-nez v3, :cond_0

    .line 84
    :goto_0
    return-object v2

    .line 78
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/search/model/FriendModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-static {v3}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "realNick":Ljava/lang/String;
    invoke-static {v0}, Lcpt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/search/SearchUserIconObject;->nick:Ljava/lang/String;

    .line 80
    iget-object v3, p0, Lcom/alibaba/android/search/model/FriendModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/android/search/SearchUserIconObject;->mediaId:Ljava/lang/String;

    .line 82
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getDesc(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alibaba/android/search/model/FriendModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/FriendModel;->getContactSource()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/search/ContactSource;->OrgNameSearch:Lcom/alibaba/android/search/ContactSource;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/model/FriendModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/model/FriendModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->orgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lemt$g;->dt_search_source_friend_org_name:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/model/FriendModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->orgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/search/model/BaseModel;->getDesc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDesc2(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/alibaba/android/search/model/BaseModel;->getDesc2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "desc":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/alibaba/android/search/model/FriendModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/search/model/FriendModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/search/model/FriendModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lemt$g;->nick_prefix:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/model/FriendModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .end local v0    # "desc":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 127
    .restart local v0    # "desc":Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 128
    .local v1, "descBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/FriendModel;->getContactSource()Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/search/ContactSource;->CommonContact:Lcom/alibaba/android/search/ContactSource;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 129
    sget v2, Lemt$g;->dt_search_source_common_contact:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 130
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/FriendModel;->getContactSource()Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/search/ContactSource;->Friend:Lcom/alibaba/android/search/ContactSource;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 131
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 132
    sget v2, Lemt$g;->dt_search_source_dingtalk_friends:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 137
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/FriendModel;->getContactSource()Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/search/ContactSource;->Friend:Lcom/alibaba/android/search/ContactSource;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/android/search/model/FriendModel;->getContactSource()Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/search/ContactSource;->OrgNameSearch:Lcom/alibaba/android/search/ContactSource;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    :cond_4
    sget v2, Lemt$g;->dt_search_source_dingtalk_friends:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1
.end method

.method public getId()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 180
    iget-object v0, p0, Lcom/alibaba/android/search/model/FriendModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/model/FriendModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/alibaba/android/search/model/FriendModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 184
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
    .line 91
    iget-object v1, p0, Lcom/alibaba/android/search/model/FriendModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/search/model/FriendModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/alibaba/android/search/model/FriendModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 99
    .local v0, "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 93
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/search/model/FriendModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/search/model/FriendModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/alibaba/android/search/model/FriendModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 96
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, ""

    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0
.end method

.method public getPersonStatus()Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/android/search/model/FriendModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 107
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/model/FriendModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;

    move-result-object v0

    goto :goto_0
.end method

.method protected getUserIdentityObjectSource()I
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x2

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
    .line 146
    const-string/jumbo v0, "search_click_type"

    const-string/jumbo v1, "type=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "dingfriend"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Letd;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/alibaba/android/search/model/FriendModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-nez v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 153
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lemt$e;->iv_profile:I

    if-ne v0, v1, :cond_1

    .line 154
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/user/profile.html"

    new-instance v2, Lcom/alibaba/android/search/model/FriendModel$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/search/model/FriendModel$1;-><init>(Lcom/alibaba/android/search/model/FriendModel;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 169
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/search/model/FriendModel;->mUserIdentityObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {v0}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 170
    invoke-static {p1, p0}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Landroid/content/Context;Lcom/alibaba/android/search/model/BaseModel;)V

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/android/search/model/FriendModel;->openConversation(Landroid/app/Activity;)V

    goto :goto_1
.end method
