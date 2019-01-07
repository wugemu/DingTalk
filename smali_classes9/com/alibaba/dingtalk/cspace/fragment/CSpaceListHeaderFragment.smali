.class public abstract Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;
.super Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;
.source "CSpaceListHeaderFragment.java"


# instance fields
.field protected A:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field protected B:Landroid/widget/FrameLayout;

.field protected C:Lcom/alibaba/android/dingtalkui/button/DtSearchButton;

.field protected D:Z

.field protected E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

.field protected F:Landroid/view/View;

.field protected G:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field protected r:Landroid/widget/TextView;

.field protected v:Ljava/lang/String;

.field protected w:Z

.field protected x:Landroid/widget/TextView;

.field protected y:Landroid/widget/LinearLayout;

.field protected z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;-><init>()V

    return-void
.end method

.method private a(Landroid/widget/ListView;IZ)V
    .locals 6
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "force"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 162
    if-nez p1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->K_()Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    move-result-object v0

    .line 166
    .local v0, "spaceBaseActivity":Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;
    if-eqz v0, :cond_0

    .line 169
    if-nez p3, :cond_3

    .line 1203
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->C:Lcom/alibaba/android/dingtalkui/button/DtSearchButton;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->C:Lcom/alibaba/android/dingtalkui/button/DtSearchButton;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkui/button/DtSearchButton;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_7

    :cond_2
    move v1, v2

    .line 169
    :goto_1
    if-eqz v1, :cond_4

    .line 170
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->supportInvalidateOptionsMenu()V

    .line 172
    :cond_4
    if-nez p3, :cond_6

    .line 2178
    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->v:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->r:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->r:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_d

    .line 172
    :cond_5
    :goto_2
    if-eqz v2, :cond_0

    .line 173
    :cond_6
    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->w:Z

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->v:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 1207
    :cond_7
    if-eqz p2, :cond_8

    move v1, v4

    .line 1218
    :goto_4
    iget-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->D:Z

    if-eq v1, v3, :cond_c

    .line 1219
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->D:Z

    move v1, v4

    .line 1220
    goto :goto_1

    .line 1210
    :cond_8
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1211
    if-eqz v5, :cond_16

    .line 1212
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    if-nez v1, :cond_9

    move v1, v2

    .line 1213
    :goto_5
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->B:Landroid/widget/FrameLayout;

    if-nez v3, :cond_a

    move v3, v2

    :goto_6
    add-int/2addr v1, v3

    .line 1215
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v3, v5

    if-gt v3, v1, :cond_b

    move v1, v4

    goto :goto_4

    .line 1212
    :cond_9
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->getHeight()I

    move-result v1

    goto :goto_5

    .line 1213
    :cond_a
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v3

    goto :goto_6

    :cond_b
    move v1, v2

    .line 1215
    goto :goto_4

    :cond_c
    move v1, v2

    .line 1222
    goto :goto_1

    .line 2182
    :cond_d
    if-eqz p2, :cond_e

    move v1, v4

    .line 2195
    :goto_7
    iget-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->w:Z

    if-eq v1, v3, :cond_5

    .line 2196
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->w:Z

    move v2, v4

    .line 2197
    goto :goto_2

    .line 2185
    :cond_e
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2186
    if-eqz v5, :cond_15

    .line 2187
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    if-nez v1, :cond_f

    move v1, v2

    .line 2188
    :goto_8
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->B:Landroid/widget/FrameLayout;

    if-nez v3, :cond_10

    move v3, v2

    :goto_9
    add-int/2addr v3, v1

    .line 2189
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->y:Landroid/widget/LinearLayout;

    if-nez v1, :cond_11

    move v1, v2

    :goto_a
    add-int/2addr v3, v1

    .line 2190
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->r:Landroid/widget/TextView;

    if-nez v1, :cond_12

    move v1, v2

    :goto_b
    add-int/2addr v1, v3

    .line 2192
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v3, v5

    if-gt v3, v1, :cond_13

    move v1, v4

    goto :goto_7

    .line 2187
    :cond_f
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->getHeight()I

    move-result v1

    goto :goto_8

    .line 2188
    :cond_10
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    goto :goto_9

    .line 2189
    :cond_11
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    goto :goto_a

    .line 2190
    :cond_12
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->r:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v1

    goto :goto_b

    :cond_13
    move v1, v2

    .line 2192
    goto :goto_7

    .line 173
    :cond_14
    const-string/jumbo v1, ""

    goto/16 :goto_3

    :cond_15
    move v1, v2

    goto :goto_7

    :cond_16
    move v1, v2

    goto/16 :goto_4
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v3, 0x8

    .line 42
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lfzs$g;->cspace_list_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->F:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->F:Landroid/view/View;

    sget v1, Lfzs$f;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->r:Landroid/widget/TextView;

    .line 45
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->F:Landroid/view/View;

    sget v1, Lfzs$f;->tv_share:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->x:Landroid/widget/TextView;

    .line 50
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->x:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-static {}, Lglr;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->F:Landroid/view/View;

    sget v1, Lfzs$f;->ll_permission:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->y:Landroid/widget/LinearLayout;

    .line 55
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->F:Landroid/view/View;

    sget v1, Lfzs$f;->iftv_permission:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->A:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 56
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->F:Landroid/view/View;

    sget v1, Lfzs$f;->tv_permission:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->z:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->F:Landroid/view/View;

    sget v1, Lfzs$f;->fl_search:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->B:Landroid/widget/FrameLayout;

    .line 59
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->F:Landroid/view/View;

    sget v1, Lfzs$f;->dsb_search:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/button/DtSearchButton;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->C:Lcom/alibaba/android/dingtalkui/button/DtSearchButton;

    .line 61
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->F:Landroid/view/View;

    sget v1, Lfzs$f;->space_tool_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    .line 62
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->getDropDownMenuCategory()Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->getDropDownMenuEdit()Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->setVisibility(I)V

    .line 66
    :cond_2
    return-void
