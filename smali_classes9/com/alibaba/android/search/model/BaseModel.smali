.class public abstract Lcom/alibaba/android/search/model/BaseModel;
.super Ljava/lang/Object;
.source "BaseModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/search/model/BaseModel$ModelType;
    }
.end annotation


# instance fields
.field private transient mAssureModel:Lcom/alibaba/android/search/assure/model/AssureModel;

.field private mChooseMode:I

.field private mContactSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/ContactSource;",
            ">;"
        }
    .end annotation
.end field

.field private mDataChangeListener:Leoa;

.field private mItemClicked:Z

.field protected mKeyword:Ljava/lang/String;

.field private mListPosition:I

.field private mModelType:Lcom/alibaba/android/search/model/BaseModel$ModelType;

.field private mModifyTime:J

.field public mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

.field private mRecallSearchResult:Z

.field private mScore:D

.field private mSearchClickLogModel:Lcom/alibaba/android/search/model/SearchClickLogModel;

.field public mUserIdentityObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field protected mUserType:I

.field protected mWeight:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mChooseMode:I

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mUserType:I

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mContactSources:Ljava/util/List;

    .line 70
    new-instance v0, Lcom/alibaba/android/search/model/SearchClickLogModel;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/SearchClickLogModel;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mSearchClickLogModel:Lcom/alibaba/android/search/model/SearchClickLogModel;

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mModifyTime:J

    .line 74
    iput-wide v2, p0, Lcom/alibaba/android/search/model/BaseModel;->mScore:D

    .line 76
    iput-wide v2, p0, Lcom/alibaba/android/search/model/BaseModel;->mWeight:D

    .line 277
    return-void
.end method

