.class final Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;
.super Landroid/widget/BaseAdapter;
.source "CreateOrgStep1Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    .prologue
    .line 534
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 535
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->e(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 544
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->e(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;)Ljava/util/List;

    move-result-object v0

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
    .line 549
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 554
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->e(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptId()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 564
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->e(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    .line 566
    .local v0, "model":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;->getItemViewType(I)I

    move-result v4

    if-nez v4, :cond_2

    .line 568
    if-nez p2, :cond_0

    .line 569
    new-instance v1, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;-><init>(Landroid/content/Context;)V

    .line 574
    .local v1, "view":Lcom/alibaba/android/user/contact/view/CheckBoxTextView;
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->setOnCheckChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 575
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->isChecked()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->setChecked(Z)V

    .line 576
    new-instance v4, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a$1;

    invoke-direct {v4, p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a$1;-><init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;)V

    invoke-virtual {v1, v4}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->setOnCheckChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 584
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->setTextContent(Ljava/lang/String;)V

    .line 585
    sget-object v4, Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;->AlignContent:Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;

    invoke-virtual {v1, v2, v4}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->a(ILcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;)V

    .line 586
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_1

    :goto_1
    sget-object v3, Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;->AlignParent:Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->b(ILcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;)V

    .line 587
    new-instance v2, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a$2;

    invoke-direct {v2, p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a$2;-><init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;Lcom/alibaba/android/user/contact/view/CheckBoxTextView;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 633
    .end local v1    # "view":Lcom/alibaba/android/user/contact/view/CheckBoxTextView;
    :goto_2
    return-object v1

    :cond_0
    move-object v1, p2

    .line 571
    check-cast v1, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;

    .restart local v1    # "view":Lcom/alibaba/android/user/contact/view/CheckBoxTextView;
    goto :goto_0

    :cond_1
    move v2, v3

    .line 586
    goto :goto_1

    .line 594
    .end local v1    # "view":Lcom/alibaba/android/user/contact/view/CheckBoxTextView;
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;->getItemViewType(I)I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 596
    if-nez p2, :cond_4

    .line 597
    new-instance v1, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;-><init>(Landroid/content/Context;)V

    .line 602
    .local v1, "view":Lcom/alibaba/android/user/contact/view/CheckBoxEditText;
    :goto_3
    new-instance v4, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a$3;

    invoke-direct {v4, p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a$3;-><init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;)V

    invoke-virtual {v1, v4}, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->setOnCheckChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 610
    new-instance v4, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a$4;

    invoke-direct {v4, p0, v1, v0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a$4;-><init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;Lcom/alibaba/android/user/contact/view/CheckBoxEditText;Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;)V

    invoke-virtual {v1, v4}, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 624
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->isChecked()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->setChecked(Z)V

    .line 625
    const/16 v4, 0x14

    invoke-virtual {v1, v4}, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->setEditMaxLenth(I)V

    .line 626
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->setEditContent(Ljava/lang/String;)V

    .line 627
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    sget v5, Lezg$l;->create_org_dept_name_hint:I

    invoke-virtual {v4, v5}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->setEditHint(Ljava/lang/String;)V

    .line 628
    sget-object v4, Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;->AlignContent:Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;

    .line 1195
    iput v2, v1, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->a:I

    .line 1196
    if-eqz v4, :cond_3

    .line 1197
    iput-object v4, v1, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->b:Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;

    .line 1199
    :cond_3
    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->a()V

    .line 1203
    iput v3, v1, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->c:I

    .line 1207
    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->b()V

    goto :goto_2

    .end local v1    # "view":Lcom/alibaba/android/user/contact/view/CheckBoxEditText;
    :cond_4
    move-object v1, p2

    .line 599
    check-cast v1, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;

    .restart local v1    # "view":Lcom/alibaba/android/user/contact/view/CheckBoxEditText;
    goto :goto_3

    .end local v1    # "view":Lcom/alibaba/android/user/contact/view/CheckBoxEditText;
    :cond_5
    move-object v1, p2

    .line 633
    goto :goto_2
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 559
    const/4 v0, 0x2

    return v0
.end method
