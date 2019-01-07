.class public final Lgdv;
.super Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$c;
.source "DentryListHeaderViewHolder.java"


# instance fields
.field public a:I

.field public b:I

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Lcom/alibaba/android/dingtalkui/button/DtSearchButton;

.field public g:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

.field public h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field public i:Landroid/view/View;

.field public j:Landroid/widget/LinearLayout;

.field private k:Lgdu$a;

.field private l:Landroid/widget/FrameLayout;

.field private m:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/LinearLayout;

.field private p:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/view/View;Lgdu$a;)V
    .locals 3
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "presenter"    # Lgdu$a;

    .prologue
    const/16 v2, 0x8

    .line 66
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$c;-><init>(Landroid/view/View;)V

    .line 67
    iput-object p2, p0, Lgdv;->k:Lgdu$a;

    .line 69
    sget v0, Lfzs$f;->tv_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgdv;->c:Landroid/widget/TextView;

    .line 71
    sget v0, Lfzs$f;->tv_share:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgdv;->d:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lgdv;->d:Landroid/widget/TextView;

    new-instance v1, Lgdv$1;

    invoke-direct {v1, p0}, Lgdv$1;-><init>(Lgdv;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    sget v0, Lfzs$f;->tv_permission:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgdv;->e:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lgdv;->e:Landroid/widget/TextView;

    new-instance v1, Lgdv$2;

    invoke-direct {v1, p0}, Lgdv$2;-><init>(Lgdv;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    sget v0, Lfzs$f;->fl_search:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lgdv;->l:Landroid/widget/FrameLayout;

    .line 88
    sget v0, Lfzs$f;->dsb_search:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/button/DtSearchButton;

    iput-object v0, p0, Lgdv;->f:Lcom/alibaba/android/dingtalkui/button/DtSearchButton;

    .line 89
    iget-object v0, p0, Lgdv;->f:Lcom/alibaba/android/dingtalkui/button/DtSearchButton;

    new-instance v1, Lgdv$3;

    invoke-direct {v1, p0}, Lgdv$3;-><init>(Lgdv;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/button/DtSearchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    sget v0, Lfzs$f;->stb_sort:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    iput-object v0, p0, Lgdv;->g:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    .line 97
    iget-object v0, p0, Lgdv;->g:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->getDropDownMenuCategory()Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lgdv;->g:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->getDropDownMenuEdit()Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lgdv;->g:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->setDefaultSort(I)V

    .line 100
    iget-object v0, p0, Lgdv;->g:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->b(Z)V

    .line 101
    iget-object v0, p0, Lgdv;->g:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    new-instance v1, Lgdv$4;

    invoke-direct {v1, p0}, Lgdv$4;-><init>(Lgdv;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->setToolBarItemSelectListener(Lgqp;)V

    .line 112
    sget v0, Lfzs$f;->iftv_view_mode:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lgdv;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 113
    iget-object v0, p0, Lgdv;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v1, Lgdv$5;

    invoke-direct {v1, p0}, Lgdv$5;-><init>(Lgdv;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    sget v0, Lfzs$f;->abgv_view_mode:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    iput-object v0, p0, Lgdv;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    .line 122
    iget-object v0, p0, Lgdv;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 124
    sget v0, Lfzs$f;->v_upload_control_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lgdv;->i:Landroid/view/View;

    .line 125
    sget v0, Lfzs$f;->ll_upload_control_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lgdv;->j:Landroid/widget/LinearLayout;

    .line 126
    sget v0, Lfzs$f;->tv_upload_state:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgdv;->n:Landroid/widget/TextView;

    .line 127
    sget v0, Lfzs$f;->ll_upload_pause_all:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lgdv;->o:Landroid/widget/LinearLayout;

    .line 128
    iget-object v0, p0, Lgdv;->o:Landroid/widget/LinearLayout;

    new-instance v1, Lgdv$6;

    invoke-direct {v1, p0}, Lgdv$6;-><init>(Lgdv;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    sget v0, Lfzs$f;->iftv_upload_pause_all:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lgdv;->p:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 135
    sget v0, Lfzs$f;->tv_upload_pause_all:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgdv;->q:Landroid/widget/TextView;

    .line 136
    sget v0, Lfzs$f;->ll_upload_delete_all:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lgdv;->r:Landroid/widget/LinearLayout;

    .line 137
    iget-object v0, p0, Lgdv;->r:Landroid/widget/LinearLayout;

    new-instance v1, Lgdv$7;

    invoke-direct {v1, p0}, Lgdv$7;-><init>(Lgdv;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    return-void
.end method

.method static synthetic a(Lgdv;)Lgdu$a;
    .locals 1
    .param p0, "x0"    # Lgdv;

    .prologue
    .line 33
    iget-object v0, p0, Lgdv;->k:Lgdu$a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;Lgdu$a;)Lgdv;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "presenter"    # Lgdu$a;

    .prologue
    .line 61
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lfzs$g;->cspace_dentry_header:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lgdv;

    invoke-direct {v1, v0, p2}, Lgdv;-><init>(Landroid/view/View;Lgdu$a;)V

    return-object v1
.end method

.method static synthetic b(Lgdv;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;
    .locals 1
    .param p0, "x0"    # Lgdv;

    .prologue
    .line 33
    iget-object v0, p0, Lgdv;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 146
    const-string/jumbo v2, "pref_space_new_to_view_mode"

    invoke-static {v2, v4}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 147
    .local v1, "newToViewMode":Z
    if-nez v1, :cond_0

    .line 148
    iget-object v2, p0, Lgdv;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-static {v2, v5}, Lgpk;->a(Landroid/view/View;I)V

    .line 172
    :goto_0
    return-void

    .line 152
    :cond_0
    const-string/jumbo v2, "pref_space_new_to_view_mode"

    invoke-static {v2, v3}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "guideMsg":Ljava/lang/String;
    iget v2, p0, Lgdv;->a:I

    if-ne v2, v4, :cond_2

    .line 155
    sget v2, Lfzs$h;->dt_space_filelist_switchlist_tolist_tips:I

    invoke-static {v2}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    :cond_1
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 160
    iget-object v2, p0, Lgdv;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-static {v2, v5}, Lgpk;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 156
    :cond_2
    iget v2, p0, Lgdv;->a:I

    if-nez v2, :cond_1

    .line 157
    sget v2, Lfzs$h;->dt_space_filelist_switchlist_tips:I

    invoke-static {v2}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 164
    :cond_3
    iget-object v2, p0, Lgdv;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-static {v2, v3}, Lgpk;->a(Landroid/view/View;I)V

    .line 165
    iget-object v2, p0, Lgdv;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setContent(Ljava/lang/String;)V

    .line 166
    iget-object v2, p0, Lgdv;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    new-instance v3, Lgdv$8;

    invoke-direct {v3, p0}, Lgdv$8;-><init>(Lgdv;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;

    .prologue
    .line 177
    return-void
.end method
