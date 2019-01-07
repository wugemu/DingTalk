.class public Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;
.super Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;
.source "ExternalContactSearchFragment.java"


# static fields
.field private static x:Lcom/alibaba/android/search/consts/SubPager;


# instance fields
.field protected q:I

.field protected r:J

.field protected s:I

.field protected t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected u:[J

.field protected v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field protected w:Ljava/util/List;
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
    .line 48
    sget-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_EXTERNAL_CONTACT:Lcom/alibaba/android/search/consts/SubPager;

    sput-object v0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->x:Lcom/alibaba/android/search/consts/SubPager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->q:I

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->r:J

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->v:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->w:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;)Lcif;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->K:Lcif;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;)Lcif;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->K:Lcif;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->a:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->a:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

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
    .line 89
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, p1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 91
    new-instance v2, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    invoke-direct {v2}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;-><init>()V

    .line 92
    .local v2, "detailFragment":Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 93
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "choose_mode"

    iget v4, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->i:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 94
    const-string/jumbo v3, "keyword"

    iget-object v4, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->h:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string/jumbo v3, "count_limit"

    iget v4, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->k:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    const-string/jumbo v3, "count_limit_tips"

    iget v4, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->l:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    const-string/jumbo v3, "choose_enterprise_oid"

    iget-wide v4, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->r:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 98
    invoke-virtual {v2, v0}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 99
    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->j:Lenx;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->a(Lenx;)V

    .line 100
    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->K:Lcif;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->a(Lcif;)V

    .line 101
    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->a:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->a(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 102
    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->b:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->b(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 105
    new-instance v1, Lcom/alibaba/android/search/model/SearchClickLogModel;

    invoke-direct {v1}, Lcom/alibaba/android/search/model/SearchClickLogModel;-><init>()V

    .line 106
    .local v1, "clickLog":Lcom/alibaba/android/search/model/SearchClickLogModel;
    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->p:Leoe;

    if-eqz v3, :cond_0

    .line 107
    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->p:Leoe;

    .line 2084
    iget-object v3, v3, Leoe;->a:Ljava/lang/String;

    .line 107
    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setUUID(Ljava/lang/String;)V

    .line 108
    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->p:Leoe;

    .line 2092
    iget v3, v3, Leoe;->b:I

    .line 108
    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setEntry(I)V

    .line 110
    :cond_0
    sget-object v3, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->EXTERNAL_CONTACT:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setType(Ljava/lang/String;)V

    .line 111
    sget-object v3, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;->MORE:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;

    invoke-virtual {v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;->getValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionType(I)V

    .line 112
    invoke-static {}, Leqb;->b()V

    .line 113
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;)V
    .locals 11
    .param p1, "orgNodeItemWrapperObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    .line 161
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    .line 162
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 3055
    :cond_1
    sget-object v3, Leoc$a;->a:Leoc;

    .line 166
    iget v3, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->i:I

    invoke-static {v3}, Leoc;->d(I)Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v2

    .line 167
    .local v2, "type":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 168
    .local v1, "node":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    if-eqz v1, :cond_2

    .line 3204
    if-nez v1, :cond_5

    move-wide v4, v8

    .line 174
    .local v4, "uid":J
    :goto_2
    cmp-long v6, v4, v8

    if-lez v6, :cond_2

    .line 183
    iget v6, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->q:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->q:I

    .line 4055
    sget-object v6, Leoc$a;->a:Leoc;

    .line 184
    iget-object v6, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->h:Ljava/lang/String;

    invoke-static {v2, v1, v6}, Leoc;->a(Lcom/alibaba/android/search/model/BaseModel$ModelType;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;)Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v0

    .line 185
    .local v0, "model":Lcom/alibaba/android/search/model/BaseModel;
    iget-object v6, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->p:Leoe;

    if-eqz v6, :cond_3

    .line 186
    iget-object v6, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->p:Leoe;

    .line 4084
    iget-object v6, v6, Leoe;->a:Ljava/lang/String;

    .line 186
    invoke-virtual {v0, v6}, Lcom/alibaba/android/search/model/BaseModel;->setLogUUID(Ljava/lang/String;)V

    .line 187
    iget-object v6, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->p:Leoe;

    .line 4092
    iget v6, v6, Leoe;->b:I

    .line 187
    invoke-virtual {v0, v6}, Lcom/alibaba/android/search/model/BaseModel;->setLogEntry(I)V

    .line 189
    :cond_3
    sget-object v6, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->EXTERNAL_CONTACT:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    invoke-virtual {v6}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0}, Lcom/alibaba/android/search/model/BaseModel;->getUserIdentityObject()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 191
    invoke-virtual {v0}, Lcom/alibaba/android/search/model/BaseModel;->getUserIdentityObject()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v6

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/alibaba/android/search/model/BaseModel;->setLogValue(Ljava/lang/String;)V

    .line 193
    :cond_4
    iget-object v6, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->g:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3208
    .end local v0    # "model":Lcom/alibaba/android/search/model/BaseModel;
    .end local v4    # "uid":J
    :cond_5
    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v6, :cond_8

    .line 3209
    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 3212
    :goto_3
    cmp-long v10, v6, v8

    if-gtz v10, :cond_6

    iget-object v10, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v10, :cond_6

    .line 3213
    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    :cond_6
    move-wide v4, v6

    .line 3216
    goto :goto_2

    .line 196
    .end local v1    # "node":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->c()V

    goto/16 :goto_0

    .restart local v1    # "node":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_8
    move-wide v6, v8

    goto :goto_3
.end method

.method protected final g()Lcom/alibaba/android/search/consts/SubPager;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->x:Lcom/alibaba/android/search/consts/SubPager;

    return-object v0
.end method

.method protected final h()I
    .locals 1

    .prologue
    .line 117
    sget v0, Lemt$g;->dt_search_external_contact:I

    return v0
.end method

.method protected i()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public final n_()Lcif$a;
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment$1;-><init>(Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 82
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->f:Lemz;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->v:Ljava/util/List;

    .line 1639
    iput-object v1, v0, Lemz;->c:Ljava/util/List;

    .line 83
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->f:Lemz;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->w:Ljava/util/List;

    .line 1643
    iput-object v1, v0, Lemz;->d:Ljava/util/List;

    .line 84
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "count_limit"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->k:I

    .line 72
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "count_limit_tips"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->l:I

    .line 73
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "choose_enterprise_oid"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->r:J

    .line 74
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "scope_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->s:I

    .line 75
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "intent_key_staff_id_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->t:Ljava/util/List;

    .line 76
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "intent_key_label_ids"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->u:[J

    .line 77
    return-void
.end method
