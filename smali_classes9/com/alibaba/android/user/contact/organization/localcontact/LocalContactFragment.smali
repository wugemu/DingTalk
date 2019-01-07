.class public Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;
.super Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;
.source "LocalContactFragment.java"

# interfaces
.implements Lfir;


# annotations
.annotation build Lcom/alibaba/android/dingtalk/permission/annotation/RuntimePermissions;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
        ">;",
        "Lfir;"
    }
.end annotation


# instance fields
.field private g:Landroid/widget/ListView;

.field private h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

.field private i:Ljava/lang/String;

.field private j:Lfjm;

.field private k:I

.field private l:I

.field private m:Lfjp;

.field private n:Ljava/lang/String;

.field private final o:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 75
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;-><init>()V

    .line 83
    iput v3, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->k:I

    .line 110
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "\u9489"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "A"

    aput-object v2, v0, v1

    const-string/jumbo v1, "B"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string/jumbo v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->o:[Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)Ljava/lang/String;
    .locals 1
    .param p0, "localContactObject"    # Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->pinyin:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)V
    .locals 3
    .param p1, "visibility"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactActivity;

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactActivity;

    .line 6277
    iget v1, v0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactActivity;->e:I

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;->CALL_LOG:Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;->getValue()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 6280
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 6281
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 6282
    const-string/jumbo v1, "pref_external_local_add_tip"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6283
    sget v1, Lezg$h;->tips_container:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 445
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;

    .prologue
    const/4 v3, 0x1

    .line 75
    .line 7234
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    aput-object v2, v0, v1

    new-instance v1, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment$2;-><init>(Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;)V

    invoke-static {p0, v3, v0, v1}, Lbyy;->a(Landroid/support/v4/app/Fragment;I[Ljava/lang/String;Lbzc;)V

    .line 75
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;)Lfjp;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->m:Lfjp;

    return-object v0
.end method

.method private b(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 408
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 409
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .line 411
    .local v0, "localContactObject":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 413
    .end local v0    # "localContactObject":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    :cond_0
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v3

    new-instance v2, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment$6;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment$6;-><init>(Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;)V

    const-class v4, Lcma;

    .line 430
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 413
    invoke-static {v2, v4, v5}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    invoke-interface {v3, v1, v2}, Lfac;->a(Ljava/util/List;Lcma;)V

    .line 432
    .end local v1    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;)Lfjm;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->j:Lfjm;

    return-object v0
.end method


# virtual methods
.method public final H()V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->j:Lfjm;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->j:Lfjm;

    invoke-virtual {v0}, Lfjm;->notifyDataSetChanged()V

    .line 439
    :cond_0
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .line 7119
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->pinyin:Ljava/lang/String;

    .line 74
    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "keyWord"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->i:Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->m:Lfjp;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfjp;->a(Landroid/app/Activity;)V

    .line 182
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "canScroll"    # Z

    .prologue
    .line 271
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->b_(Z)V

    .line 272
    return-void
.end method

