.class public Lcom/alibaba/dingtalk/share/invite/InvitationDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "InvitationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lgwq;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/support/v4/view/ViewPager;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    sget v0, Lgvn$i;->share_box_float:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;-><init>(Landroid/content/Context;I)V

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 48
    return-void
.end method

.method private a()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 89
    iget-object v7, p0, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->c:Ljava/util/List;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 90
    :cond_0
    const-string/jumbo v6, "share"

    const/4 v7, 0x0

    const-string/jumbo v8, "Init InvitationDialog failed, InvitationUnit is empty"

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->dismiss()V

    .line 113
    :goto_0
    return-void

    .line 96
    :cond_1
    const/4 v7, 0x4

    iget-object v8, p0, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 99
    .local v4, "numColumns":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v1, "gridViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/GridView;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v5, "units":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;>;"
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    iget-object v7, p0, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 102
    iget-object v7, p0, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->c:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v7, p0, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v2, v7, :cond_4

    const/4 v3, 0x1

    .line 105
    .local v3, "isLastOne":Z
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v7, v4, :cond_2

    if-eqz v3, :cond_3

    .line 1125
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Lgvn$g;->layout_grid_view:I

    iget-object v9, p0, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->d:Landroid/support/v4/view/ViewPager;

    .line 1126
    invoke-virtual {v7, v8, v9, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 1127
    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 1128
    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1129
    new-instance v7, Lgvq;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Lgvq;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v7}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    .local v0, "gridView":Landroid/widget/GridView;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 101
    .end local v0    # "gridView":Landroid/widget/GridView;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v3    # "isLastOne":Z
    :cond_4
    move v3, v6

    .line 104
    goto :goto_2

    .line 112
    :cond_5
    iget-object v6, p0, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->d:Landroid/support/v4/view/ViewPager;

    new-instance v7, Lgwi;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->getContext()Landroid/content/Context;

    invoke-direct {v7, v1}, Lgwi;-><init>(Ljava/util/List;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setAdapter(Lgl;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 148
    .local v0, "id":I
    sget v1, Lgvn$e;->cancel:I

    if-ne v0, v1, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->dismiss()V

    .line 151
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 52
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget v0, Lgvn$g;->dialog_invitation:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->setContentView(I)V

    .line 54
    invoke-virtual {p0, v4}, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->setCanceledOnTouchOutside(Z)V

    .line 1060
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1061
    if-eqz v1, :cond_0

    .line 1062
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1063
    if-nez v0, :cond_1

    .line 1064
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 1071
    :goto_0
    const/16 v2, 0x50

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1072
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1077
    :cond_0
    sget v0, Lgvn$e;->message:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->e:Landroid/widget/TextView;

    .line 1078
    sget v0, Lgvn$e;->view_pager:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->d:Landroid/support/v4/view/ViewPager;

    .line 1079
    sget v0, Lgvn$e;->indicator:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->f:Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;

    .line 1081
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1082
    sget v0, Lgvn$e;->cancel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1084
    invoke-direct {p0}, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->a()V

    .line 1116
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Lgl;

    move-result-object v0

    invoke-virtual {v0}, Lgl;->getCount()I

    move-result v0

    if-gt v0, v4, :cond_2

    .line 1117
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->f:Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->setVisibility(I)V

    .line 1121
    :goto_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->f:Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;

    iget-object v1, p0, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 57
    return-void

    .line 1068
    :cond_1
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1069
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    .line 1119
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->f:Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->setVisibility(I)V

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->dismiss()V

    .line 157
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;

    .line 158
    .local v1, "unit":Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->b:Lgwq;

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/invite/InvitationDialog;->b:Lgwq;

    invoke-interface {v2, v1}, Lgwq;->a(Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v1    # "unit":Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;
    :cond_0
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "share"

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "InviteInfo is not valid, error="

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 163
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 162
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
