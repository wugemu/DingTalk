.class public Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;
.super Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;
.source "ContactSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;
    }
.end annotation


# static fields
.field private static v:Lcom/alibaba/android/search/consts/SubPager;


# instance fields
.field protected q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/android/search/ContactSource;",
            ">;"
        }
    .end annotation
.end field

.field protected r:I

.field protected s:J

.field protected t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field protected u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_CONTACT:Lcom/alibaba/android/search/consts/SubPager;

    sput-object v0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->v:Lcom/alibaba/android/search/consts/SubPager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->q:Ljava/util/Map;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->r:I

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->s:J

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->t:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->u:Ljava/util/List;

    .line 430
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;)Lcif;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->K:Lcif;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;)Lcif;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->K:Lcif;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->a:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->a:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, p1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 97
    new-instance v2, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    invoke-direct {v2}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;-><init>()V

    .line 98
    .local v2, "detailFragment":Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 99
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "choose_mode"

    iget v4, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->i:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    const-string/jumbo v3, "keyword"

    iget-object v4, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->h:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string/jumbo v3, "count_limit"

    iget v4, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->k:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    const-string/jumbo v3, "count_limit_tips"

    iget v4, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->l:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    const-string/jumbo v3, "choose_enterprise_oid"

    iget-wide v4, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->s:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 104
    invoke-virtual {v2, v0}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 105
    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->j:Lenx;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->a(Lenx;)V

    .line 106
    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->K:Lcif;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->a(Lcif;)V

    .line 107
    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->a:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->a(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 108
    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->b:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->b(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 111
    new-instance v1, Lcom/alibaba/android/search/model/SearchClickLogModel;

    invoke-direct {v1}, Lcom/alibaba/android/search/model/SearchClickLogModel;-><init>()V

    .line 112
    .local v1, "clickLog":Lcom/alibaba/android/search/model/SearchClickLogModel;
    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->p:Leoe;

    if-eqz v3, :cond_0

    .line 113
    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->p:Leoe;

    .line 2084
    iget-object v3, v3, Leoe;->a:Ljava/lang/String;

    .line 113
    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setUUID(Ljava/lang/String;)V

    .line 114
    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->p:Leoe;

    .line 2092
    iget v3, v3, Leoe;->b:I

    .line 114
    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setEntry(I)V

    .line 116
    :cond_0
    sget-object v3, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->CONTACT:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setType(Ljava/lang/String;)V

    .line 117
    sget-object v3, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;->MORE:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;

    invoke-virtual {v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;->getValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionType(I)V

    .line 118
    invoke-static {}, Leqb;->b()V

    .line 119
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;)V
    .locals 1
    .param p1, "orgNodeItemWrapperObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    .prologue
    .line 336
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;Z)V

    .line 337
    return-void
.end method

.method a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;Z)V
    .locals 10
    .param p1, "orgNodeItemWrapperObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;
    .param p2, "isExternal"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 346
    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    .line 347
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    if-eqz p2, :cond_4

    .line 9055
    sget-object v4, Leoc$a;->a:Leoc;

    .line 353
    iget v4, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->i:I

    invoke-static {v4}, Leoc;->d(I)Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v3

    .line 357
    .local v3, "type":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    :goto_1
    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 358
    .local v2, "node":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    invoke-static {v2}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 361
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v5, :cond_8

    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 362
    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->q:Ljava/util/Map;

    iget-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 11055
    sget-object v5, Leoc$a;->a:Leoc;

    .line 363
    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->h:Ljava/lang/String;

    invoke-static {v3, v2, v5}, Leoc;->a(Lcom/alibaba/android/search/model/BaseModel$ModelType;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;)Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v1

    .line 364
    .local v1, "model":Lcom/alibaba/android/search/model/BaseModel;
    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->p:Leoe;

    if-eqz v5, :cond_3

    .line 365
    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->p:Leoe;

    .line 11084
    iget-object v5, v5, Leoe;->a:Ljava/lang/String;

    .line 365
    invoke-virtual {v1, v5}, Lcom/alibaba/android/search/model/BaseModel;->setLogUUID(Ljava/lang/String;)V

    .line 366
    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->p:Leoe;

    .line 11092
    iget v5, v5, Leoe;->b:I

    .line 366
    invoke-virtual {v1, v5}, Lcom/alibaba/android/search/model/BaseModel;->setLogEntry(I)V

    .line 368
    :cond_3
    if-eqz p2, :cond_5

    .line 369
    sget-object v5, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->EXTERNAL_CONTACT:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    invoke-virtual {v5}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    .line 370
    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->g:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 375
    :goto_3
    iget v5, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->r:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->r:I

    .line 376
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    .line 377
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alibaba/android/search/model/BaseModel;->setLogValue(Ljava/lang/String;)V

    .line 378
    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->q:Ljava/util/Map;

    iget-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    sget-object v7, Lcom/alibaba/android/search/ContactSource;->UserProfile:Lcom/alibaba/android/search/ContactSource;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 10055
    .end local v1    # "model":Lcom/alibaba/android/search/model/BaseModel;
    .end local v2    # "node":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .end local v3    # "type":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    :cond_4
    sget-object v4, Leoc$a;->a:Leoc;

    .line 355
    iget v4, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->i:I

    invoke-static {v4}, Leoc;->c(I)Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v3

    .restart local v3    # "type":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    goto/16 :goto_1

    .line 372
    .restart local v1    # "model":Lcom/alibaba/android/search/model/BaseModel;
    .restart local v2    # "node":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_5
    sget-object v5, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->ORG_CONTACT:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    invoke-virtual {v5}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    .line 373
    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->g:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 380
    .end local v1    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :cond_6
    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->q:Ljava/util/Map;

    iget-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/search/ContactSource;->Employee:Lcom/alibaba/android/search/ContactSource;

    if-eq v5, v6, :cond_2

    .line 381
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 382
    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->g:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/model/BaseModel;

    .line 383
    .restart local v1    # "model":Lcom/alibaba/android/search/model/BaseModel;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/alibaba/android/search/model/BaseModel;->getUserIdentityObject()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 387
    invoke-virtual {v1}, Lcom/alibaba/android/search/model/BaseModel;->getUserIdentityObject()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v5

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_7

    .line 388
    invoke-virtual {v1}, Lcom/alibaba/android/search/model/BaseModel;->getOrgNodeItemObject()Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    move-result-object v5

    if-nez v5, :cond_7

    .line 389
    invoke-virtual {v1, v2}, Lcom/alibaba/android/search/model/BaseModel;->setOrgNodeItemObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    goto/16 :goto_2

    .line 381
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 394
    .end local v0    # "i":I
    .end local v1    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :cond_8
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->q:Ljava/util/Map;

    iget-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    .line 396
    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->q:Ljava/util/Map;

    iget-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 12055
    sget-object v5, Leoc$a;->a:Leoc;

    .line 397
    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->h:Ljava/lang/String;

    invoke-static {v3, v2, v5}, Leoc;->a(Lcom/alibaba/android/search/model/BaseModel$ModelType;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;)Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v1

    .line 398
    .restart local v1    # "model":Lcom/alibaba/android/search/model/BaseModel;
    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->p:Leoe;

    if-eqz v5, :cond_9

    .line 399
    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->p:Leoe;

    .line 12084
    iget-object v5, v5, Leoe;->a:Ljava/lang/String;

    .line 399
    invoke-virtual {v1, v5}, Lcom/alibaba/android/search/model/BaseModel;->setLogUUID(Ljava/lang/String;)V

    .line 400
    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->p:Leoe;

    .line 12092
    iget v5, v5, Leoe;->b:I

    .line 400
    invoke-virtual {v1, v5}, Lcom/alibaba/android/search/model/BaseModel;->setLogEntry(I)V

    .line 402
    :cond_9
    if-eqz p2, :cond_a

    .line 403
    sget-object v5, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->EXTERNAL_CONTACT:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    invoke-virtual {v5}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    .line 404
    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->g:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 409
    :goto_5
    iget v5, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->r:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->r:I

    .line 410
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    .line 411
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alibaba/android/search/model/BaseModel;->setLogValue(Ljava/lang/String;)V

    .line 412
    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->q:Ljava/util/Map;

    iget-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    sget-object v7, Lcom/alibaba/android/search/ContactSource;->Employee:Lcom/alibaba/android/search/ContactSource;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 406
    :cond_a
    sget-object v5, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->ORG_CONTACT:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    invoke-virtual {v5}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    .line 407
    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->g:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 425
    .end local v1    # "model":Lcom/alibaba/android/search/model/BaseModel;
    .end local v2    # "node":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->c()V

    goto/16 :goto_0
