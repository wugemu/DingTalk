.class public Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;
.super Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;
.source "CreateOrgStep2Fragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;
    }
.end annotation


# instance fields
.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
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
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;-><init>()V

    .line 185
    return-void
.end method

.method private g()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 126
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 127
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    .line 128
    .local v4, "topDept":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2152
    new-instance v3, Lcom/alibaba/android/user/contact/view/ListViewForScroll;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/alibaba/android/user/contact/view/ListViewForScroll;-><init>(Landroid/content/Context;)V

    .line 2153
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2154
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-static {v7, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v6, v9, v9, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2155
    invoke-virtual {v3, v6}, Lcom/alibaba/android/user/contact/view/ListViewForScroll;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    .local v3, "listView":Lcom/alibaba/android/user/contact/view/ListViewForScroll;
    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptName()Ljava/lang/String;

    move-result-object v6

    .line 2160
    new-instance v2, Lcom/alibaba/android/user/contact/view/IconTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/alibaba/android/user/contact/view/IconTextView;-><init>(Landroid/content/Context;)V

    .line 2161
    invoke-virtual {v2, v6}, Lcom/alibaba/android/user/contact/view/IconTextView;->setLeftText(Ljava/lang/String;)V

    .line 2162
    sget-object v6, Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;->AlignParent:Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;

    invoke-virtual {v2, v9, v6}, Lcom/alibaba/android/user/contact/view/IconTextView;->a(ILcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;)V

    .line 2163
    sget-object v6, Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;->AlignContent:Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;

    invoke-virtual {v2, v9, v6}, Lcom/alibaba/android/user/contact/view/IconTextView;->b(ILcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;)V

    .line 136
    .local v2, "header":Lcom/alibaba/android/user/contact/view/IconTextView;
    invoke-virtual {v3, v2}, Lcom/alibaba/android/user/contact/view/ListViewForScroll;->addHeaderView(Landroid/view/View;)V

    .line 137
    new-instance v0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;

    invoke-direct {v0, p0, v4}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;-><init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;)V

    .line 2168
    .local v0, "adapter":Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;
    new-instance v1, Lcom/alibaba/android/user/contact/view/IconTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/alibaba/android/user/contact/view/IconTextView;-><init>(Landroid/content/Context;)V

    .line 2169
    sget v6, Lezg$g;->icon_green_add:I

    invoke-virtual {v1, v6}, Lcom/alibaba/android/user/contact/view/IconTextView;->setLeftIconResId(I)V

    .line 2170
    sget v6, Lezg$l;->create_org_input_dept_name:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/alibaba/android/user/contact/view/IconTextView;->setLeftText(Ljava/lang/String;)V

    .line 2171
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lezg$e;->C2:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/alibaba/android/user/contact/view/IconTextView;->setLeftTextColor(I)V

    .line 2172
    sget-object v6, Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;->AlignParent:Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;

    invoke-virtual {v1, v9, v6}, Lcom/alibaba/android/user/contact/view/IconTextView;->b(ILcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;)V

    .line 2174
    new-instance v6, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$1;

    invoke-direct {v6, p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$1;-><init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;)V

    invoke-virtual {v1, v6}, Lcom/alibaba/android/user/contact/view/IconTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    .local v1, "footer":Lcom/alibaba/android/user/contact/view/IconTextView;
    invoke-virtual {v3, v1}, Lcom/alibaba/android/user/contact/view/ListViewForScroll;->addFooterView(Landroid/view/View;)V

    .line 141
    invoke-virtual {v3, v0}, Lcom/alibaba/android/user/contact/view/ListViewForScroll;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 142
    invoke-virtual {v3, v9}, Lcom/alibaba/android/user/contact/view/ListViewForScroll;->setDividerHeight(I)V

    .line 144
    iget-object v6, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 149
    .end local v0    # "adapter":Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment$a;
    .end local v1    # "footer":Lcom/alibaba/android/user/contact/view/IconTextView;
    .end local v2    # "header":Lcom/alibaba/android/user/contact/view/IconTextView;
    .end local v3    # "listView":Lcom/alibaba/android/user/contact/view/ListViewForScroll;
    .end local v4    # "topDept":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;)V
    .locals 1
    .param p1, "creation"    # Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;->d:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->setOrgDeptList(Ljava/util/List;)V

    .line 110
    return-void
.end method

.method public final b(Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;)V
    .locals 5
    .param p1, "creation"    # Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 114
    invoke-virtual {p1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->getOrgDeptList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;->d:Ljava/util/List;

    .line 115
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;->d:Ljava/util/List;

    .line 118
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;->g()V

    .line 119
    invoke-virtual {p1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->getCurrentStep()I

    move-result v0

    if-le v2, v0, :cond_1

    .line 120
    invoke-virtual {p1, v2}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->setCurrentStep(I)V

    .line 122
    :cond_1
    const-string/jumbo v0, "cre_org_v2"

    const-string/jumbo v1, "cos2 restore data:%d"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method public final f()Z
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;->d()V

    .line 78
    const/4 v2, 0x0

    .line 79
    .local v2, "subDeptCount":I
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    .line 80
    .local v1, "model":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getSubDepts()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getSubDepts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getSubDepts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    .line 84
    .local v0, "m":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "m":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    .end local v1    # "model":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    :cond_2
    const-string/jumbo v3, "cre_org_v2"

    const-string/jumbo v4, "cos2 onNext sub num=%d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    const-string/jumbo v3, "org_create_seconddept_next_click"

    const-string/jumbo v4, "num=%d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 1315
    const/4 v6, 0x0

    invoke-static {v6, v3, v4, v5}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    invoke-super {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->f()Z

    move-result v3

    return v3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 66
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->cos2_ll_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;->b:Landroid/widget/LinearLayout;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;->c:Landroid/util/SparseArray;

    .line 70
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep2Fragment;->I:Landroid/view/View;

    return-object v0
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 51
    sget v0, Lezg$j;->fragment_create_org_step_2:I

    return v0
.end method
