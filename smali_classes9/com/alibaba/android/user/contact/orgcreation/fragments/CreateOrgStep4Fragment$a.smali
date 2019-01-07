.class final Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$a;
.super Landroid/widget/BaseAdapter;
.source "CreateOrgStep4Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;Ljava/util/List;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 330
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;>;"
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$a;->b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 328
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$a;->a:I

    .line 331
    iput-object p2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$a;->c:Ljava/util/List;

    .line 332
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 341
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 346
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 352
    if-nez p2, :cond_1

    .line 353
    new-instance v1, Lcom/alibaba/android/user/contact/view/IconTextView;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$a;->b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/user/contact/view/IconTextView;-><init>(Landroid/content/Context;)V

    .line 358
    .local v1, "view":Lcom/alibaba/android/user/contact/view/IconTextView;
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$a;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    .line 359
    .local v0, "model":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/view/IconTextView;->setLeftText(Ljava/lang/String;)V

    .line 360
    sget v2, Lezg$g;->icon_circle_add:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/view/IconTextView;->setRightIconResId(I)V

    .line 361
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptMembers()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptMembers()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 362
    :cond_0
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/view/IconTextView;->setRightText(Ljava/lang/String;)V

    .line 385
    :goto_1
    iget v2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$a;->a:I

    if-nez v2, :cond_4

    .line 386
    sget-object v2, Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;->AlignParent:Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;

    invoke-virtual {v1, v5, v2}, Lcom/alibaba/android/user/contact/view/IconTextView;->a(ILcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;)V

    .line 387
    iget v2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$a;->a:I

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$a;->b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->e(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_3

    .line 388
    sget-object v2, Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;->AlignParent:Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;

    invoke-virtual {v1, v5, v2}, Lcom/alibaba/android/user/contact/view/IconTextView;->b(ILcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;)V

    .line 399
    :goto_2
    return-object v1

    .end local v0    # "model":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    .end local v1    # "view":Lcom/alibaba/android/user/contact/view/IconTextView;
    :cond_1
    move-object v1, p2

    .line 355
    check-cast v1, Lcom/alibaba/android/user/contact/view/IconTextView;

    .restart local v1    # "view":Lcom/alibaba/android/user/contact/view/IconTextView;
    goto :goto_0

    .line 364
    .restart local v0    # "model":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$a;->b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;

    sget v3, Lezg$l;->member_count:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptMembers()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/view/IconTextView;->setRightText(Ljava/lang/String;)V

    goto :goto_1

    .line 390
    :cond_3
    sget-object v2, Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;->AlignContent:Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;

    invoke-virtual {v1, v5, v2}, Lcom/alibaba/android/user/contact/view/IconTextView;->b(ILcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;)V

    goto :goto_2

    .line 392
    :cond_4
    iget v2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$a;->a:I

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$a;->b:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->e(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_5

    .line 393
    invoke-virtual {v1, v6, v7}, Lcom/alibaba/android/user/contact/view/IconTextView;->a(ILcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;)V

    .line 394
    sget-object v2, Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;->AlignParent:Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;

    invoke-virtual {v1, v5, v2}, Lcom/alibaba/android/user/contact/view/IconTextView;->b(ILcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;)V

    goto :goto_2

    .line 396
    :cond_5
    invoke-virtual {v1, v6, v7}, Lcom/alibaba/android/user/contact/view/IconTextView;->a(ILcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;)V

    .line 397
    sget-object v2, Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;->AlignContent:Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;

    invoke-virtual {v1, v5, v2}, Lcom/alibaba/android/user/contact/view/IconTextView;->b(ILcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;)V

    goto :goto_2
.end method