.end method

.method public final a(Ljava/util/List;Lcom/alibaba/android/search/ContactSource;)V
    .locals 10
    .param p2, "contactSource"    # Lcom/alibaba/android/search/ContactSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/alibaba/android/search/ContactSource;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 220
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 5055
    :cond_1
    sget-object v5, Leoc$a;->a:Leoc;

    .line 224
    iget v5, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->i:I

    invoke-static {v5}, Leoc;->a(I)Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v3

    .line 225
    .local v3, "type":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_8

    .line 228
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-static {v5}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Ljava/util/Map;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 232
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-virtual {v6, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/Map;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v4

    .line 233
    .local v4, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->h:Ljava/lang/String;

    invoke-static {v5, v6}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 234
    iget-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->h:Ljava/lang/String;

    invoke-static {v5, v6}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 235
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string/jumbo v6, "extensation"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extension:Ljava/lang/String;

    .line 236
    iget-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extension:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 237
    iget-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extension:Ljava/lang/String;

    invoke-static {v5}, Lcoz;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extensionMap:Ljava/util/HashMap;

    .line 241
    :cond_2
    iget-wide v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_4

    iget-wide v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 245
    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->q:Ljava/util/Map;

    iget-wide v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 246
    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->q:Ljava/util/Map;

    iget-wide v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6055
    sget-object v5, Leoc$a;->a:Leoc;

    .line 247
    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->h:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Leoc;->a(Lcom/alibaba/android/search/model/BaseModel$ModelType;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Ljava/lang/String;)Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v2

    .line 248
    .local v2, "model":Lcom/alibaba/android/search/model/BaseModel;
    invoke-virtual {v2, p2}, Lcom/alibaba/android/search/model/BaseModel;->addContactSource(Lcom/alibaba/android/search/ContactSource;)V

    .line 249
    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->p:Leoe;

    if-eqz v5, :cond_3

    .line 250
    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->p:Leoe;

    .line 6084
    iget-object v5, v5, Leoe;->a:Ljava/lang/String;

    .line 250
    invoke-virtual {v2, v5}, Lcom/alibaba/android/search/model/BaseModel;->setLogUUID(Ljava/lang/String;)V

    .line 251
    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->p:Leoe;

    .line 6092
    iget v5, v5, Leoe;->b:I

    .line 251
    invoke-virtual {v2, v5}, Lcom/alibaba/android/search/model/BaseModel;->setLogEntry(I)V

    .line 253
    :cond_3
    sget-object v5, Lcom/alibaba/android/search/ContactSource;->Friend:Lcom/alibaba/android/search/ContactSource;

    if-ne p2, v5, :cond_5

    sget-object v5, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->FRIEND:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    invoke-virtual {v5}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v2, v5}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    .line 254
    iget-wide v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/alibaba/android/search/model/BaseModel;->setLogValue(Ljava/lang/String;)V

    .line 255
    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->g:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    iget v5, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->r:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->r:I

    .line 225
    .end local v2    # "model":Lcom/alibaba/android/search/model/BaseModel;
    .end local v4    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 253
    .restart local v2    # "model":Lcom/alibaba/android/search/model/BaseModel;
    .restart local v4    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_5
    sget-object v5, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->COMMON_CONTACT:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    invoke-virtual {v5}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 258
    .end local v2    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :cond_6
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_3
    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 259
    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->g:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/search/model/BaseModel;

    .line 260
    .restart local v2    # "model":Lcom/alibaba/android/search/model/BaseModel;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/alibaba/android/search/model/BaseModel;->getUserIdentityObject()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 264
    invoke-virtual {v2}, Lcom/alibaba/android/search/model/BaseModel;->getUserIdentityObject()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v5

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-wide v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_7

    .line 265
    invoke-virtual {v2, p2}, Lcom/alibaba/android/search/model/BaseModel;->addContactSource(Lcom/alibaba/android/search/ContactSource;)V

    .line 258
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 271
    .end local v1    # "index":I
    .end local v2    # "model":Lcom/alibaba/android/search/model/BaseModel;
    .end local v4    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->c()V

    goto/16 :goto_0
