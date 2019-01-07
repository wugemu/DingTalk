.class public Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "DingNewTabListFragmentImpl.java"


# instance fields
.field public a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

.field b:I

.field c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/view/View;

.field private e:Lcom/alibaba/android/ding/base/objects/ISolicitudeFooterView;

.field private f:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

.field private g:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

.field private h:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private i:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

.field private j:Laxs;

.field private k:Lbhs;

.field private l:Lbhs;

.field private m:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:Z

.field private p:I

.field private q:J

.field private r:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private s:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroid/widget/AbsListView$OnScrollListener;

.field private u:Lcjo$a;

.field private v:Lbiz;

.field private w:Lcpo$a;

.field private x:Lcom/alibaba/android/ding/base/objects/ObjectDing$a;

.field private y:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 107
    new-instance v0, Lbhs;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingAll:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    invoke-direct {v0, v1}, Lbhs;-><init>(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->k:Lbhs;

    .line 108
    new-instance v0, Lbhs;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingDeleted:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    invoke-direct {v0, v1}, Lbhs;-><init>(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->l:Lbhs;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->m:Ljava/util/Collection;

    .line 112
    const/4 v0, 0x7

    iput v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->p:I

    .line 113
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->b:I

    .line 114
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->c:Ljava/util/Set;

    .line 115
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->q:J

    .line 118
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->r:Landroid/util/SparseArray;

    .line 119
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->s:Landroid/util/SparseArray;

    .line 129
    new-instance v0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$1;-><init>(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->x:Lcom/alibaba/android/ding/base/objects/ObjectDing$a;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->b:I

    return p1
.end method

.method private static a(I[Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "selectedIndex"    # I
    .param p1, "dingFilterArray"    # [Ljava/lang/String;

    .prologue
    .line 924
    if-ltz p0, :cond_0

    array-length v0, p1

    if-lt p0, v0, :cond_1

    .line 925
    :cond_0
    const/4 p0, 0x0

    .line 928
    :cond_1
    aget-object v0, p1, p0

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    .line 10592
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "confirm_status_info_key"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->m:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;Lcma;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;
    .param p1, "x1"    # Lcma;

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->a(Lcma;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "loadingText"    # Ljava/lang/CharSequence;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 785
    invoke-direct {p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->h()V

    .line 786
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->h:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 787
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->h:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 788
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->h:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 789
    return-void
.end method

.method private a(Ljava/util/Collection;I)V
    .locals 3
    .param p2, "filterType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "list":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    const/16 v2, 0x8

    .line 841
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->I:Landroid/view/View;

    if-nez v0, :cond_0

    .line 854
    :goto_0
    return-void

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->I:Landroid/view/View;

    sget v1, Laxp$f;->loading_indicator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 845
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->m:Ljava/util/Collection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->m:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 846
    :cond_1
    invoke-direct {p0, p2}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->b(I)V

    .line 852
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->j:Laxs;

    invoke-virtual {v0, p1, p2}, Laxs;->a(Ljava/util/Collection;I)V

    .line 8837
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->e:Lcom/alibaba/android/ding/base/objects/ISolicitudeFooterView;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ISolicitudeFooterView;->a()V

    goto :goto_0

    .line 847
    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 848
    :cond_3
    invoke-direct {p0, p2}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->b(I)V

    goto :goto_1

    .line 7919
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->g:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->setVisibility(I)V

    goto :goto_1
.end method

.method private b(I)V
    .locals 6
    .param p1, "filterType"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 862
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->g:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->setVisibility(I)V

    .line 863
    invoke-static {p1}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcpk;->a(Ljava/lang/String;I)I

    move-result v0

    .line 864
    .local v0, "selectedSubFilterIndex":I
    packed-switch p1, :pswitch_data_0

    .line 916
    :goto_0
    return-void

    .line 866
    :pswitch_0
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->g:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    sget v3, Laxp$i;->icon_ding_fill:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->setEmptyIconFontResource(I)V

    .line 867
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->g:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Laxp$b;->ding_dt_ding_sub_filter_empty:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->a(I[Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->setEmptyTextContentString(Ljava/lang/CharSequence;)V

    .line 868
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->g:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    sget v3, Laxp$i;->dt_ding_empty_content_tips_link:I

    sget v4, Laxp$c;->ui_common_level4_text_color:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->a(IILandroid/view/View$OnClickListener;)V

    .line 869
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->g:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    invoke-static {}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    sget v1, Laxp$i;->dt_ding_view_introduction:I

    :cond_0
    new-instance v3, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$6;

    invoke-direct {v3, p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$6;-><init>(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)V

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->a(ILandroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 878
    :pswitch_1
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->g:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    sget v3, Laxp$i;->icon_task_fill:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->setEmptyIconFontResource(I)V

    .line 879
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->g:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Laxp$b;->ding_dt_task_sub_filter_empty:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->a(I[Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->setEmptyTextContentString(Ljava/lang/CharSequence;)V

    .line 880
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->g:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    sget v3, Laxp$i;->dt_ding_empty_task_tips_link:I

    sget v4, Laxp$c;->ui_common_level4_text_color:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->a(IILandroid/view/View$OnClickListener;)V

    .line 881
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->g:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    invoke-static {}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->j()Z

    move-result v3

    if-eqz v3, :cond_1

    sget v1, Laxp$i;->dt_ding_view_introduction:I

    :cond_1
    new-instance v3, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$7;

    invoke-direct {v3, p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$7;-><init>(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)V

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->a(ILandroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 890
    :pswitch_2
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->g:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    sget v3, Laxp$i;->icon_meeting_fill:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->setEmptyIconFontResource(I)V

    .line 891
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->g:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Laxp$b;->ding_dt_meeting_sub_filter_empty:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->a(I[Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->setEmptyTextContentString(Ljava/lang/CharSequence;)V

    .line 892
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->g:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    sget v3, Laxp$i;->dt_ding_empty_meeting_tips_message:I

    sget v4, Laxp$c;->ui_common_level4_text_color:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->a(IILandroid/view/View$OnClickListener;)V

    .line 893
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->g:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    invoke-static {}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->j()Z

    move-result v3

    if-eqz v3, :cond_2

    sget v1, Laxp$i;->dt_ding_view_introduction:I

    :cond_2
    new-instance v3, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$8;

    invoke-direct {v3, p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$8;-><init>(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)V

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->a(ILandroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 902
    :pswitch_3
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->g:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    sget v3, Laxp$i;->icon_ping_fill:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->setEmptyIconFontResource(I)V

    .line 903
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->g:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    sget v3, Laxp$i;->dt_ding_empty_pinned_tips:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->setEmptyTextContent(I)V

    .line 904
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->g:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    sget v3, Laxp$i;->dt_ding_empty_pinned_tips_message:I

    sget v4, Laxp$c;->ui_common_level4_text_color:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->a(IILandroid/view/View$OnClickListener;)V

    .line 905
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->g:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    invoke-virtual {v2, v1, v5}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->a(ILandroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 908
    :pswitch_4
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->g:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    sget v3, Laxp$i;->icon_delete_fill:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->setEmptyIconFontResource(I)V

    .line 909
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->g:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    sget v3, Laxp$i;->dt_ding_empty_deleted_tips:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->setEmptyTextContent(I)V

    .line 910
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->g:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    sget v3, Laxp$i;->dt_ding_empty_deleted_tips2:I

    sget v4, Laxp$c;->ui_common_level4_text_color:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->a(IILandroid/view/View$OnClickListener;)V

    .line 911
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->g:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    invoke-virtual {v2, v1, v5}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->a(ILandroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 864
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->i()V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    .prologue
    .line 86
    iget v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->p:I

    return v0
.end method

.method private static c(I)Ljava/lang/String;
    .locals 3
    .param p0, "currentFilter"    # I

    .prologue
    .line 955
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "pref_key_sub_filter_ding_selected_index"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->n:Z

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)Lbhs;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->l:Lbhs;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)Lbhs;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->k:Lbhs;

    return-object v0
.end method

.method private h()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 793
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->h:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->h:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 794
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->h:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    :cond_0
    iput-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->h:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 800
    :goto_0
    return-void

    .line 796
    :catch_0
    move-exception v0

    .line 797
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string/jumbo v1, "[DingListFragmentV2]dismissLoadingDialog failed"

    invoke-static {v1, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 799
    iput-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->h:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    iput-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->h:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    throw v1
.end method

.method static synthetic i(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)Laxs;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->j:Laxs;

    return-object v0
.end method

.method private i()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x7

    const/4 v3, 0x3

    .line 805
    iget v1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->p:I

    invoke-static {v1}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lcpk;->a(Ljava/lang/String;I)I

    move-result v0

    .line 806
    .local v0, "selectedSubFilterIndex":I
    iget v1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->p:I

    sparse-switch v1, :sswitch_data_0

    .line 834
    :goto_0
    return-void

    .line 808
    :sswitch_0
    if-ne v0, v6, :cond_0

    .line 809
    invoke-static {}, Lbbs;->a()Lbbs;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->m:Ljava/util/Collection;

    invoke-virtual {v1, v2}, Lbbs;->b(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->a(Ljava/util/Collection;I)V

    goto :goto_0

    .line 810
    :cond_0
    if-ne v0, v2, :cond_1

    .line 811
    invoke-static {}, Lbbs;->a()Lbbs;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->m:Ljava/util/Collection;

    invoke-virtual {v1, v2}, Lbbs;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->a(Ljava/util/Collection;I)V

    goto :goto_0

    .line 814
    :cond_1
    invoke-static {}, Lbbs;->a()Lbbs;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->m:Ljava/util/Collection;

    invoke-virtual {v1, v2, v5}, Lbbs;->b(Ljava/util/Collection;Z)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->a(Ljava/util/Collection;I)V

    goto :goto_0

    .line 818
    :sswitch_1
    if-ne v0, v2, :cond_2

    .line 819
    invoke-static {}, Lbbs;->a()Lbbs;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->m:Ljava/util/Collection;

    invoke-virtual {v1, v2}, Lbbs;->f(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->a(Ljava/util/Collection;I)V

    goto :goto_0

    .line 820
    :cond_2
    if-ne v0, v6, :cond_3

    .line 821
    invoke-static {}, Lbbs;->a()Lbbs;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->m:Ljava/util/Collection;

    invoke-virtual {v1, v2}, Lbbs;->c(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->a(Ljava/util/Collection;I)V

    goto :goto_0

    .line 822
    :cond_3
    if-ne v0, v3, :cond_4

    .line 823
    invoke-static {}, Lbbs;->a()Lbbs;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->m:Ljava/util/Collection;

    invoke-virtual {v1, v2}, Lbbs;->d(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->a(Ljava/util/Collection;I)V

    goto :goto_0

    .line 824
    :cond_4
    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 825
    invoke-static {}, Lbbs;->a()Lbbs;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->m:Ljava/util/Collection;

    invoke-virtual {v1, v2}, Lbbs;->e(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->a(Ljava/util/Collection;I)V

    goto :goto_0

    .line 828
    :cond_5
    invoke-static {}, Lbbs;->a()Lbbs;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->m:Ljava/util/Collection;

    invoke-virtual {v1, v2}, Lbbs;->g(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->a(Ljava/util/Collection;I)V

    goto/16 :goto_0

    .line 806
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic j(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->c:Ljava/util/Set;

    return-object v0
.end method

.method private static j()Z
    .locals 1

    .prologue
    .line 857
    invoke-static {}, Lcms;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcms;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic k(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    .prologue
    .line 86
    .line 9637
    invoke-static {}, Lcms;->n()Ljava/lang/String;

    move-result-object v0

    .line 9638
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$18;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$18;-><init>(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;Ljava/lang/String;)V

    const-class v0, Lcma;

    .line 9673
    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 9638
    invoke-static {v2, v0, v3}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, v0}, Lbbp;->c(Lcma;)V

    .line 86
    return-void
.end method

.method static synthetic l(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->q:J

    return-wide v0
.end method

.method static synthetic m(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    .prologue
    .line 86
    iget v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->b:I

    return v0
.end method

.method static synthetic n(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)Lbiz;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->v:Lbiz;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->h()V

    return-void
.end method


# virtual methods
.method public final F_()Landroid/widget/ListView;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 774
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->I:Landroid/view/View;

    if-nez v2, :cond_0

    move-object v0, v1

    .line 781
    :goto_0
    return-object v0

    .line 777
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->I:Landroid/view/View;

    sget v3, Laxp$f;->home_ding_list:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 778
    .local v0, "v":Landroid/view/View;
    instance-of v2, v0, Landroid/widget/ListView;

    if-eqz v2, :cond_1

    .line 779
    check-cast v0, Landroid/widget/ListView;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 781
    goto :goto_0
.end method

.method public final a(I)V
    .locals 5
    .param p1, "filter"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 237
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-static {v0}, Lcpc;->a(Landroid/widget/AbsListView;)V

    .line 3249
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->getFirstVisiblePosition()I

    move-result v2

    .line 3250
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3251
    if-nez v0, :cond_1

    move v0, v1

    .line 3252
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->r:Landroid/util/SparseArray;

    iget v4, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3253
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->s:Landroid/util/SparseArray;

    iget v3, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->p:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 240
    iput p1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->p:I

    .line 242
    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->f()V

    .line 243
    invoke-direct {p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->i()V

    .line 3257
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->r:Landroid/util/SparseArray;

    iget v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->p:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4033
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 3258
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->s:Landroid/util/SparseArray;

    iget v3, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->p:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 5033
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 3259
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_0

    .line 3260
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setSelectionFromTop(II)V

    .line 246
    :cond_0
    return-void

    .line 3251
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0
.end method

.method public final a(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 316
    instance-of v0, p1, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    if-nez v0, :cond_0

    .line 331
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-void

    .line 319
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    check-cast p1, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    .end local p1    # "view":Landroid/view/View;
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    .line 320
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    new-instance v1, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$11;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$11;-><init>(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->setNewTabActionbarListener(Lcom/alibaba/android/ding/widget/DingNewTabActionBar$a;)V

    goto :goto_0
.end method

.method a(Lcma;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 764
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 765
    .local v1, "dingIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->c:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7109
    .local v0, "dingId":Ljava/lang/String;
    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 766
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 768
    .end local v0    # "dingId":Ljava/lang/String;
    :cond_0
    sget v2, Laxp$i;->loading:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->a(Ljava/lang/CharSequence;)V

    .line 769
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->p:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4, p1}, Lbbp;->a(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Lcma;)V

    .line 770
    return-void
.end method

.method public final c()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 206
    iget v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->g()V

    .line 208
    const/4 v0, 0x1

    .line 211
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 265
    iget-boolean v10, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->n:Z

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    if-eqz v10, :cond_7

    .line 266
    const/4 v0, -0x1

    .line 5701
    .local v0, "anchor":I
    iget-object v10, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->j:Laxs;

    if-nez v10, :cond_1

    .line 5702
    const/4 v3, 0x0

    .line 268
    .local v3, "dingList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    :goto_0
    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    .line 269
    const/4 v6, 0x0

    .line 270
    .local v6, "isListViewAtBottom":Z
    iget-object v10, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v10}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->getLastVisiblePosition()I

    move-result v10

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-lt v10, v11, :cond_0

    .line 271
    iget-object v10, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v11, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 273
    .local v9, "v":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    iget-object v11, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->getBottom()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/16 v11, 0xf

    if-ge v10, v11, :cond_0

    .line 274
    const/4 v6, 0x1

    .line 278
    .end local v9    # "v":Landroid/view/View;
    :cond_0
    const/4 v4, 0x0

    .line 279
    .local v4, "first":I
    if-nez v6, :cond_3

    .line 281
    iget-object v10, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v10}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->getChildCount()I

    move-result v1

    .line 283
    .local v1, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v1, :cond_2

    .line 284
    iget-object v10, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v10, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 285
    .restart local v9    # "v":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getY()F

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-gtz v10, :cond_2

    .line 283
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 5704
    .end local v1    # "childCount":I
    .end local v3    # "dingList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    .end local v4    # "first":I
    .end local v5    # "i":I
    .end local v6    # "isListViewAtBottom":Z
    .end local v9    # "v":Landroid/view/View;
    :cond_1
    iget-object v10, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->j:Laxs;

    invoke-virtual {v10}, Laxs;->a()Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 289
    .restart local v1    # "childCount":I
    .restart local v3    # "dingList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    .restart local v4    # "first":I
    .restart local v5    # "i":I
    .restart local v6    # "isListViewAtBottom":Z
    :cond_2
    iget-object v10, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v10}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->getFirstVisiblePosition()I

    move-result v10

    add-int/2addr v10, v5

    iget-object v11, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->getHeaderViewsCount()I

    move-result v11

    sub-int v4, v10, v11

    .line 290
    if-gez v4, :cond_3

    .line 291
    const/4 v4, 0x0

    .line 294
    .end local v1    # "childCount":I
    .end local v5    # "i":I
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    .line 295
    .local v8, "size":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    if-ge v5, v8, :cond_6

    .line 296
    add-int v10, v5, v4

    rem-int v7, v10, v8

    .line 297
    .local v7, "ri":I
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 298
    .local v2, "ding":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    if-eqz v2, :cond_8

    .line 299
    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->A()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ag()Z

    move-result v10

    if-nez v10, :cond_5

    :cond_4
    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->X()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_8

    .line 300
    :cond_5
    move v0, v7

    .line 305
    .end local v2    # "ding":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .end local v4    # "first":I
    .end local v5    # "i":I
    .end local v6    # "isListViewAtBottom":Z
    .end local v7    # "ri":I
    .end local v8    # "size":I
    :cond_6
    if-ltz v0, :cond_7

    .line 306
    iget-object v10, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v11, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->getHeaderViewsCount()I

    move-result v11

    add-int/2addr v11, v0

    invoke-static {v10, v11}, Lcpc;->a(Landroid/widget/AbsListView;I)V

    .line 309
    .end local v0    # "anchor":I
    .end local v3    # "dingList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    :cond_7
    return-void

    .line 295
    .restart local v0    # "anchor":I
    .restart local v2    # "ding":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .restart local v3    # "dingList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    .restart local v4    # "first":I
    .restart local v5    # "i":I
    .restart local v6    # "isListViewAtBottom":Z
    .restart local v7    # "ri":I
    .restart local v8    # "size":I
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method public final f()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 334
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    if-nez v0, :cond_0

    .line 6168
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    iget v1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->b:I

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->c:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    .line 6155
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 6156
    iget-object v1, v0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6157
    iget-object v1, v0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6158
    iget-object v1, v0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6159
    iget-object v1, v0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6160
    iget-object v0, v0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 6162
    :cond_1
    iget-object v1, v0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6163
    iget-object v1, v0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6164
    iget-object v1, v0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6165
    iget-object v1, v0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6166
    iget-object v1, v0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6167
    if-nez v2, :cond_2

    .line 6168
    iget-object v0, v0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->c:Landroid/widget/TextView;

    sget v1, Laxp$i;->ding_home_menu_delete_all:I

    invoke-static {v1}, Leda;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6170
    :cond_2
    iget-object v1, v0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Laxp$i;->ding_home_menu_delete:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 708
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->b:I

    .line 709
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 710
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->j:Laxs;

    iget v1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->b:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->c:Ljava/util/Set;

    invoke-virtual {v0, v1, v2, v3}, Laxs;->a(ILbiz;Ljava/util/Set;)V

    .line 711
    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->f()V

    .line 712
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->o:Z

    .line 174
    new-instance v0, Laxz;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget v3, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->b:I

    iget-wide v4, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->q:J

    invoke-direct/range {v0 .. v5}, Laxz;-><init>(Landroid/app/Activity;Landroid/widget/ListView;IJ)V

    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->j:Laxs;

    .line 175
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->j:Laxs;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1596
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$17;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$17;-><init>(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 1677
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->y:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1678
    new-instance v0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$2;-><init>(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->y:Landroid/content/BroadcastReceiver;

    .line 1695
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.workapp.ding.choose.mode.change"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1696
    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->y:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2498
    :cond_0
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingAll:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->x:Lcom/alibaba/android/ding/base/objects/ObjectDing$a;

    invoke-virtual {v0, v1, v2}, Lbbp;->a(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcom/alibaba/android/ding/base/objects/ObjectDing$a;)V

    .line 2499
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$16;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$16;-><init>(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)V

    invoke-virtual {v0, v1}, Lbbp;->b(Lcma;)V

    .line 179
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 163
    .line 1158
    sget v1, Laxp$g;->ding_fragment_home_ding_list:I

    .line 163
    invoke-virtual {p1, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1341
    .local v0, "rootView":Landroid/view/View;
    sget v1, Laxp$f;->swipe_layout_ding_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    iput-object v1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .line 1342
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v2, 0x4

    new-array v2, v2, [I

    sget v3, Laxp$c;->swipe_refresh_color1:I

    aput v3, v2, v5

    const/4 v3, 0x1

    sget v4, Laxp$c;->swipe_refresh_color2:I

    aput v4, v2, v3

    const/4 v3, 0x2

    sget v4, Laxp$c;->swipe_refresh_color1:I

    aput v4, v2, v3

    const/4 v3, 0x3

    sget v4, Laxp$c;->swipe_refresh_color2:I

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 1343
    sget v1, Laxp$f;->home_ding_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iput-object v1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .line 1344
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/16 v2, 0x40

    invoke-virtual {v1, v5, v5, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a(ZII)V

    .line 1345
    sget v1, Laxp$f;->list_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    iput-object v1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->g:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    .line 1353
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->d:Landroid/view/View;

    .line 1354
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->d:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Laxp$c;->ui_common_page_bg_color:I

    invoke-static {v2, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1356
    new-instance v1, Lcom/alibaba/android/ding/widget/SolicitudeFooterView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/ding/widget/SolicitudeFooterView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->e:Lcom/alibaba/android/ding/base/objects/ISolicitudeFooterView;

    .line 1357
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->e:Lcom/alibaba/android/ding/base/objects/ISolicitudeFooterView;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->addFooterView(Landroid/view/View;)V

    .line 1348
    new-instance v1, Lcpo$a;

    invoke-direct {v1}, Lcpo$a;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->w:Lcpo$a;

    .line 1349
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->w:Lcpo$a;

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v1, v2}, Lcpo$a;->a(Landroid/view/View;)V

    .line 1361
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    new-instance v1, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$12;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$12;-><init>(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)V

    const-class v3, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;

    .line 1410
    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 1361
    invoke-static {v1, v3, v4}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;)V

    .line 1412
    new-instance v1, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$13;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$13;-><init>(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)V

    iput-object v1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->t:Landroid/widget/AbsListView$OnScrollListener;

    .line 1444
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->t:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1447
    new-instance v1, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$14;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$14;-><init>(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)V

    const-class v2, Lcjo$a;

    .line 1479
    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 1447
    invoke-static {v1, v2, v3}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcjo$a;

    iput-object v1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->u:Lcjo$a;

    .line 1480
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->u:Lcjo$a;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Lcjo$a;)V

    .line 1482
    new-instance v1, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$15;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$15;-><init>(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)V

    iput-object v1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->v:Lbiz;

    .line 166
    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->I:Landroid/view/View;

    .line 167
    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->o:Z

    .line 217
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingAll:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->x:Lcom/alibaba/android/ding/base/objects/ObjectDing$a;

    invoke-virtual {v0, v1, v2}, Lbbp;->b(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcom/alibaba/android/ding/base/objects/ObjectDing$a;)V

    .line 218
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->u:Lcjo$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Lcjo$a;)V

    .line 219
    iput-object v3, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->u:Lcjo$a;

    .line 220
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->y:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->y:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 222
    iput-object v3, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->y:Landroid/content/BroadcastReceiver;

    .line 224
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDestroy()V

    .line 225
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->w:Lcpo$a;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->w:Lcpo$a;

    invoke-virtual {v0}, Lcpo$a;->a()V

    .line 232
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDestroyView()V

    .line 233
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onPause()V

    .line 202
    invoke-static {}, Lbla;->a()Lbla;

    move-result-object v0

    invoke-virtual {v0}, Lbla;->b()V

    .line 203
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onResume()V

    .line 194
    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->i()V

    .line 197
    :cond_0
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 158
    sget v0, Laxp$g;->ding_fragment_home_ding_list:I

    return v0
.end method

.method public setUserVisibleHint(Z)V
    .locals 3
    .param p1, "isVisibleToUser"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 183
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->setUserVisibleHint(Z)V

    .line 184
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->o:Z

    if-eqz v0, :cond_2

    .line 2579
    iget-boolean v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->n:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2580
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->n:Z

    .line 2583
    invoke-static {}, Lbju;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2584
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingAll:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    invoke-virtual {v0, v1, v2}, Lbbp;->b(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcma;)V

    .line 2587
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->l:Lbhs;

    invoke-virtual {v0, v2}, Lbhs;->a(Lbhs$a;)V

    .line 186
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->i()V

    .line 188
    :cond_2
    return-void
.end method
