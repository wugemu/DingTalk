.class public Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;
.super Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;
.source "CommonContactFragment.java"

# interfaces
.implements Lfir;


# instance fields
.field private A:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

.field private B:Lffu;

.field public e:Ljava/lang/String;

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:J

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;

.field private t:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/homepage/Composite;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/alibaba/android/user/contact/homepage/Composite;

.field private w:Landroid/view/View;

.field private x:Landroid/view/View;

.field private y:Lfiv;

.field private z:Lfiu;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 71
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;-><init>()V

    .line 74
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->f:I

    .line 75
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->g:Z

    .line 76
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->h:Z

    .line 77
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->i:Z

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->j:J

    .line 90
    const-string/jumbo v0, "userType=contact"

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->e:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;)V
    .locals 1
    .param p1, "cell"    # Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;

    .prologue
    .line 397
    if-nez p1, :cond_0

    .line 405
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->s:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;

    if-nez v0, :cond_1

    .line 402
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->s:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;

    .line 404
    :cond_1
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->t:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;

    goto :goto_0
.end method

.method private a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;II)V
    .locals 3
    .param p1, "cell"    # Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;
    .param p2, "iconFontResId"    # I
    .param p3, "colorId"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 583
    if-nez p1, :cond_0

    .line 590
    :goto_0
    return-void

    .line 587
    :cond_0
    new-instance v0, Lcjz;

    invoke-virtual {p0, p2}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcjz;-><init>(Ljava/lang/String;I)V

    .line 588
    .local v0, "drawable":Lcjz;
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    .line 13045
    iput v1, v0, Lcjz;->b:F

    .line 589
    invoke-virtual {p1, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->g()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 71
    .line 14511
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->b:Lfip;

    if-eqz v0, :cond_0

    .line 14512
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->b:Lfip;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-interface/range {v1 .. v6}, Lfip;->a(Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    .line 71
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Z
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .prologue
    const/4 v1, 0x0

    .line 71
    .line 13566
    iget v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->f:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->f:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->nodeItemObjectList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->nodeItemObjectList:Ljava/util/List;

    .line 13569
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->nodeItemObjectList:Ljava/util/List;

    .line 13570
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->DEPT:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-eq v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 71
    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->j:J

    return-wide v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->e:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 194
    .line 5447
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->B:Lffu;

    invoke-virtual {v0}, Lffu;->b()Ljava/util/List;

    move-result-object v1

    .line 5449
    if-eqz v1, :cond_7

    .line 5453
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/homepage/Composite;

    .line 5454
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Composite;->getChildren()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5458
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Composite;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 5459
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5460
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/homepage/Component;

    .line 5461
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Component;->getType()I

    move-result v4

    sget-object v5, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->MicroApp:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    invoke-virtual {v5}, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 5462
    check-cast v0, Lcom/alibaba/android/user/contact/homepage/MicroAppItem;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/MicroAppItem;->getAppId()J

    move-result-wide v4

    const-wide/16 v6, -0x10

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 5463
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->g:Z

    if-eqz v0, :cond_1

    .line 5464
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 5468
    :cond_2
    iget v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->f:I

    const/4 v4, 0x5

    if-eq v0, v4, :cond_3

    iget v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->f:I

    const/4 v4, 0x6

    if-ne v0, v4, :cond_1

    .line 5470
    :cond_3
    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->j:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    .line 5471
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 5476
    :cond_4
    iget-boolean v4, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->o:Z

    if-nez v4, :cond_5

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Component;->getType()I

    move-result v4

    sget-object v5, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->AlphaDevice:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    invoke-virtual {v5}, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 5477
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 5479
    :cond_5
    iget-boolean v4, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->h:Z

    if-nez v4, :cond_6

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Component;->getType()I

    move-result v4

    sget-object v5, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->ShowByLabel:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    invoke-virtual {v5}, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_6

    .line 5480
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 5482
    :cond_6
    iget-boolean v4, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->i:Z

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Component;->getType()I

    move-result v0

    sget-object v4, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->Department:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->getValue()I

    move-result v4

    if-ne v0, v4, :cond_1

    .line 5483
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 194
    :cond_7
    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->u:Ljava/util/List;

    .line 195
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->z:Lfiu;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->u:Ljava/util/List;

    .line 6079
    iget-object v2, v0, Lfiu;->a:Ljava/util/List;

    if-eqz v2, :cond_9

    .line 6080
    iget-object v2, v0, Lfiu;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 6084
    :goto_1
    if-eqz v1, :cond_8

    .line 6085
    iget-object v0, v0, Lfiu;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 196
    :cond_8
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->h()V

    .line 197
    return-void

    .line 6082
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lfiu;->a:Ljava/util/List;

    goto :goto_1
.end method

.method private h()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 422
    const/4 v1, 0x0

    .line 424
    .local v1, "position":I
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->u:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->u:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 425
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->u:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/homepage/Composite;

    .line 426
    .local v0, "composite":Lcom/alibaba/android/user/contact/homepage/Composite;
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Composite;->isExpand()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 427
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->A:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    invoke-virtual {v3, v1}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->expandGroup(I)Z

    .line 431
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 432
    goto :goto_0

    .line 429
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->A:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    invoke-virtual {v3, v1}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->collapseGroup(I)Z

    goto :goto_1

    .line 434
    .end local v0    # "composite":Lcom/alibaba/android/user/contact/homepage/Composite;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->A:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->setHeaderDividersEnabled(Z)V

    .line 439
    :goto_2
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->v:Lcom/alibaba/android/user/contact/homepage/Composite;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->z:Lfiu;

    invoke-virtual {v2}, Lfiu;->getGroupCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 441
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->A:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->z:Lfiu;

    invoke-virtual {v3}, Lfiu;->getGroupCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->expandGroup(I)Z

    .line 443
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->z:Lfiu;

    invoke-virtual {v2}, Lfiu;->notifyDataSetChanged()V

    .line 444
    return-void

    .line 436
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->A:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->setHeaderDividersEnabled(Z)V

    goto :goto_2
.end method


# virtual methods
.method public final H()V
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->z:Lfiu;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->z:Lfiu;

    invoke-virtual {v0}, Lfiu;->notifyDataSetChanged()V

    .line 563
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "canScroll"    # Z

    .prologue
    .line 542
    return-void
.end method

.method public final a(ZI)V
    .locals 4
    .param p1, "hasMore"    # Z
    .param p2, "totalCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 551
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->y:Lfiv;

    .line 7054
    iget-object v0, v0, Lfiv;->a:Ljava/util/List;

    .line 551
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->y:Lfiv;

    .line 8054
    iget-object v0, v0, Lfiv;->a:Ljava/util/List;

    .line 551
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->n:Z

    if-nez v0, :cond_1

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 9523
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->z:Lfiu;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9525
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->v:Lcom/alibaba/android/user/contact/homepage/Composite;

    if-eqz v0, :cond_2

    .line 9526
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->z:Lfiu;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->v:Lcom/alibaba/android/user/contact/homepage/Composite;

    .line 10095
    if-eqz v1, :cond_2

    .line 10096
    iget-object v0, v0, Lfiu;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9528
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->y:Lfiv;

    .line 11054
    iget-object v0, v0, Lfiv;->a:Ljava/util/List;

    .line 11493
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11494
    :cond_3
    const/4 v0, 0x0

    .line 9528
    :goto_1
    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->v:Lcom/alibaba/android/user/contact/homepage/Composite;

    .line 9529
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->z:Lfiu;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->v:Lcom/alibaba/android/user/contact/homepage/Composite;

    .line 12089
    if-eqz v1, :cond_4

    .line 12090
    iget-object v0, v0, Lfiu;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9530
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->h()V

    goto :goto_0

    .line 11497
    :cond_5
    new-instance v1, Lcom/alibaba/android/user/contact/homepage/Composite;

    invoke-direct {v1}, Lcom/alibaba/android/user/contact/homepage/Composite;-><init>()V

    .line 11498
    sget v2, Lezg$l;->common_contact:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/homepage/Composite;->setName(Ljava/lang/String;)V

    .line 11499
    sget-object v2, Lcom/alibaba/android/user/contact/homepage/Component$GroupType;->Common:Lcom/alibaba/android/user/contact/homepage/Component$GroupType;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/homepage/Component$GroupType;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/homepage/Composite;->setType(I)V

    .line 11501
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    .line 11502
    if-eqz v0, :cond_6

    .line 11505
    new-instance v3, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;

    invoke-direct {v3, v0}, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;)V

    invoke-virtual {v1, v3}, Lcom/alibaba/android/user/contact/homepage/Composite;->addChild(Lcom/alibaba/android/user/contact/homepage/Component;)V

    goto :goto_2

    :cond_7
    move-object v0, v1

    .line 11507
    goto :goto_1
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 537
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 547
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 184
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 186
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->f:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->f:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->y:Lfiv;

    .line 5058
    const-string/jumbo v1, "CommonContactPresenter"

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lfiv$1;

    invoke-direct {v2, v0}, Lfiv$1;-><init>(Lfiv;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->g()V

    .line 191
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 114
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->onCreate(Landroid/os/Bundle;)V

    .line 115
    new-instance v0, Lfiv;

    invoke-direct {v0}, Lfiv;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->y:Lfiv;

    .line 116
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->y:Lfiv;

    .line 1049
    iput-object p0, v0, Lfiv;->b:Lfir;

    .line 118
    new-instance v0, Lffu;

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lffu;-><init>(ILandroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->B:Lffu;

    .line 119
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->B:Lffu;

    new-instance v1, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment$1;-><init>(Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;)V

    .line 1110
    iput-object v1, v0, Lffu;->a:Lfft$a;

    .line 137
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "choose_mode"

    iget v2, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->f:I

    .line 138
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "hide_org_external"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->g:Z

    .line 139
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "show_label_contact"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->h:Z

    .line 140
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "show_org_relation_contact"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->i:Z

    .line 141
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "choose_enterprise_oid"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->j:J

    .line 142
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "show_local_contact"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->k:Z

    .line 143
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "show_group"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->l:Z

    .line 144
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "show_friends"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->m:Z

    .line 145
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "show_common_friends"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->n:Z

    .line 146
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "show_header_existed_group"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->p:Z

    .line 147
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "show_header_f2f_create_group"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->q:Z

    .line 148
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "intent_key_show_alpha_smart_devices"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->o:Z

    .line 149
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "sdevice_projection_video_meeting_enabled"

    invoke-virtual {v0, v1, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "intent_key_show_conference_room"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->r:Z

    .line 152
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x5

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 156
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 159
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->A:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    .line 160
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->A:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 161
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->A:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    .line 1202
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->layout_header_common_contact:I

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->w:Landroid/view/View;

    .line 1203
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->w:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment$4;-><init>(Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1249
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->j:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->m:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->f:I

    if-eq v0, v9, :cond_0

    iget v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->f:I

    if-ne v0, v10, :cond_8

    .line 1251
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->w:Landroid/view/View;

    sget v1, Lezg$h;->layout_contact_friends:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1274
    :goto_0
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->j:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->k:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->f:I

    if-eq v0, v9, :cond_1

    iget v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->f:I

    if-ne v0, v10, :cond_9

    .line 1277
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->w:Landroid/view/View;

    sget v1, Lezg$h;->layout_contact_local:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1298
    :goto_1
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->j:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->l:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->f:I

    if-eq v0, v9, :cond_2

    iget v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->f:I

    if-ne v0, v10, :cond_a

    .line 1301
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->w:Landroid/view/View;

    sget v1, Lezg$h;->layout_contact_group:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2226
    :goto_2
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->r:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->f:I

    if-eq v0, v9, :cond_3

    iget v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->f:I

    if-ne v0, v10, :cond_b

    .line 2228
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->w:Landroid/view/View;

    sget v1, Lezg$h;->layout_contact_conference_room:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v6}, Lfxp;->a(Landroid/view/View;I)V

    .line 2341
    :goto_3
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->q:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->p:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->f:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    .line 2342
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "im_f2f_create_group_enabled"

    invoke-virtual {v0, v1, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2343
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->w:Landroid/view/View;

    sget v1, Lezg$h;->layout_contact_f2f_group:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3321
    :goto_4
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->p:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 3322
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->w:Landroid/view/View;

    sget v1, Lezg$h;->layout_contact_existed_group:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3366
    :goto_5
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "intent_key_show_invitation"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 3367
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v3, "share_invitation"

    .line 3368
    invoke-virtual {v0, v3, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v3

    .line 3369
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v4, "f_share_invitation"

    .line 4083
    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v4

    .line 3371
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->w:Landroid/view/View;

    sget v5, Lezg$h;->layout_contact_invitation:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;

    .line 3372
    if-eqz v1, :cond_e

    if-eqz v3, :cond_e

    if-eqz v4, :cond_e

    .line 3373
    invoke-virtual {v0, v7}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->setVisibility(I)V

    .line 3374
    new-instance v1, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment$2;-><init>(Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3389
    invoke-direct {p0, v0}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;)V

    .line 4409
    :goto_6
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->s:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;

    if-eqz v0, :cond_6

    .line 4410
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->s:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;

    invoke-virtual {v0, v6, v8}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    .line 4413
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->t:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;

    if-eqz v0, :cond_7

    .line 4414
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->t:Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;

    invoke-virtual {v0, v6, v8}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    .line 1222
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->w:Landroid/view/View;

    .line 161
    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->addHeaderView(Landroid/view/View;)V

    .line 162
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->A:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    invoke-virtual {v0, v7}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->setDividerHeight(I)V

    .line 163
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->A:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    invoke-virtual {v0, v7}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->setFloatingGroupEnabled(Z)V

    .line 166
    new-instance v0, Lfiu;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->b:Lfip;

    iget v3, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->f:I

    invoke-direct {v0, v1, v2, v3}, Lfiu;-><init>(Landroid/app/Activity;Lfip;I)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->z:Lfiu;

    .line 167
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->A:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    new-instance v1, Lcrk;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->z:Lfiu;

    invoke-direct {v1, v2}, Lcrk;-><init>(Landroid/widget/BaseExpandableListAdapter;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->setAdapter(Lcrk;)V

    .line 168
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->A:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    new-instance v1, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment$3;-><init>(Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 175
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->contact_fragment_divider:I

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->x:Landroid/view/View;

    .line 176
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->A:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->x:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->addFooterView(Landroid/view/View;)V

    .line 177
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->ll_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->I:Landroid/view/View;

    return-object v0

    .line 1253
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->w:Landroid/view/View;

    sget v1, Lezg$h;->layout_contact_friends:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;

    .line 1254
    sget v1, Lezg$l;->icon_friends:I

    sget v3, Lezg$e;->ui_common_theme_text_color:I

    invoke-direct {p0, v0, v1, v3}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;II)V

    .line 1255
    new-instance v1, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment$6;-><init>(Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1266
    invoke-direct {p0, v0}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;)V

    goto/16 :goto_0

    .line 1279
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->w:Landroid/view/View;

    sget v1, Lezg$h;->layout_contact_local:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;

    .line 1280
    sget v1, Lezg$l;->icon_addressbook_head_fill:I

    sget v3, Lezg$e;->ui_common_green_icon_bg_color:I

    invoke-direct {p0, v0, v1, v3}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;II)V

    .line 1281
    new-instance v1, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment$7;-><init>(Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1290
    invoke-direct {p0, v0}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;)V

    goto/16 :goto_1

    .line 1303
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->w:Landroid/view/View;

    sget v1, Lezg$h;->layout_contact_group:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;

    .line 1304
    sget v1, Lezg$l;->icon_groupfriends_fill:I

    sget v3, Lezg$e;->ui_common_alert_text_color:I

    invoke-direct {p0, v0, v1, v3}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;II)V

    .line 1305
    new-instance v1, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment$8;-><init>(Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1313
    invoke-direct {p0, v0}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;)V

    goto/16 :goto_2

    .line 2230
    :cond_b
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->w:Landroid/view/View;

    sget v1, Lezg$h;->layout_contact_conference_room:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;

    .line 2232
    sget v1, Lezg$l;->icon_meetinground:I

    sget v3, Lezg$e;->ui_common_theme_text_color:I

    invoke-direct {p0, v0, v1, v3}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;II)V

    .line 2233
    invoke-static {v0, v7}, Lfxp;->a(Landroid/view/View;I)V

    .line 2234
    new-instance v1, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment$5;-><init>(Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 2345
    :cond_c
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->w:Landroid/view/View;

    sget v1, Lezg$h;->layout_contact_f2f_group:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2346
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->w:Landroid/view/View;

    sget v1, Lezg$h;->cell_contact_f2f_group:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;

    .line 2347
    sget v1, Lezg$l;->icon_facegroup_fill:I

    sget v3, Lezg$e;->ui_common_orange_icon_bg_color:I

    invoke-direct {p0, v0, v1, v3}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;II)V

    .line 2348
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->w:Landroid/view/View;

    sget v3, Lezg$h;->red_dot_f2f_group:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 2349
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v3

    sget-object v4, Lble;->ae:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;)V

    .line 2350
    new-instance v1, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment$10;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment$10;-><init>(Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2361
    invoke-direct {p0, v0}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;)V

    goto/16 :goto_4

    .line 3324
    :cond_d
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->w:Landroid/view/View;

    sget v1, Lezg$h;->layout_contact_existed_group:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;

    .line 3325
    sget v1, Lezg$l;->icon_groupfriends_fill:I

    sget v3, Lezg$e;->ui_common_alert_text_color:I

    invoke-direct {p0, v0, v1, v3}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;II)V

    .line 3326
    invoke-virtual {v0, v7}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->setVisibility(I)V

    .line 3327
    new-instance v1, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment$9;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment$9;-><init>(Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3336
    invoke-direct {p0, v0}, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;)V

    goto/16 :goto_5

    .line 3391
    :cond_e
    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 575
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->B:Lffu;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/commoncontact/CommonContactFragment;->B:Lffu;

    invoke-virtual {v0}, Lffu;->i()V

    .line 578
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->ae:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 579
    invoke-super {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->onDestroy()V

    .line 580
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 105
    sget v0, Lezg$j;->fragment_common_contact:I

    return v0
.end method
