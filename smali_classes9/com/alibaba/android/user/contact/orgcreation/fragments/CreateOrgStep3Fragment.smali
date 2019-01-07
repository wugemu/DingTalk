.class public Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;
.super Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;
.source "CreateOrgStep3Fragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment$a;
    }
.end annotation


# instance fields
.field private b:Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/LinearLayout;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;-><init>()V

    .line 184
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;

    .prologue
    .line 50
    iget v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;->f:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;ZLcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    .prologue
    .line 50
    .line 2162
    invoke-virtual {p2}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptMembers()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2164
    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;->fromUserIdentityObjectList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->setDeptMembers(Ljava/util/ArrayList;)V

    .line 2166
    :cond_0
    invoke-virtual {p2, p1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->setMyDept(Z)V

    .line 2167
    if-eqz p1, :cond_2

    .line 2168
    invoke-virtual {p2}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptMembers()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;->b:Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2169
    invoke-virtual {p2}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptMembers()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;->b:Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void

    .line 2172
    :cond_2
    invoke-virtual {p2}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptMembers()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;->b:Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private g()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 129
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 130
    iput v10, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;->f:I

    .line 131
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    .line 132
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

    .line 1177
    new-instance v2, Lcom/alibaba/android/user/contact/view/ListViewForScroll;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/alibaba/android/user/contact/view/ListViewForScroll;-><init>(Landroid/content/Context;)V

    .line 1178
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1179
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v6, v10, v10, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1180
    invoke-virtual {v2, v6}, Lcom/alibaba/android/user/contact/view/ListViewForScroll;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    .local v2, "listView":Lcom/alibaba/android/user/contact/view/ListViewForScroll;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;>;"
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getSubDepts()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getSubDepts()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 141
    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getSubDepts()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    .line 142
    .local v3, "m":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 143
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 147
    .end local v3    # "m":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    :cond_2
    new-instance v0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment$a;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment$a;-><init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;Ljava/util/List;)V

    .line 148
    .local v0, "adapter":Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment$a;
    iget v6, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;->f:I

    .line 1274
    iput v6, v0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment$a;->a:I

    .line 149
    iget v6, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;->f:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;->f:I

    .line 150
    iget-object v6, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;->c:Landroid/util/SparseArray;

    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptId()J

    move-result-wide v8

    long-to-int v7, v8

    invoke-virtual {v6, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 151
    invoke-virtual {v2, v0}, Lcom/alibaba/android/user/contact/view/ListViewForScroll;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    invoke-virtual {v2, v10}, Lcom/alibaba/android/user/contact/view/ListViewForScroll;->setDividerHeight(I)V

    .line 154
    iget-object v6, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 159
    .end local v0    # "adapter":Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment$a;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;>;"
    .end local v2    # "listView":Lcom/alibaba/android/user/contact/view/ListViewForScroll;
    .end local v4    # "topDept":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;)V
    .locals 3
    .param p1, "creation"    # Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;->e:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->setOrgDeptList(Ljava/util/List;)V

    .line 112
    const-string/jumbo v0, "cre_org_v2"

    const-string/jumbo v1, "cos3 save data"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
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

    .line 117
    invoke-virtual {p1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->getOrgDeptList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;->e:Ljava/util/List;

    .line 118
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;->e:Ljava/util/List;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;->e:Ljava/util/List;

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;->g()V

    .line 122
    invoke-virtual {p1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->getCurrentStep()I

    move-result v0

    if-le v2, v0, :cond_1

    .line 123
    invoke-virtual {p1, v2}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->setCurrentStep(I)V

    .line 125
    :cond_1
    const-string/jumbo v0, "cre_org_v2"

    const-string/jumbo v1, "cos3 restore data:%d"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method public final f()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "canNext":Z
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;->e:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 86
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    .line 87
    .local v3, "topDept":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->isMyDept()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 88
    const/4 v0, 0x1

    .line 103
    .end local v3    # "topDept":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    :cond_1
    if-nez v0, :cond_2

    .line 104
    sget v4, Lezg$l;->create_org_check_my_org_toast:I

    invoke-static {v4}, Lcms;->a(I)V

    .line 106
    :cond_2
    return v0

    .line 92
    .restart local v3    # "topDept":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    :cond_3
    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getSubDepts()Ljava/util/List;

    move-result-object v2

    .line 93
    .local v2, "subDeptList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 94
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    .line 95
    .local v1, "subDept":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->isMyDept()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 96
    const/4 v0, 0x1

    .line 97
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;->c:Landroid/util/SparseArray;

    .line 71
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 72
    .local v0, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    new-instance v1, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;->b:Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;

    .line 73
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
    .line 77
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->cos3_ll_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;->d:Landroid/widget/LinearLayout;

    .line 79
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;->I:Landroid/view/View;

    return-object v0
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lezg$j;->fragment_create_org_step_3:I

    return v0
.end method