.end method

.method protected final a(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->y:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected final a(Landroid/widget/ListView;I)V
    .locals 1
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "firstVisibleItem"    # I

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->a(Landroid/widget/ListView;IZ)V

    .line 152
    return-void
.end method

.method protected final a(Landroid/widget/ListView;Z)V
    .locals 2
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "force"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 155
    if-nez p1, :cond_0

    .line 159
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->a(Landroid/widget/ListView;IZ)V

    goto :goto_0
.end method

.method protected final b(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->C:Lcom/alibaba/android/dingtalkui/button/DtSearchButton;

    if-nez v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->C:Lcom/alibaba/android/dingtalkui/button/DtSearchButton;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/button/DtSearchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->v:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_0
    return-void
.end method

.method protected final c(Z)V
    .locals 2
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->x:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-static {}, Lglr;->a()Z

    .line 80
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->x:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final d(I)V
    .locals 3
    .param p1, "textResId"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1104
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->z:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 1107
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->z:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :cond_1
    return-void
.end method

.method protected final d(Z)V
    .locals 3
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->x:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {}, Lglr;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->x:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 88
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->x:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p1, :cond_2

    sget v0, Lfzs$c;->cspace_common_blue:I

    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_2
    sget v0, Lfzs$c;->ui_common_text_disabled_color:I

    goto :goto_1
.end method

.method protected final e(Z)V
    .locals 2
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->y:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->y:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method protected final f(Z)V
    .locals 3
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 118
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->y:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    .line 127
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 122
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p1, :cond_1

    sget v1, Lfzs$c;->ui_common_content_fg_color_alpha_40:I

    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 125
    .local v0, "color":I
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->z:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->A:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    goto :goto_0

    .line 122
    .end local v0    # "color":I
    :cond_1
    sget v1, Lfzs$c;->ui_common_text_disabled_color:I

    goto :goto_1
.end method

.method protected final g(Z)V
    .locals 2
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->C:Lcom/alibaba/android/dingtalkui/button/DtSearchButton;

    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->B:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final h(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->C:Lcom/alibaba/android/dingtalkui/button/DtSearchButton;

    if-nez v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->C:Lcom/alibaba/android/dingtalkui/button/DtSearchButton;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/button/DtSearchButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method public final i(Z)V
    .locals 2
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 226
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->G:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-nez v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->G:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public final j(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 233
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    if-nez v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->b(Z)V

    goto :goto_0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->D:Z

    return v0
.end method

.method public final k(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->D:Z

    .line 245
    return-void
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListHeaderFragment;->w:Z

    return v0
.end method
