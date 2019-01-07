.class public Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;
.super Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;
.source "CreateOrgStep4Fragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$a;
    }
.end annotation


# instance fields
.field private b:I

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/widget/LinearLayout;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field private i:Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;

.field private j:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;-><init>()V

    .line 74
    new-instance v0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$1;-><init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->j:Landroid/content/BroadcastReceiver;

    .line 324
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->c:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;)Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;
    .param p1, "x1"    # Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->i:Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->d:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;)Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->i:Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;

    .prologue
    .line 60
    iget v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->g:I

    return v0
.end method

.method private g()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 232
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 233
    iput v10, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->g:I

    .line 234
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->f:Ljava/util/List;

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

    .line 235
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

    .line 241
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;>;"
    iget-object v6, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->c:Landroid/util/SparseArray;

    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptId()J

    move-result-wide v8

    long-to-int v7, v8

    invoke-virtual {v6, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 243
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getSubDepts()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getSubDepts()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 246
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

    .line 247
    .local v3, "m":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 248
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->c:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptId()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v7, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 2305
    .end local v3    # "m":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    :cond_2
    new-instance v2, Lcom/alibaba/android/user/contact/view/ListViewForScroll;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/alibaba/android/user/contact/view/ListViewForScroll;-><init>(Landroid/content/Context;)V

    .line 2306
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2307
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v6, v10, v10, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2308
    invoke-virtual {v2, v6}, Lcom/alibaba/android/user/contact/view/ListViewForScroll;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    .local v2, "listView":Lcom/alibaba/android/user/contact/view/ListViewForScroll;
    invoke-virtual {v2, v10}, Lcom/alibaba/android/user/contact/view/ListViewForScroll;->setDividerHeight(I)V

    .line 256
    new-instance v0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$a;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$a;-><init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;Ljava/util/List;)V

    .line 257
    .local v0, "adapter":Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$a;
    invoke-virtual {v2, v0}, Lcom/alibaba/android/user/contact/view/ListViewForScroll;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 258
    iget v6, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->g:I

    .line 2403
    iput v6, v0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$a;->a:I

    .line 259
    iget v6, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->g:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->g:I

    .line 260
    new-instance v6, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$2;

    invoke-direct {v6, p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$2;-><init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;Ljava/util/List;)V

    invoke-virtual {v2, v6}, Lcom/alibaba/android/user/contact/view/ListViewForScroll;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 296
    iget-object v6, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->d:Landroid/util/SparseArray;

    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptId()J

    move-result-wide v8

    long-to-int v7, v8

    invoke-virtual {v6, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 297
    iget-object v6, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 302
    .end local v0    # "adapter":Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment$a;
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
    .line 214
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->f:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->setOrgDeptList(Ljava/util/List;)V

    .line 215
    const-string/jumbo v0, "cre_org_v2"

    const-string/jumbo v1, "cos3 save data"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    return-void
.end method

.method public final b(Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;)V
    .locals 5
    .param p1, "creation"    # Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x2

    .line 220
    invoke-virtual {p1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->getOrgDeptList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->f:Ljava/util/List;

    .line 221
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->f:Ljava/util/List;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->f:Ljava/util/List;

    .line 224
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->g()V

    .line 225
    invoke-virtual {p1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->getCurrentStep()I

    move-result v0

    if-le v1, v0, :cond_1

    .line 226
    invoke-virtual {p1, v1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->setCurrentStep(I)V

    .line 228
    :cond_1
    const-string/jumbo v0, "cre_org_v2"

    const-string/jumbo v1, "cos4 restore data:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    return-void
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 209
    invoke-super {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->f()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 189
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->onCreate(Landroid/os/Bundle;)V

    .line 190
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->c:Landroid/util/SparseArray;

    .line 191
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->d:Landroid/util/SparseArray;

    .line 1319
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1320
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1321
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 193
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
    .line 197
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 198
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->I:Landroid/view/View;

    sget v2, Lezg$h;->cos4_ll_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->e:Landroid/widget/LinearLayout;

    .line 200
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "create_org_limit_member"

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->b:I

    .line 201
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->I:Landroid/view/View;

    sget v2, Lezg$h;->cos4_tv_member_count_limit:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 202
    .local v0, "limitView":Landroid/widget/TextView;
    sget v1, Lezg$l;->create_org_limit_count_hint:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->I:Landroid/view/View;

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 315
    invoke-super {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->onDestroy()V

    .line 316
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 179
    sget v0, Lezg$j;->fragment_create_org_step_4:I

    return v0
.end method
