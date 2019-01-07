.class public Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;
.super Lcom/alibaba/android/dingtalk/userbase/AbsHomeContactFragment;
.source "ContactHomeFragment.java"


# instance fields
.field protected a:Landroid/widget/LinearLayout;

.field private b:Z

.field private c:J

.field private d:J

.field private e:Z

.field private f:Z

.field private g:Lcpo$a;

.field private h:Lfgs;

.field private i:Landroid/support/v7/widget/RecyclerView;

.field private j:Landroid/content/BroadcastReceiver;

.field private k:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/homepage/Composite;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfhm;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;

.field private r:Lffu;

.field private s:Landroid/support/v7/widget/RecyclerView$OnScrollListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/userbase/AbsHomeContactFragment;-><init>()V

    .line 95
    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->e:Z

    .line 100
    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->f:Z

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->m:Ljava/util/List;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->n:Ljava/util/List;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->o:Ljava/util/List;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->p:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->k:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;J)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;
    .param p1, "x1"    # J

    .prologue
    .line 86
    .line 9703
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->c:J

    .line 9704
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 9705
    const-string/jumbo v0, "totalTime"

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->c:J

    long-to-double v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 9707
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 9708
    const-string/jumbo v2, "DD"

    const-string/jumbo v3, "contact_load"

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 9709
    const-string/jumbo v1, "contact_load"

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->c:J

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->reportOffLineDurationStatistics(Ljava/lang/String;J)V

    .line 86
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->k:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)Landroid/support/v7/widget/RecyclerView$OnScrollListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->s:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)Lfgs;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->h:Lfgs;

    return-object v0
.end method

.method private d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 301
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->q:Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;

    invoke-direct {v0}, Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->q:Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->q:Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;

    sget-object v1, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->Header:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;->setItemType(Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;)V

    .line 306
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->p:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->q:Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->q:Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->n:Ljava/util/List;

    return-object v0
.end method