.end method

.method public final c(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 167
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 3055
    :cond_1
    sget-object v6, Leoc$a;->a:Leoc;

    .line 171
    iget v6, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->i:I

    invoke-static {v6}, Leoc;->a(I)Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v4

    .line 172
    .local v4, "type":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 173
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 176
    new-instance v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;-><init>()V

    .line 178
    .local v5, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :try_start_0
    const-string/jumbo v6, "openId"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_2
    const-string/jumbo v6, "alias"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v8, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->h:Ljava/lang/String;

    invoke-static {v6, v8}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 183
    iget-object v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    iput-object v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 184
    const-string/jumbo v6, "extensation"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extension:Ljava/lang/String;

    .line 185
    iget-object v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extension:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 186
    iget-object v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extension:Ljava/lang/String;

    invoke-static {v6}, Lcoz;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    iput-object v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extensionMap:Ljava/util/HashMap;

    .line 190
    :cond_3
    iget-wide v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->q:Ljava/util/Map;

    iget-wide v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-wide v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 195
    iget-object v6, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->q:Ljava/util/Map;

    iget-wide v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    sget-object v9, Lcom/alibaba/android/search/ContactSource;->Alias:Lcom/alibaba/android/search/ContactSource;

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4055
    sget-object v6, Leoc$a;->a:Leoc;

    .line 196
    iget-object v6, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->h:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Leoc;->a(Lcom/alibaba/android/search/model/BaseModel$ModelType;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Ljava/lang/String;)Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v1

    .line 197
    .local v1, "model":Lcom/alibaba/android/search/model/BaseModel;
    iget-object v6, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->p:Leoe;

    if-eqz v6, :cond_4

    .line 198
    iget-object v6, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->p:Leoe;

    .line 4084
    iget-object v6, v6, Leoe;->a:Ljava/lang/String;

    .line 198
    invoke-virtual {v1, v6}, Lcom/alibaba/android/search/model/BaseModel;->setLogUUID(Ljava/lang/String;)V

    .line 199
    iget-object v6, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->p:Leoe;

    .line 4092
    iget v6, v6, Leoe;->b:I

    .line 199
    invoke-virtual {v1, v6}, Lcom/alibaba/android/search/model/BaseModel;->setLogEntry(I)V

    .line 201
    :cond_4
    sget-object v6, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->ALIAS:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    invoke-virtual {v6}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    .line 202
    iget-wide v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/alibaba/android/search/model/BaseModel;->setLogValue(Ljava/lang/String;)V

    .line 203
    iget-object v6, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->g:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v3, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;

    invoke-direct {v3, p0, v5}, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;-><init>(Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 207
    .local v3, "requestUserProfile":Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;
    if-eqz v1, :cond_5

    .line 208
    invoke-virtual {v1}, Lcom/alibaba/android/search/model/BaseModel;->getUserIdentityObject()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v6

    .line 4447
    iput-object v6, v3, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 210
    :cond_5
    iget-wide v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {v3, v8, v9}, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->a(J)V

    .line 211
    iget v6, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->r:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->r:I

    goto/16 :goto_1

    .line 179
    .end local v1    # "model":Lcom/alibaba/android/search/model/BaseModel;
    .end local v3    # "requestUserProfile":Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;
    :catch_0
    move-exception v2

    .line 180
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_2

    .line 214
    .end local v0    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    .end local v5    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->c()V

    goto/16 :goto_0
.end method

.method public final d(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-wide/16 v12, 0x0

    .line 277
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 7055
    :cond_1
    sget-object v7, Leoc$a;->a:Leoc;

    .line 281
    iget v7, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->i:I

    invoke-static {v7}, Leoc;->b(I)Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v6

    .line 282
    .local v6, "type":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_8

    .line 284
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v8

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-virtual {v8, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Ljava/util/Map;)Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    move-result-object v3

    .line 285
    .local v3, "localContactObject":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    iget-object v8, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->h:Ljava/lang/String;

    invoke-static {v7, v8}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    .line 286
    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    iget-object v8, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->h:Ljava/lang/String;

    invoke-static {v7, v8}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    .line 289
    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    cmp-long v7, v8, v12

    if-lez v7, :cond_2

    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    .line 294
    :cond_2
    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    cmp-long v7, v8, v12

    if-lez v7, :cond_4

    iget-object v7, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->q:Ljava/util/Map;

    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 295
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_2
    iget-object v7, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->g:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 296
    iget-object v7, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->g:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/search/model/BaseModel;

    .line 297
    .local v4, "model":Lcom/alibaba/android/search/model/BaseModel;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/alibaba/android/search/model/BaseModel;->getUserIdentityObject()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 301
    invoke-virtual {v4}, Lcom/alibaba/android/search/model/BaseModel;->getUserIdentityObject()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v7

    iget-wide v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-wide v10, v3, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_3

    .line 302
    sget-object v7, Lcom/alibaba/android/search/ContactSource;->LocalContact:Lcom/alibaba/android/search/ContactSource;

    invoke-virtual {v4, v7}, Lcom/alibaba/android/search/model/BaseModel;->addContactSource(Lcom/alibaba/android/search/ContactSource;)V

    .line 295
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 8055
    .end local v1    # "index":I
    .end local v4    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :cond_4
    sget-object v7, Leoc$a;->a:Leoc;

    .line 308
    iget-object v7, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->h:Ljava/lang/String;

    invoke-static {v6, v3, v7}, Leoc;->a(Lcom/alibaba/android/search/model/BaseModel$ModelType;Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;Ljava/lang/String;)Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v4

    .line 309
    .restart local v4    # "model":Lcom/alibaba/android/search/model/BaseModel;
    sget-object v7, Lcom/alibaba/android/search/ContactSource;->LocalContact:Lcom/alibaba/android/search/ContactSource;

    invoke-virtual {v4, v7}, Lcom/alibaba/android/search/model/BaseModel;->addContactSource(Lcom/alibaba/android/search/ContactSource;)V

    .line 310
    iget-object v7, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->p:Leoe;

    if-eqz v7, :cond_5

    .line 311
    iget-object v7, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->p:Leoe;

    .line 8084
    iget-object v7, v7, Leoe;->a:Ljava/lang/String;

    .line 311
    invoke-virtual {v4, v7}, Lcom/alibaba/android/search/model/BaseModel;->setLogUUID(Ljava/lang/String;)V

    .line 312
    iget-object v7, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->p:Leoe;

    .line 8092
    iget v7, v7, Leoe;->b:I

    .line 312
    invoke-virtual {v4, v7}, Lcom/alibaba/android/search/model/BaseModel;->setLogEntry(I)V

    .line 314
    :cond_5
    sget-object v7, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->LOCAL_CONTACT:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    invoke-virtual {v7}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    .line 315
    iget-object v7, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->g:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    iget v7, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->r:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->r:I

    .line 317
    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    cmp-long v7, v8, v12

    if-lez v7, :cond_6

    .line 318
    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/alibaba/android/search/model/BaseModel;->setLogValue(Ljava/lang/String;)V

    .line 319
    iget-object v7, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->q:Ljava/util/Map;

    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    sget-object v9, Lcom/alibaba/android/search/ContactSource;->LocalContact:Lcom/alibaba/android/search/ContactSource;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    :cond_6
    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    cmp-long v7, v8, v12

    if-lez v7, :cond_7

    instance-of v7, v4, Lcom/alibaba/android/search/model/LocalContactModel;

    if-eqz v7, :cond_7

    move-object v2, v4

    .line 323
    check-cast v2, Lcom/alibaba/android/search/model/LocalContactModel;

    .line 324
    .local v2, "localContactModel":Lcom/alibaba/android/search/model/LocalContactModel;
    new-instance v5, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;

    invoke-direct {v5, p0, v2}, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;-><init>(Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;Lcom/alibaba/android/search/model/LocalContactModel;)V

    .line 325
    .local v5, "requestUserProfile":Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;
    invoke-virtual {v2}, Lcom/alibaba/android/search/model/LocalContactModel;->getUserIdentityObject()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v7

    .line 8447
    iput-object v7, v5, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 326
    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    invoke-virtual {v5, v8, v9}, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->a(J)V

    .line 282
    .end local v2    # "localContactModel":Lcom/alibaba/android/search/model/LocalContactModel;
    .end local v5    # "requestUserProfile":Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 330
    .end local v3    # "localContactObject":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    .end local v4    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->c()V

    goto/16 :goto_0
.end method

.method protected final g()Lcom/alibaba/android/search/consts/SubPager;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->v:Lcom/alibaba/android/search/consts/SubPager;

    return-object v0
.end method

.method protected h()I
    .locals 1

    .prologue
    .line 123
    sget v0, Lemt$g;->act_title_contact:I

    return v0
.end method

.method protected i()Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public final n_()Lcif$a;
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$1;-><init>(Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->f:Lemz;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->t:Ljava/util/List;

    .line 1639
    iput-object v1, v0, Lemz;->c:Ljava/util/List;

    .line 89
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->f:Lemz;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->u:Ljava/util/List;

    .line 1643
    iput-object v1, v0, Lemz;->d:Ljava/util/List;

    .line 90
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "count_limit"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->k:I

    .line 81
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "count_limit_tips"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->l:I

    .line 82
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "choose_enterprise_oid"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->s:J

    .line 83
    return-void
.end method