.method public final a(ZI)V
    .locals 8
    .param p1, "hasMore"    # Z
    .param p2, "totalCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 348
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->m:Lfjp;

    invoke-virtual {v5}, Lfjp;->a()Ljava/util/List;

    move-result-object v3

    .line 350
    .local v3, "mDataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    new-instance v5, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment$5;

    invoke-direct {v5, p0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment$5;-><init>(Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;)V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 379
    iget v5, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->l:I

    sget-object v6, Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;->CALL_LOG:Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;->getValue()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 381
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->p()Ljava/util/List;

    move-result-object v0

    .line 382
    .local v0, "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 383
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .local v2, "localContactObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .line 385
    .local v4, "object":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    if-eqz v4, :cond_0

    iget-object v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 386
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 389
    .end local v4    # "object":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    :cond_1
    move-object v3, v2

    .line 393
    .end local v0    # "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "localContactObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    :cond_2
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->m:Lfjp;

    .line 3091
    iget-object v1, v5, Lfjp;->b:Ljava/util/List;

    .line 395
    .local v1, "haveUidList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->a(Ljava/util/List;I)V

    .line 397
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->j:Lfjm;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .line 3100
    iput v6, v5, Lfjm;->g:I

    .line 398
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->j:Lfjm;

    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->m:Lfjp;

    .line 4077
    iget-object v6, v6, Lfjp;->c:Ljava/util/HashMap;

    .line 5058
    iput-object v6, v5, Lfjm;->e:Ljava/util/HashMap;

    .line 400
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->j:Lfjm;

    invoke-virtual {v5, v3}, Lfjm;->a(Ljava/util/List;)V

    .line 5340
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->d()V

    .line 5341
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->g:Landroid/widget/ListView;

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 5342
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 5343
    invoke-direct {p0, v7}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->a(I)V

    .line 404
    invoke-direct {p0, v3}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->b(Ljava/util/List;)V

    .line 405
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->d()V

    .line 336
    return-void
.end method

.method public final c()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v11, 0x1

    const/16 v10, 0x21

    const/16 v7, 0x8

    const/4 v9, 0x0

    .line 276
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->isAdded()Z

    move-result v6

    if-nez v6, :cond_0

    .line 331
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->d()V

    .line 280
    invoke-direct {p0, v7}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->a(I)V

    .line 281
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setVisibility(I)V

    .line 282
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->g:Landroid/widget/ListView;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 283
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v6, v9}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 284
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->i:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 285
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->i:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_1

    .line 286
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->i:Ljava/lang/String;

    const/4 v7, 0x7

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->n:Ljava/lang/String;

    .line 287
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->n:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->n:Ljava/lang/String;

    .line 291
    :goto_1
    new-instance v4, Landroid/text/SpannableStringBuilder;

    sget v6, Lezg$l;->search_error:I

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->n:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 292
    .local v4, "style":Landroid/text/SpannableStringBuilder;
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lezg$e;->highlight_search_keyword:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v7, 0x5

    iget-object v8, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->n:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x5

    invoke-virtual {v4, v6, v7, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 293
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v6, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContentSpanStringBuilder(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .line 289
    .end local v4    # "style":Landroid/text/SpannableStringBuilder;
    :cond_1
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->i:Ljava/lang/String;

    iput-object v6, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->n:Ljava/lang/String;

    goto :goto_1

    .line 295
    :cond_2
    iget v6, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->l:I

    sget-object v7, Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;->CALL_LOG:Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;

    invoke-virtual {v7}, Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;->getValue()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 296
    sget v6, Lezg$l;->dt_conference_mobile_contact_title:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 298
    .local v5, "title":Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 299
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lezg$e;->uidic_global_color_6_7:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v6, v9, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 300
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v6, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContentSpanStringBuilder(Landroid/text/SpannableStringBuilder;)V

    .line 302
    sget v6, Lezg$l;->dt_conference_mobile_contact_content:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "des1":Ljava/lang/String;
    sget v6, Lezg$l;->dt_conference_mobile_contact_content_ext:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, "des2":Ljava/lang/String;
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    aput-object v1, v6, v9

    const-string/jumbo v7, "\n"

    aput-object v7, v6, v11

    const/4 v7, 0x2

    aput-object v2, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, "description":Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 306
    .restart local v0    # "builder":Landroid/text/SpannableStringBuilder;
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lezg$e;->uidic_global_color_6_2:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v6, v9, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 307
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v6, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyDescriptionSpanStringBuilder(Landroid/text/SpannableStringBuilder;)V

    .line 309
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v7, Lezg$l;->dt_external_contact_permission_setting:I

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyActionText(I)V

    .line 310
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v7, Lezg$g;->ba4_btn:I

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyActionBackgroundResource(I)V

    .line 311
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    new-instance v7, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment$4;

    invoke-direct {v7, p0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment$4;-><init>(Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;)V

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyActionListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 320
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v1    # "des1":Ljava/lang/String;
    .end local v2    # "des2":Ljava/lang/String;
    .end local v3    # "description":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v6, v9}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 321
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v6

    const-string/jumbo v7, "f_user_contact_permission"

    invoke-virtual {v6, v7}, Lchx;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 322
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v7, Lezg$l;->dt_contact_empty_contacts:I

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyDescription(I)V

    .line 323
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v7, Lezg$l;->icon_addresslist_fill:I

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyIconFontResource(I)V

    .line 324
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyActionListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v6, v9}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setBtnDescription(I)V

    goto/16 :goto_0

    .line 327
    :cond_4
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v7, Lezg$l;->local_contact_empty:I

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyDescription(I)V

    goto/16 :goto_0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 97
    sget v0, Lezg$h;->letter_list:I

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 102
    sget v0, Lezg$h;->tv_overlay:I

    return v0
.end method

.method public final i()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->g:Landroid/widget/ListView;

    return-object v0
.end method

.method public final j()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->o:[Ljava/lang/String;

    return-object v0
.end method

.method public final k()V
    .locals 5
    .annotation runtime Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
        value = {
            "android.permission.READ_CONTACTS"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 186
    const-string/jumbo v0, "general_open_mobilecontact_click"

    const-string/jumbo v1, "access=%d"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1315
    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->m:Lfjp;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfjp;->a(Landroid/app/Activity;)V

    .line 188
    return-void
.end method

.method public final l()V
    .locals 6
    .annotation build Lcom/alibaba/android/dingtalk/permission/annotation/OnPermissionDenied;
        value = {
            "android.permission.READ_CONTACTS"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 192
    const-string/jumbo v0, "general_open_mobilecontact_click"

    const-string/jumbo v1, "access=%d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 2315
    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lbyy;->b(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_user_contact_permission"

    invoke-virtual {v0, v1, v5}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->m()V

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->c()V

    goto :goto_0
.end method

.method public m()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 216
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 217
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->a(I)V

    .line 218
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$l;->icon_addresslist:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyIconFontResource(I)V

    .line 219
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$l;->dt_contact_access_header_2:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 220
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$g;->btn_login_bg:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyActionBackgroundResource(I)V

    .line 222
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    new-instance v1, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment$1;-><init>(Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyActionListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$l;->dt_login_facebox_settings:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyActionText(I)V

    .line 229
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setBtnMarginTop(I)V

    .line 230
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$l;->dt_contact_access_footer:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setBtnDescription(I)V

    .line 231
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 150
    new-instance v1, Lfjm;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->k:I

    iget v4, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->l:I

    invoke-direct {v1, v2, v3, v4}, Lfjm;-><init>(Landroid/app/Activity;II)V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->j:Lfjm;

    .line 151
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->j:Lfjm;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->m:Lfjp;

    invoke-virtual {v2}, Lfjp;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfjm;->a(Ljava/util/List;)V

    .line 153
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->g:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->j:Lfjm;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 154
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "keyword"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->i:Ljava/lang/String;

    .line 156
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 157
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v1, "local_contact"

    const-string/jumbo v2, "local_contact_init"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-static {p0}, Lfjn;->a(Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;)V

    .line 1253
    new-instance v2, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment$3;-><init>(Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;)V

    .line 1259
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1260
    const-string/jumbo v1, "com.workapp.friend_change"

    invoke-virtual {v3, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1261
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-interface {v1, v2, v4, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/app/Activity;Landroid/content/IntentFilter;)V

    .line 163
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_contact_sync_phone_contact_occasion_new"

    invoke-virtual {v1, v2}, Lchx;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    const-string/jumbo v1, "sync_phone_contact_occasion_new feature open"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lfxo;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f()V

    .line 168
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->onCreate(Landroid/os/Bundle;)V

    .line 125
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "choose_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->k:I

    .line 126
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "intent_key_jump_to_local_contact_source_key"

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;->DEFAULT:Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->l:I

    .line 128
    new-instance v0, Lfjp;

    invoke-direct {v0}, Lfjp;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->m:Lfjp;

    .line 129
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->m:Lfjp;

    .line 1082
    iput-object p0, v0, Lfjp;->d:Lfir;

    .line 130
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 134
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 135
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->g:Landroid/widget/ListView;

    .line 136
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 139
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->list_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 140
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$l;->icon_mobilephone_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyIconFontResource(I)V

    .line 141
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$l;->search_error:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->i:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContentString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->I:Landroid/view/View;

    return-object v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 172
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 173
    invoke-static {p0, p1, p3}, Lfjn;->a(Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;I[I)V

    .line 174
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 92
    sget v0, Lezg$j;->fragment_local_contact:I

    return v0
.end method