.method private f()V
    .locals 24

    .prologue
    .line 386
    const/4 v12, 0x0

    .line 387
    .local v12, "mainOrgUnreadCount":I
    const/4 v15, 0x0

    .line 390
    .local v15, "otherOrgUnreadCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->p:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    .line 391
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->d()V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->l:Ljava/util/List;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->l:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_c

    .line 395
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->l:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_2

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->l:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/user/contact/homepage/Composite;

    .line 398
    .local v6, "composite":Lcom/alibaba/android/user/contact/homepage/Composite;
    if-eqz v6, :cond_0

    .line 402
    if-nez v9, :cond_1

    .line 403
    invoke-virtual {v6}, Lcom/alibaba/android/user/contact/homepage/Composite;->getUnreadCount()I

    move-result v19

    add-int v12, v12, v19

    .line 395
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 405
    :cond_1
    invoke-virtual {v6}, Lcom/alibaba/android/user/contact/homepage/Composite;->getUnreadCount()I

    move-result v19

    add-int v15, v15, v19

    goto :goto_1

    .line 408
    .end local v6    # "composite":Lcom/alibaba/android/user/contact/homepage/Composite;
    :cond_2
    add-int v18, v12, v15

    .line 409
    .local v18, "totalUnreadCount":I
    if-lez v18, :cond_3

    .line 410
    const-string/jumbo v19, "pref_key_is_show_contact_admin_reddot"

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 411
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v19

    sget-object v20, Lble;->h:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->update(Ljava/lang/String;)V

    .line 415
    :cond_3
    new-instance v11, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;

    invoke-direct {v11}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;-><init>()V

    .line 416
    .local v11, "mainOrgModel":Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;
    sget-object v19, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->Department:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->setItemType(Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->l:Ljava/util/List;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/alibaba/android/user/contact/homepage/Composite;

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->setComposite(Lcom/alibaba/android/user/contact/homepage/Composite;)V

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->p:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->p:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v10, v19, -0x1

    .line 422
    .local v10, "mainOrgCellPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->l:Ljava/util/List;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/user/contact/homepage/Composite;

    .line 423
    .restart local v6    # "composite":Lcom/alibaba/android/user/contact/homepage/Composite;
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/alibaba/android/user/contact/homepage/Composite;->getChildren()Ljava/util/List;

    move-result-object v19

    if-eqz v19, :cond_7

    invoke-virtual {v6}, Lcom/alibaba/android/user/contact/homepage/Composite;->getChildren()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_7

    .line 424
    invoke-virtual {v6}, Lcom/alibaba/android/user/contact/homepage/Composite;->getChildren()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_4
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/user/contact/homepage/Component;

    .line 425
    .local v5, "component":Lcom/alibaba/android/user/contact/homepage/Component;
    if-eqz v5, :cond_4

    move-object/from16 v19, v6

    .line 426
    check-cast v19, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->getOrgId()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Lcom/alibaba/android/user/contact/utils/UserUtils;->b(J)Z

    move-result v19

    if-nez v19, :cond_5

    .line 427
    invoke-virtual {v5}, Lcom/alibaba/android/user/contact/homepage/Component;->getType()I

    move-result v19

    sget-object v21, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->OrgHomePage:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->getValue()I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    .line 430
    :cond_5
    new-instance v17, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;

    invoke-direct/range {v17 .. v17}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;-><init>()V

    .line 431
    .local v17, "subMainOrgModel":Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->setComponents(Lcom/alibaba/android/user/contact/homepage/Component;)V

    .line 432
    invoke-virtual {v5}, Lcom/alibaba/android/user/contact/homepage/Component;->getType()I

    move-result v19

    sget-object v21, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->OrgHomePage:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->getValue()I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 433
    sget-object v19, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->OrgHomePage:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->setItemType(Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;)V

    .line 437
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->p:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 435
    :cond_6
    sget-object v19, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->SubDepartment:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->setItemType(Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;)V

    goto :goto_3

    .line 442
    .end local v5    # "component":Lcom/alibaba/android/user/contact/homepage/Component;
    .end local v17    # "subMainOrgModel":Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->h:Lfgs;

    move-object/from16 v21, v0

    add-int/lit8 v19, v10, 0x1

    .line 5065
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lfgs;->h:Z

    .line 5066
    move/from16 v0, v19

    move-object/from16 v1, v21

    iput v0, v1, Lfgs;->i:I

    .line 5068
    const/16 v20, 0x0

    .line 5069
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->c()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v22

    .line 5070
    if-eqz v22, :cond_9

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->nodeItemObjectList:Ljava/util/List;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->nodeItemObjectList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_9

    .line 5071
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->nodeItemObjectList:Ljava/util/List;

    move-object/from16 v19, v0

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    move-object/from16 v19, v0

    .line 5072
    sget-object v23, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->DEPT:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 5074
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->nodeItemObjectList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_8
    :goto_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 5075
    if-eqz v19, :cond_8

    .line 5078
    add-int/lit8 v19, v20, 0x1

    move/from16 v20, v19

    .line 5079
    goto :goto_4

    .line 5082
    :cond_9
    move/from16 v0, v20

    move-object/from16 v1, v21

    iput v0, v1, Lfgs;->j:I

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->l:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_a

    .line 446
    new-instance v14, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;

    invoke-direct {v14}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;-><init>()V

    .line 447
    .local v14, "otherOrgModel":Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->l:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->setOrgCount(I)V

    .line 448
    sget-object v19, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->OtherOrg:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->setItemType(Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;)V

    .line 449
    new-instance v13, Lcom/alibaba/android/user/contact/homepage/OtherOrgComposite;

    invoke-direct {v13}, Lcom/alibaba/android/user/contact/homepage/OtherOrgComposite;-><init>()V

    .line 450
    .local v13, "otherOrgComposite":Lcom/alibaba/android/user/contact/homepage/OtherOrgComposite;
    invoke-virtual {v13, v15}, Lcom/alibaba/android/user/contact/homepage/OtherOrgComposite;->setShowRedDot(I)V

    .line 451
    invoke-virtual {v14, v13}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->setComposite(Lcom/alibaba/android/user/contact/homepage/Composite;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->p:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    .end local v13    # "otherOrgComposite":Lcom/alibaba/android/user/contact/homepage/OtherOrgComposite;
    .end local v14    # "otherOrgModel":Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;
    :cond_a
    new-instance v8, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;

    invoke-direct {v8}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;-><init>()V

    .line 457
    .local v8, "createOrgModel":Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;
    sget-object v19, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->CreateOrg:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->setItemType(Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->p:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    .end local v6    # "composite":Lcom/alibaba/android/user/contact/homepage/Composite;
    .end local v9    # "i":I
    .end local v10    # "mainOrgCellPosition":I
    .end local v11    # "mainOrgModel":Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;
    .end local v18    # "totalUnreadCount":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->o:Ljava/util/List;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->o:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_d

    .line 468
    new-instance v16, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;

    invoke-direct/range {v16 .. v16}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;-><init>()V

    .line 469
    .local v16, "sectionTitleModel":Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;
    sget-object v19, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->ContactTitle:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->setItemType(Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;)V

    .line 470
    sget v19, Lezg$l;->common_contact:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->setSectionTitle(Ljava/lang/String;)V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->p:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->o:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->o:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_b
    :goto_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_d

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfhm;

    .line 477
    .local v4, "commonContactModel":Lfhm;
    if-eqz v4, :cond_b

    .line 478
    new-instance v7, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;

    invoke-direct {v7}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;-><init>()V

    .line 479
    .local v7, "contactModel":Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;
    invoke-virtual {v7, v4}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->setCommonContactModel(Lfhm;)V

    .line 480
    sget-object v20, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->Contact:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->setItemType(Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;)V

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->p:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 461
    .end local v4    # "commonContactModel":Lfhm;
    .end local v7    # "contactModel":Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;
    .end local v8    # "createOrgModel":Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;
    .end local v16    # "sectionTitleModel":Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;
    :cond_c
    new-instance v8, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;

    invoke-direct {v8}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;-><init>()V

    .line 462
    .restart local v8    # "createOrgModel":Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;
    sget-object v19, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->CreateOrg:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->setItemType(Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->p:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 485
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->r:Lffu;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->h:Lfgs;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->r:Lffu;

    move-object/from16 v20, v0

    .line 5371
    move-object/from16 v0, v20

    iget-wide v0, v0, Lffu;->b:J

    move-wide/from16 v20, v0

    .line 6074
    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Lfgr;->g:J

    .line 488
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->h:Lfgs;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lfgs;->notifyDataSetChanged()V

    .line 489
    return-void
.end method

.method private g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 516
    const-string/jumbo v0, "ContactHomeFragment"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$6;-><init>(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 546
    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    .prologue
    const/4 v8, 0x0

    .line 86
    .line 6580
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->n:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 6581
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6583
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6585
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6586
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6589
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    .line 6590
    if-eqz v0, :cond_1

    .line 6591
    new-instance v3, Lfhm;

    invoke-direct {v3}, Lfhm;-><init>()V

    .line 6592
    new-instance v4, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;

    invoke-direct {v4, v0}, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;)V

    .line 7019
    iput-object v4, v3, Lfhm;->a:Lcom/alibaba/android/user/contact/homepage/CommonContactItem;

    .line 6593
    iget-object v4, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->m:Ljava/util/List;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->m:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 6594
    iget-object v4, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->m:Ljava/util/List;

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6595
    const/4 v4, 0x1

    .line 7027
    iput-boolean v4, v3, Lfhm;->b:Z

    .line 6596
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6603
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->o:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8027
    :cond_2
    iput-boolean v8, v3, Lfhm;->b:Z

    goto :goto_1

    .line 9027
    :cond_3
    iput-boolean v8, v3, Lfhm;->b:Z

    goto :goto_1

    .line 6607
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6608
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->f()V

    :cond_5
    :goto_2
    return-void

    .line 9616
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 9619
    new-instance v0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$8;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$8;-><init>(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)V

    .line 9689
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 9690
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    const-class v3, Lcma;

    .line 9691
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 9694
    :cond_7
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto :goto_2
.end method

.method static synthetic h(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->m:Ljava/util/List;

    return-object v0
.end method

.method private h()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 549
    invoke-static {}, Lfln;->a()Lfln;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7fffffff

    new-instance v0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$7;-><init>(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)V

    const-class v4, Lcma;

    .line 575
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 550
    invoke-static {v0, v4, v5}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 549
    invoke-virtual {v1, v2, v3, v0}, Lfln;->a(IILcma;)V

    .line 576
    return-void
.end method

.method static synthetic i(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->f()V

    return-void
.end method

.method static synthetic j(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->o:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->g()V

    return-void
.end method

.method static synthetic l(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->h()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->s:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 245
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V
    .locals 6
    .param p1, "user"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    iput-object p1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->k:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 285
    const-string/jumbo v2, "pref_key_is_show_contact_admin_reddot"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 286
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->update(Ljava/lang/String;)V

    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 289
    .local v0, "time":J
    iget-object v2, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->h:Lfgs;

    if-eqz v2, :cond_2

    .line 4492
    iget-object v2, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->r:Lffu;

    invoke-virtual {v2}, Lffu;->b()Ljava/util/List;

    move-result-object v2

    .line 290
    iput-object v2, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->l:Ljava/util/List;

    .line 291
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->f()V

    .line 294
    :cond_2
    iget-boolean v2, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->b:Z

    if-nez v2, :cond_0

    .line 295
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->b:Z

    .line 296
    iget-wide v2, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->c:J

    goto :goto_0
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 312
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 249
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/userbase/AbsHomeContactFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 250
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->f:Z

    if-eqz v0, :cond_0

    .line 251
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->setUserVisibleHint(Z)V

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->f:Z

    .line 255
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->d:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->c:J

    .line 257
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/userbase/AbsHomeContactFragment;->onCreate(Landroid/os/Bundle;)V

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->d:J

    .line 139
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->k:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 140
    new-instance v0, Lffu;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lffu;-><init>(ILandroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->r:Lffu;

    .line 141
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->r:Lffu;

    new-instance v1, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$1;-><init>(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)V

    .line 1110
    iput-object v1, v0, Lffu;->a:Lfft$a;

    .line 1716
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->j:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1720
    new-instance v0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$9;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$9;-><init>(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->j:Landroid/content/BroadcastReceiver;

    .line 1750
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1751
    const-string/jumbo v1, "com.workapp.common_contact_change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1752
    const-string/jumbo v1, "action_org_manager_update_reddot"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1753
    const-string/jumbo v1, "com.workapp.concern.list.item.delete.and.unconcern"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1754
    const-string/jumbo v1, "com.workapp.concern.list.item.delete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1755
    const-string/jumbo v1, "com.workapp.concern.list.item.add"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1756
    const-string/jumbo v1, "action_search_query_hint_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1757
    const-string/jumbo v1, "action_settings_entry_update"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1758
    const-string/jumbo v1, "action_user_org_homepage_reddot_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1759
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 167
    :cond_0
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

    .line 171
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalk/userbase/AbsHomeContactFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 173
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->d()V

    .line 176
    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->I:Landroid/view/View;

    sget v2, Lezg$h;->fragment_contact_listview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->i:Landroid/support/v7/widget/RecyclerView;

    .line 177
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 178
    .local v0, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 179
    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->i:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 180
    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->i:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$2;-><init>(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 195
    new-instance v1, Lfgs;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->p:Ljava/util/List;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lfgs;-><init>(Ljava/util/List;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->h:Lfgs;

    .line 197
    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->h:Lfgs;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 199
    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->I:Landroid/view/View;

    sget v2, Lezg$h;->ll_progress:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->a:Landroid/widget/LinearLayout;

    .line 201
    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->a:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 203
    new-instance v1, Lcpo$a;

    invoke-direct {v1}, Lcpo$a;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->g:Lcpo$a;

    .line 204
    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->g:Lcpo$a;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Lcpo$a;->a(Landroid/view/View;)V

    .line 2324
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v1

    sget-object v2, Lble;->n:Ljava/lang/String;

    new-instance v3, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$3;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$3;-><init>(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 2366
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v1

    sget-object v2, Lble;->t:Ljava/lang/String;

    new-instance v3, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$4;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$4;-><init>(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 2378
    invoke-static {}, Lfly;->a()Lfly;

    move-result-object v1

    .line 3070
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->U:Ljava/lang/String;

    iget-object v1, v1, Lfly;->a:Lblc;

    invoke-virtual {v2, v3, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 3218
    invoke-static {}, Lflf;->a()Lflf;

    move-result-object v1

    invoke-virtual {v1}, Lflf;->b()Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;

    move-result-object v1

    .line 3219
    if-eqz v1, :cond_0

    .line 3222
    iget v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showOrgSquare:I

    .line 3232
    if-nez v1, :cond_1

    .line 3233
    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->q:Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;->setShowEnterpriseSquare(Z)V

    .line 3237
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->h:Lfgs;

    invoke-virtual {v1, v4}, Lfgs;->notifyItemChanged(I)V

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->I:Landroid/view/View;

    return-object v1

    .line 3235
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->q:Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;

    invoke-virtual {v1, v4}, Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;->setShowEnterpriseSquare(Z)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 764
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->e:Z

    .line 765
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 766
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 767
    invoke-static {}, Lfly;->a()Lfly;

    invoke-static {}, Lfly;->b()V

    .line 768
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 769
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->r:Lffu;

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->r:Lffu;

    invoke-virtual {v0}, Lffu;->i()V

    .line 771
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->r:Lffu;

    .line 773
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/userbase/AbsHomeContactFragment;->onDestroy()V

    .line 774
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 778
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->g:Lcpo$a;

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->g:Lcpo$a;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcpo$a;->a(Landroid/view/View;)V

    .line 781
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/userbase/AbsHomeContactFragment;->onDestroyView()V

    .line 782
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 316
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/userbase/AbsHomeContactFragment;->onResume()V

    .line 318
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->h:Lfgs;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->h:Lfgs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfgs;->notifyItemChanged(I)V

    .line 321
    :cond_0
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 130
    sget v0, Lezg$j;->fragment_contact_home:I

    return v0
.end method

.method public setUserVisibleHint(Z)V
    .locals 5
    .param p1, "isVisibleToUser"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 261
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/userbase/AbsHomeContactFragment;->setUserVisibleHint(Z)V

    .line 262
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->e:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->a:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 3500
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has_copy_local_contact"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcpk;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3501
    const-string/jumbo v0, "ContactHomeFragment"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 3502
    sget-object v1, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 3503
    new-instance v1, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$5;-><init>(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 264
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->g()V

    .line 265
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->h()V

    .line 266
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->k:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 267
    iput-boolean v4, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->e:Z

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->f:Z

    .line 269
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->r:Lffu;

    invoke-virtual {v0}, Lffu;->a()V

    .line 274
    :cond_1
    :goto_0
    return-void

    .line 271
    :cond_2
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->a:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 272
    iput-boolean v4, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->f:Z

    goto :goto_0
.end method