.method private removeHighlight(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 1
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    .line 462
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-static {v0}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 463
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    invoke-static {v0}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 464
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-static {v0}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 465
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    invoke-static {v0}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    .line 466
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgUserName:Ljava/lang/String;

    invoke-static {v0}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgUserName:Ljava/lang/String;

    .line 467
    return-void
.end method

.method private setUserIdentityObjectSource()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 474
    iget-object v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mUserIdentityObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mUserIdentityObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-virtual {p0}, Lcom/alibaba/android/search/model/BaseModel;->getUserIdentityObjectSource()I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    .line 477
    :cond_0
    return-void
.end method


# virtual methods
.method public addContactSource(Lcom/alibaba/android/search/ContactSource;)V
    .locals 1
    .param p1, "contactSource"    # Lcom/alibaba/android/search/ContactSource;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mContactSources:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public fillAvatarRightBottomIconRes(Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;)V
    .locals 0
    .param p1, "avatarImageView"    # Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .prologue
    .line 127
    return-void
.end method

.method public getAssureModel()Lcom/alibaba/android/search/assure/model/AssureModel;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mAssureModel:Lcom/alibaba/android/search/assure/model/AssureModel;

    return-object v0
.end method

.method public getAvatar()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/SearchUserIconObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChooseMode()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mChooseMode:I

    return v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContactSource()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/ContactSource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mContactSources:Ljava/util/List;

    return-object v0
.end method

.method public getDesc(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Lcom/alibaba/android/search/model/OrgContactModel;

    iget-object v1, p0, Lcom/alibaba/android/search/model/BaseModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-direct {v0, v1}, Lcom/alibaba/android/search/model/OrgContactModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    invoke-virtual {v0, p1}, Lcom/alibaba/android/search/model/OrgContactModel;->getDesc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDesc2(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Lcom/alibaba/android/search/model/OrgContactModel;

    iget-object v1, p0, Lcom/alibaba/android/search/model/BaseModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-direct {v0, v1}, Lcom/alibaba/android/search/model/OrgContactModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    invoke-virtual {v0, p1}, Lcom/alibaba/android/search/model/OrgContactModel;->getDesc2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExplain(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 137
    iget-object v1, p0, Lcom/alibaba/android/search/model/BaseModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/search/model/BaseModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->fromSearchExtra:Ljava/io/Serializable;

    instance-of v1, v1, Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchExtra2OrgModel;

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/alibaba/android/search/model/BaseModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->fromSearchExtra:Ljava/io/Serializable;

    check-cast v0, Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchExtra2OrgModel;

    .line 139
    .local v0, "searchExtra2OrgModel":Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchExtra2OrgModel;
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchExtra2OrgModel;->explain:Ljava/lang/String;

    .line 141
    .end local v0    # "searchExtra2OrgModel":Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchExtra2OrgModel;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGroupTagIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 541
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconResId()I
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 533
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mKeyword:Ljava/lang/String;

    return-object v0
.end method

.method public getListPosition()I
    .locals 1

    .prologue
    .line 525
    iget v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mListPosition:I

    return v0
.end method

.method public getLogDe()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mSearchClickLogModel:Lcom/alibaba/android/search/model/SearchClickLogModel;

    invoke-virtual {v0}, Lcom/alibaba/android/search/model/SearchClickLogModel;->isDe()Z

    move-result v0

    return v0
.end method

.method public getLogSearchType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mSearchClickLogModel:Lcom/alibaba/android/search/model/SearchClickLogModel;

    invoke-virtual {v0}, Lcom/alibaba/android/search/model/SearchClickLogModel;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mSearchClickLogModel:Lcom/alibaba/android/search/model/SearchClickLogModel;

    invoke-virtual {v0}, Lcom/alibaba/android/search/model/SearchClickLogModel;->getUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelType()Lcom/alibaba/android/search/model/BaseModel$ModelType;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mModelType:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    return-object v0
.end method

.method public getModifyTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 262
    iget-wide v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mModifyTime:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNameIconRes()I
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public getOrgNodeItemObject()Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    return-object v0
.end method

.method public getPersonStatus()Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScore()D
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 270
    iget-wide v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mScore:D

    return-wide v0
.end method

.method public getSearchClickLogModel()Lcom/alibaba/android/search/model/SearchClickLogModel;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mSearchClickLogModel:Lcom/alibaba/android/search/model/SearchClickLogModel;

    return-object v0
.end method

.method public getUserIdentityObject()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mUserIdentityObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    return-object v0
.end method

.method protected getUserIdentityObjectSource()I
    .locals 1

    .prologue
    .line 470
    const/4 v0, 0x0

    return v0
.end method

.method public getWeight()D
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 254
    iget-wide v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mWeight:D

    return-wide v0
.end method

.method public isDemissionColleague()Z
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-static {v0}, Lcom/alibaba/android/search/utils/SearchUtils;->b(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Z

    move-result v0

    return v0
.end method

.method public isEnterprise()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public isGroupTagConfigured()Z
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x0

    return v0
.end method

.method public isItemClicked()Z
    .locals 1

    .prologue
    .line 521
    iget-boolean v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mItemClicked:Z

    return v0
.end method

.method public isRecallSearchResult()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mRecallSearchResult:Z

    return v0
.end method

.method public isRobot()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 510
    iget v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mUserType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markItemClick()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 514
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mItemClicked:Z

    .line 515
    iget v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mChooseMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 516
    invoke-static {}, Lcom/alibaba/android/search/service/SearchHistoryManager;->a()Lcom/alibaba/android/search/service/SearchHistoryManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/android/search/service/SearchHistoryManager;->a(Lcom/alibaba/android/search/model/BaseModel;)V

    .line 518
    :cond_0
    return-void
.end method

.method public onClick(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 104
    return-void
.end method

.method protected onDataChange()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mDataChangeListener:Leoa;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mDataChangeListener:Leoa;

    invoke-interface {v0}, Leoa;->a()V

    .line 211
    :cond_0
    return-void
.end method

.method protected openConversation(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 495
    if-nez p1, :cond_1

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mUserIdentityObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mUserIdentityObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 501
    iget-object v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mUserIdentityObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/search/model/BaseModel;->mUserIdentityObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/search/model/BaseModel;->mUserIdentityObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {p1, v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 504
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mUserIdentityObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    sget-object v1, Lcom/alibaba/android/search/utils/SearchUtils$ActionType;->TYPE_SEND_MESSAGE:Lcom/alibaba/android/search/utils/SearchUtils$ActionType;

    invoke-static {p0, p1, v0, v1}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Lcom/alibaba/android/search/model/BaseModel;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/android/search/utils/SearchUtils$ActionType;)V

    goto :goto_0
.end method

.method public requestExtraData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 200
    return-void
.end method

.method public setAssureModel(Lcom/alibaba/android/search/assure/model/AssureModel;)V
    .locals 0
    .param p1, "assureModel"    # Lcom/alibaba/android/search/assure/model/AssureModel;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alibaba/android/search/model/BaseModel;->mAssureModel:Lcom/alibaba/android/search/assure/model/AssureModel;

    .line 96
    return-void
.end method

.method public setChooseMode(I)V
    .locals 0
    .param p1, "chooseMode"    # I

    .prologue
    .line 160
    iput p1, p0, Lcom/alibaba/android/search/model/BaseModel;->mChooseMode:I

    .line 161
    return-void
.end method

.method public setDataChangeListener(Leoa;)V
    .locals 0
    .param p1, "dataChangeListener"    # Leoa;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/alibaba/android/search/model/BaseModel;->mDataChangeListener:Leoa;

    .line 204
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 488
    iput-object p1, p0, Lcom/alibaba/android/search/model/BaseModel;->mKeyword:Ljava/lang/String;

    .line 489
    return-void
.end method

.method public setListPosition(I)V
    .locals 0
    .param p1, "listPosition"    # I

    .prologue
    .line 529
    iput p1, p0, Lcom/alibaba/android/search/model/BaseModel;->mListPosition:I

    .line 530
    return-void
.end method

.method public setLogDe(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 246
    iget-object v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mSearchClickLogModel:Lcom/alibaba/android/search/model/SearchClickLogModel;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setDe(Z)V

    .line 247
    return-void
.end method

.method public setLogEntry(I)V
    .locals 1
    .param p1, "entry"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mSearchClickLogModel:Lcom/alibaba/android/search/model/SearchClickLogModel;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setEntry(I)V

    .line 223
    return-void
.end method

.method public setLogPositionValue(I)V
    .locals 1
    .param p1, "positionValue"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mSearchClickLogModel:Lcom/alibaba/android/search/model/SearchClickLogModel;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionValue(I)V

    .line 227
    return-void
.end method

.method public setLogSearchType(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mSearchClickLogModel:Lcom/alibaba/android/search/model/SearchClickLogModel;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setType(Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public setLogUUID(Ljava/lang/String;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mSearchClickLogModel:Lcom/alibaba/android/search/model/SearchClickLogModel;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setUUID(Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public setLogValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mSearchClickLogModel:Lcom/alibaba/android/search/model/SearchClickLogModel;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setValue(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public setModelType(Lcom/alibaba/android/search/model/BaseModel$ModelType;)V
    .locals 0
    .param p1, "modelType"    # Lcom/alibaba/android/search/model/BaseModel$ModelType;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/alibaba/android/search/model/BaseModel;->mModelType:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    .line 169
    return-void
.end method

.method public setModifyTime(J)V
    .locals 1
    .param p1, "modifyTime"    # J

    .prologue
    .line 266
    iput-wide p1, p0, Lcom/alibaba/android/search/model/BaseModel;->mModifyTime:J

    .line 267
    return-void
.end method

.method public setOrgNodeItemObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V
    .locals 2
    .param p1, "orgNodeItemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 186
    iput-object p1, p0, Lcom/alibaba/android/search/model/BaseModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 187
    iget v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mChooseMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 188
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->OrgContact:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    iput-object v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mModelType:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    .line 194
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/BaseModel;->setUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 197
    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->searchCallbackMode:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/android/search/utils/SearchUtils;->b(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/BaseModel;->setRecallSearchResult(Z)V

    .line 198
    return-void

    .line 189
    :cond_1
    iget v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mChooseMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 190
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->OrgContactChooseSingle:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    iput-object v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mModelType:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    goto :goto_0

    .line 192
    :cond_2
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->OrgContactChooseMulti:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    iput-object v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mModelType:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    goto :goto_0
.end method

.method public setRecallSearchResult(Z)V
    .locals 0
    .param p1, "fuzzySearchResult"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/alibaba/android/search/model/BaseModel;->mRecallSearchResult:Z

    .line 92
    return-void
.end method

.method public setScore(D)V
    .locals 1
    .param p1, "score"    # D

    .prologue
    .line 274
    iput-wide p1, p0, Lcom/alibaba/android/search/model/BaseModel;->mScore:D

    .line 275
    return-void
.end method

.method public setUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 1
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/alibaba/android/search/model/BaseModel;->mUserIdentityObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 177
    iget-object v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mUserIdentityObject:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {p0, v0}, Lcom/alibaba/android/search/model/BaseModel;->removeHighlight(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 178
    invoke-direct {p0}, Lcom/alibaba/android/search/model/BaseModel;->setUserIdentityObjectSource()V

    .line 179
    return-void
.end method

.method public setWeight(D)V
    .locals 1
    .param p1, "weight"    # D

    .prologue
    .line 258
    iput-wide p1, p0, Lcom/alibaba/android/search/model/BaseModel;->mWeight:D

    .line 259
    return-void
.end method

.method public should2Recommend()Z
    .locals 1

    .prologue
    .line 552
    invoke-static {}, Lcom/alibaba/android/search/impls/SearchInterfaceImpl;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/search/model/BaseModel;->mRecallSearchResult:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
