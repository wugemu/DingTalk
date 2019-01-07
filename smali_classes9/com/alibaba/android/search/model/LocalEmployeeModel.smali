.class public Lcom/alibaba/android/search/model/LocalEmployeeModel;
.super Lcom/alibaba/android/search/model/BaseModel;
.source "LocalEmployeeModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x44439223a2cc632bL


# instance fields
.field protected mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

.field protected mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/alibaba/android/search/model/BaseModel;-><init>()V

    .line 59
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->LocalEmployee:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/LocalEmployeeModel;->setModelType(Lcom/alibaba/android/search/model/BaseModel$ModelType;)V

    .line 60
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/LocalEmployeeModel;->setChooseMode(I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;)V
    .locals 0
    .param p1, "userIntimacyPushObject"    # Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/alibaba/android/search/model/LocalEmployeeModel;-><init>()V

    .line 65
    invoke-virtual {p0, p1}, Lcom/alibaba/android/search/model/LocalEmployeeModel;->init(Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;)V

    .line 66
    return-void
.end method

.method private getFinalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 121
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v1, v2, :cond_1

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    if-eq v1, v2, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/LocalEmployeeModel;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    :cond_0
    :goto_0
    return-object v0

    .line 125
    :cond_1
    const-string/jumbo v0, "[L]"

    .line 133
    .local v0, "type":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/search/model/LocalEmployeeModel;->mKeyword:Ljava/lang/String;

    invoke-static {v1, v2}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
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
    .line 79
    iget-object v2, p0, Lcom/alibaba/android/search/model/LocalEmployeeModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    if-nez v2, :cond_0

    .line 80
    const/4 v1, 0x0

    .line 89
    :goto_0
    return-object v1

    .line 83
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v1, "userIconObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/SearchUserIconObject;>;"
    new-instance v0, Lcom/alibaba/android/search/SearchUserIconObject;

    invoke-direct {v0}, Lcom/alibaba/android/search/SearchUserIconObject;-><init>()V

    .line 85
    .local v0, "userIconObject":Lcom/alibaba/android/search/SearchUserIconObject;
    iget-object v2, p0, Lcom/alibaba/android/search/model/LocalEmployeeModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-object v2, v2, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->avatar:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/search/SearchUserIconObject;->mediaId:Ljava/lang/String;

    .line 86
    iget-object v2, p0, Lcom/alibaba/android/search/model/LocalEmployeeModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-object v2, v2, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->nick:Ljava/lang/String;

    invoke-static {v2}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/search/SearchUserIconObject;->nick:Ljava/lang/String;

    .line 87
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

    .line 151
    const-string/jumbo v0, ""

    .line 152
    .local v0, "desc":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/search/model/LocalEmployeeModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    if-nez v2, :cond_0

    move-object v1, v0

    .line 166
    .end local v0    # "desc":Ljava/lang/String;
    .local v1, "desc":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 156
    .end local v1    # "desc":Ljava/lang/String;
    .restart local v0    # "desc":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/search/model/LocalEmployeeModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-object v2, v2, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->depName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 157
    sget v2, Lemt$g;->dt_search_org_contact_colleague:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 159
    new-array v2, v6, [Ljava/lang/String;

    aput-object v0, v2, v4

    const-string/jumbo v3, "-"

    aput-object v3, v2, v5

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    :cond_1
    new-array v2, v6, [Ljava/lang/String;

    aput-object v0, v2, v4

    iget-object v3, p0, Lcom/alibaba/android/search/model/LocalEmployeeModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-object v3, v3, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->depName:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    move-object v1, v0

    .line 166
    .end local v0    # "desc":Ljava/lang/String;
    .restart local v1    # "desc":Ljava/lang/String;
    goto :goto_0

    .line 162
    .end local v1    # "desc":Ljava/lang/String;
    .restart local v0    # "desc":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/search/model/LocalEmployeeModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-object v2, v2, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->orgName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 163
    iget-object v2, p0, Lcom/alibaba/android/search/model/LocalEmployeeModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

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
    .line 173
    iget-object v0, p0, Lcom/alibaba/android/search/model/LocalEmployeeModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/model/LocalEmployeeModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-object v0, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->empName:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/search/model/LocalEmployeeModel;->mKeyword:Ljava/lang/String;

    invoke-static {v0, v1}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/LocalEmployeeModel;->getUid()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 104
    iget-object v1, p0, Lcom/alibaba/android/search/model/LocalEmployeeModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    if-nez v1, :cond_0

    .line 105
    const-string/jumbo v1, ""

    .line 117
    :goto_0
    return-object v1

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/search/model/LocalEmployeeModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-object v0, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->nick:Ljava/lang/String;

    .line 109
    .local v0, "displayName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/alibaba/android/search/model/LocalEmployeeModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-object v0, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->empName:Ljava/lang/String;

    .line 113
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    const-string/jumbo v1, ""

    goto :goto_0

    .line 117
    :cond_2
    invoke-direct {p0, v0}, Lcom/alibaba/android/search/model/LocalEmployeeModel;->getFinalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPersonStatus()Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alibaba/android/search/model/LocalEmployeeModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x0

    .line 145
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/model/LocalEmployeeModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

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
    .line 94
    iget-object v0, p0, Lcom/alibaba/android/search/model/LocalEmployeeModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/alibaba/android/search/model/LocalEmployeeModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-wide v0, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    .line 97
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected getUserIdentityObjectSource()I
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public getUserIntimacyPushObject()Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/alibaba/android/search/model/LocalEmployeeModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    return-object v0
.end method

.method protected init(Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;)V
    .locals 0
    .param p1, "userIntimacyPushObject"    # Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/alibaba/android/search/model/LocalEmployeeModel;->setUserIntimacyPushObject(Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;)V

    .line 70
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
    .line 181
    const-string/jumbo v0, "search_click_type"

    const-string/jumbo v1, "type=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "groupcontact"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Letd;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    iget-object v0, p0, Lcom/alibaba/android/search/model/LocalEmployeeModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/model/LocalEmployeeModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-wide v0, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lemt$e;->iv_profile:I

    if-ne v0, v1, :cond_2

    .line 189
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/user/profile.html"

    new-instance v2, Lcom/alibaba/android/search/model/LocalEmployeeModel$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/search/model/LocalEmployeeModel$1;-><init>(Lcom/alibaba/android/search/model/LocalEmployeeModel;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 206
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/search/model/LocalEmployeeModel;->mUserIdentityObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {v0}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 207
    invoke-static {p1, p0}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Landroid/content/Context;Lcom/alibaba/android/search/model/BaseModel;)V

    goto :goto_0

    .line 199
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/LocalEmployeeModel;->isRobot()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 200
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/model/LocalEmployeeModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-wide v2, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    invoke-virtual {v0, p1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Landroid/app/Activity;J)V

    goto :goto_1

    .line 203
    :cond_3
    invoke-virtual {p0, p1}, Lcom/alibaba/android/search/model/LocalEmployeeModel;->openConversation(Landroid/app/Activity;)V

    goto :goto_1
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alibaba/android/search/model/LocalEmployeeModel;->mKeyword:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setUserIntimacyPushObject(Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;)V
    .locals 1
    .param p1, "userIntimacyPushObject"    # Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/alibaba/android/search/model/LocalEmployeeModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    .line 229
    iget-object v0, p0, Lcom/alibaba/android/search/model/LocalEmployeeModel;->mUserIntimacyPushObject:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    invoke-static {v0}, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->getUserIdentityObject(Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/LocalEmployeeModel;->setUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 230
    return-void
.end method
