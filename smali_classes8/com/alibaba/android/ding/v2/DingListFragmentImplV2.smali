.class public Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "DingListFragmentImplV2.java"


# instance fields
.field private A:I

.field private B:Z

.field private C:J

.field private D:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private E:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private F:Landroid/widget/AbsListView$OnScrollListener;

.field private M:Lcjo$a;

.field private N:Lbiz;

.field private O:Lcpo$a;

.field private P:Lcom/alibaba/android/ding/base/objects/ObjectDing$a;

.field private Q:Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;

.field private R:Landroid/content/BroadcastReceiver;

.field a:Landroid/view/View;

.field b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

.field c:Laxs;

.field d:Z

.field e:I

.field f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/RelativeLayout;

.field private n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private o:Landroid/view/View;

.field private p:Lcom/alibaba/android/ding/widget/DingAdsView;

.field private q:Lcom/alibaba/android/ding/base/objects/ISolicitudeFooterView;

.field private r:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

.field private s:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private t:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

.field private u:Landroid/widget/LinearLayout;

.field private v:Lbhs;

.field private w:Lbhs;

.field private x:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation
.end field

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 128
    new-instance v0, Lbhs;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingAll:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    invoke-direct {v0, v1}, Lbhs;-><init>(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->v:Lbhs;

    .line 129
    new-instance v0, Lbhs;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingDeleted:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    invoke-direct {v0, v1}, Lbhs;-><init>(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->w:Lbhs;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->x:Ljava/util/Collection;

    .line 134
    const/4 v0, 0x7

    iput v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->A:I

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->B:Z

    .line 136
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->e:I

    .line 137
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->f:Ljava/util/Set;

    .line 138
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->C:J

    .line 141
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->D:Landroid/util/SparseArray;

    .line 142
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->E:Landroid/util/SparseArray;

    .line 152
    new-instance v0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$1;-><init>(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->P:Lcom/alibaba/android/ding/base/objects/ObjectDing$a;

    .line 176
    new-instance v0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$12;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$12;-><init>(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->Q:Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;
    .param p1, "x1"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->e:I

    return p1
.end method

.method private static a(I[Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "selectedIndex"    # I
    .param p1, "dingFilterArray"    # [Ljava/lang/String;

    .prologue
    .line 1144
    if-ltz p0, :cond_0

    array-length v0, p1

    if-lt p0, v0, :cond_1

    .line 1145
    :cond_0
    const/4 p0, 0x0

    .line 1148
    :cond_1
    aget-object v0, p1, p0

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 97
    .line 10698
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

    .line 97
    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->x:Ljava/util/Collection;

    return-object v0
.end method

.method private a(IZ)V
    .locals 6
    .param p1, "filterType"    # I
    .param p2, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1080
    if-eqz p2, :cond_3

    .line 1081
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->r:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->setVisibility(I)V

    .line 1082
    invoke-static {p1}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcpk;->a(Ljava/lang/String;I)I

    move-result v0

    .line 1083
    .local v0, "selectedSubFilterIndex":I
    packed-switch p1, :pswitch_data_0

    .line 1140
    .end local v0    # "selectedSubFilterIndex":I
    :goto_0
    return-void

    .line 1085
    .restart local v0    # "selectedSubFilterIndex":I
    :pswitch_0
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->r:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    sget v3, Laxp$i;->icon_ding_fill:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->setEmptyIconFontResource(I)V

    .line 1086
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->r:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Laxp$b;->ding_dt_ding_sub_filter_empty:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(I[Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->setEmptyTextContentString(Ljava/lang/CharSequence;)V

    .line 1087
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->r:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    sget v3, Laxp$i;->dt_ding_empty_content_tips_link:I

    sget v4, Laxp$c;->ui_common_level4_text_color:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->a(IILandroid/view/View$OnClickListener;)V

    .line 1088
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->r:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    invoke-static {}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    sget v1, Laxp$i;->dt_ding_view_introduction:I

    :cond_0
    new-instance v3, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$10;

    invoke-direct {v3, p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$10;-><init>(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->a(ILandroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1097
    :pswitch_1
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->r:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    sget v3, Laxp$i;->icon_task_fill:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->setEmptyIconFontResource(I)V

    .line 1098
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->r:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Laxp$b;->ding_dt_task_sub_filter_empty:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(I[Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->setEmptyTextContentString(Ljava/lang/CharSequence;)V

    .line 1099
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->r:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    sget v3, Laxp$i;->dt_ding_empty_task_tips_link:I

    sget v4, Laxp$c;->ui_common_level4_text_color:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->a(IILandroid/view/View$OnClickListener;)V

    .line 1100
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->r:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    invoke-static {}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    sget v1, Laxp$i;->dt_ding_view_introduction:I

    :cond_1
    new-instance v3, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$11;

    invoke-direct {v3, p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$11;-><init>(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->a(ILandroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1109
    :pswitch_2
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->r:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    sget v3, Laxp$i;->icon_meeting_fill:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->setEmptyIconFontResource(I)V

    .line 1110
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->r:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Laxp$b;->ding_dt_meeting_sub_filter_empty:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(I[Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->setEmptyTextContentString(Ljava/lang/CharSequence;)V

    .line 1111
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->r:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    sget v3, Laxp$i;->dt_ding_empty_meeting_tips_message:I

    sget v4, Laxp$c;->ui_common_level4_text_color:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->a(IILandroid/view/View$OnClickListener;)V

    .line 1112
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->r:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    invoke-static {}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->h()Z

    move-result v3

    if-eqz v3, :cond_2

    sget v1, Laxp$i;->dt_ding_view_introduction:I

    :cond_2
    new-instance v3, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$13;

    invoke-direct {v3, p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$13;-><init>(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->a(ILandroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1121
    :pswitch_3
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->r:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    sget v3, Laxp$i;->icon_ping_fill:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->setEmptyIconFontResource(I)V

    .line 1122
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->r:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    sget v3, Laxp$i;->dt_ding_empty_pinned_tips:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->setEmptyTextContent(I)V

    .line 1123
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->r:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    sget v3, Laxp$i;->dt_ding_empty_pinned_tips_message:I

    sget v4, Laxp$c;->ui_common_level4_text_color:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->a(IILandroid/view/View$OnClickListener;)V

    .line 1124
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->r:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    invoke-virtual {v2, v1, v5}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->a(ILandroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1127
    :pswitch_4
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->r:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    sget v3, Laxp$i;->icon_delete_fill:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->setEmptyIconFontResource(I)V

    .line 1128
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->r:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    sget v3, Laxp$i;->dt_ding_empty_deleted_tips:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->setEmptyTextContent(I)V

    .line 1129
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->r:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    sget v3, Laxp$i;->dt_ding_empty_deleted_tips2:I

    sget v4, Laxp$c;->ui_common_level4_text_color:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->a(IILandroid/view/View$OnClickListener;)V

    .line 1130
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->r:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    invoke-virtual {v2, v1, v5}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->a(ILandroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1137
    .end local v0    # "selectedSubFilterIndex":I
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->r:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1083
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;Lcma;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;
    .param p1, "x1"    # Lcma;

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(Lcma;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "loadingText"    # Ljava/lang/CharSequence;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 889
    invoke-direct {p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->f()V

    .line 890
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->s:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 891
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->s:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 892
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->s:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 893
    return-void
.end method

.method private a(Ljava/util/Collection;I)V
    .locals 8
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

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "list":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1052
    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->getUserVisibleHint()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1072
    :cond_0
    :goto_0
    return-void

    .line 1055
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->I:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 7039
    iget v3, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->A:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_5

    .line 7040
    invoke-static {}, Lbbl;->a()Lbbl;

    move-result-object v3

    invoke-virtual {v3, v7}, Lbbl;->b(I)Lblf;

    move-result-object v3

    if-eqz v3, :cond_5

    move v0, v1

    .line 1059
    .local v0, "shouldShowAdsView":Z
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->I:Landroid/view/View;

    sget v4, Laxp$f;->loading_indicator:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1060
    iget-object v3, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->x:Ljava/util/Collection;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->x:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1061
    :cond_2
    if-nez v0, :cond_8

    :goto_2
    invoke-direct {p0, p2, v1}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(IZ)V

    .line 1069
    :goto_3
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->c:Laxs;

    invoke-virtual {v1, p1, p2}, Laxs;->a(Ljava/util/Collection;I)V

    .line 8007
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 8008
    iget v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->A:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_e

    .line 8009
    invoke-static {}, Lbbl;->a()Lbbl;

    move-result-object v1

    invoke-virtual {v1, v7}, Lbbl;->b(I)Lblf;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 8010
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->p:Lcom/alibaba/android/ding/widget/DingAdsView;

    if-nez v1, :cond_3

    .line 8011
    new-instance v1, Lcom/alibaba/android/ding/widget/DingAdsView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/ding/widget/DingAdsView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->p:Lcom/alibaba/android/ding/widget/DingAdsView;

    .line 8013
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->p:Lcom/alibaba/android/ding/widget/DingAdsView;

    invoke-static {}, Lbbl;->a()Lbbl;

    move-result-object v2

    invoke-virtual {v2, v7}, Lbbl;->b(I)Lblf;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcom/alibaba/android/ding/widget/DingAdsView;->a(ILblf;)V

    .line 8014
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->u:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->p:Lcom/alibaba/android/ding/widget/DingAdsView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 8030
    :cond_4
    :goto_4
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->u:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->o:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    iget v5, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->z:I

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8035
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->q:Lcom/alibaba/android/ding/base/objects/ISolicitudeFooterView;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ISolicitudeFooterView;->a()V

    goto/16 :goto_0

    .line 7043
    .end local v0    # "shouldShowAdsView":Z
    :cond_5
    iget v3, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->A:I

    if-ne v3, v5, :cond_6

    .line 7044
    invoke-static {}, Lbbl;->a()Lbbl;

    move-result-object v3

    invoke-virtual {v3, v5}, Lbbl;->b(I)Lblf;

    move-result-object v3

    if-eqz v3, :cond_6

    move v0, v1

    .line 7045
    goto :goto_1

    .line 7047
    :cond_6
    iget v3, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->A:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_7

    .line 7048
    invoke-static {}, Lbbl;->a()Lbbl;

    move-result-object v3

    invoke-virtual {v3, v6}, Lbbl;->b(I)Lblf;

    move-result-object v3

    if-eqz v3, :cond_7

    move v0, v1

    goto/16 :goto_1

    :cond_7
    move v0, v2

    goto/16 :goto_1

    .restart local v0    # "shouldShowAdsView":Z
    :cond_8
    move v1, v2

    .line 1061
    goto :goto_2

    .line 1062
    :cond_9
    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1063
    :cond_a
    iput-boolean v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->B:Z

    .line 1064
    if-nez v0, :cond_b

    :goto_5
    invoke-direct {p0, p2, v1}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(IZ)V

    goto/16 :goto_3

    :cond_b
    move v1, v2

    goto :goto_5

    .line 1066
    :cond_c
    if-ne p2, v6, :cond_d

    :goto_6
    iput-boolean v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->B:Z

    .line 1067
    invoke-direct {p0, p2, v2}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(IZ)V

    goto/16 :goto_3

    :cond_d
    move v1, v2

    .line 1066
    goto :goto_6

    .line 8015
    :cond_e
    iget v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->A:I

    if-ne v1, v5, :cond_10

    .line 8016
    invoke-static {}, Lbbl;->a()Lbbl;

    move-result-object v1

    invoke-virtual {v1, v5}, Lbbl;->b(I)Lblf;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 8017
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->p:Lcom/alibaba/android/ding/widget/DingAdsView;

    if-nez v1, :cond_f

    .line 8018
    new-instance v1, Lcom/alibaba/android/ding/widget/DingAdsView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/ding/widget/DingAdsView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->p:Lcom/alibaba/android/ding/widget/DingAdsView;

    .line 8020
    :cond_f
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->p:Lcom/alibaba/android/ding/widget/DingAdsView;

    invoke-static {}, Lbbl;->a()Lbbl;

    move-result-object v2

    invoke-virtual {v2, v5}, Lbbl;->b(I)Lblf;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/alibaba/android/ding/widget/DingAdsView;->a(ILblf;)V

    .line 8021
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->u:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->p:Lcom/alibaba/android/ding/widget/DingAdsView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 8022
    :cond_10
    iget v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->A:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 8023
    invoke-static {}, Lbbl;->a()Lbbl;

    move-result-object v1

    invoke-virtual {v1, v6}, Lbbl;->b(I)Lblf;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 8024
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->p:Lcom/alibaba/android/ding/widget/DingAdsView;

    if-nez v1, :cond_11

    .line 8025
    new-instance v1, Lcom/alibaba/android/ding/widget/DingAdsView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/ding/widget/DingAdsView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->p:Lcom/alibaba/android/ding/widget/DingAdsView;

    .line 8027
    :cond_11
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->p:Lcom/alibaba/android/ding/widget/DingAdsView;

    invoke-static {}, Lbbl;->a()Lbbl;

    move-result-object v2

    invoke-virtual {v2, v6}, Lbbl;->b(I)Lblf;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/alibaba/android/ding/widget/DingAdsView;->a(ILblf;)V

    .line 8028
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->u:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->p:Lcom/alibaba/android/ding/widget/DingAdsView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_4
.end method

.method static synthetic a(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->B:Z

    return p1
.end method

.method private static b(I)Ljava/lang/String;
    .locals 3
    .param p0, "currentFilter"    # I

    .prologue
    .line 1175
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

.method static synthetic b(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->g()V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    .prologue
    .line 97
    .line 8908
    iget-boolean v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->B:Z

    if-eqz v0, :cond_0

    .line 8911
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8912
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->G:Landroid/app/Application;

    sget v2, Laxp$i;->ding_clear_deleted:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 8913
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->G:Landroid/app/Application;

    sget v2, Laxp$i;->ding_clear_cannot_undo:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 8914
    sget v1, Laxp$i;->sure:I

    new-instance v2, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$9;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$9;-><init>(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 8944
    sget v1, Laxp$i;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 8945
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 97
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    .prologue
    .line 97
    iget v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->A:I

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->t:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    return-object v0
.end method

.method private f()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 897
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->s:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->s:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 898
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->s:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 903
    :cond_0
    iput-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->s:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 904
    :goto_0
    return-void

    .line 900
    :catch_0
    move-exception v0

    .line 901
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string/jumbo v1, "[DingListFragmentV2]dismissLoadingDialog failed"

    invoke-static {v1, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 903
    iput-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->s:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    iput-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->s:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    throw v1
.end method

.method static synthetic f(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->d:Z

    return v0
.end method

.method static synthetic g(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method private g()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x3

    .line 950
    iget v4, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->A:I

    invoke-static {v4}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcpk;->a(Ljava/lang/String;I)I

    move-result v1

    .line 951
    .local v1, "selectedSubFilterIndex":I
    iget v4, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->A:I

    packed-switch v4, :pswitch_data_0

    .line 1004
    :goto_0
    :pswitch_0
    return-void

    .line 953
    :pswitch_1
    invoke-static {}, Lbbs;->a()Lbbs;

    move-result-object v2

    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->x:Ljava/util/Collection;

    invoke-virtual {v2, v4, v3}, Lbbs;->a(Ljava/util/Collection;Z)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(Ljava/util/Collection;I)V

    goto :goto_0

    .line 956
    :pswitch_2
    if-ne v1, v7, :cond_0

    .line 957
    invoke-static {}, Lbbs;->a()Lbbs;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->x:Ljava/util/Collection;

    invoke-virtual {v2, v3}, Lbbs;->b(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x7

    invoke-direct {p0, v2, v3}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(Ljava/util/Collection;I)V

    goto :goto_0

    .line 958
    :cond_0
    if-ne v1, v2, :cond_1

    .line 959
    invoke-static {}, Lbbs;->a()Lbbs;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->x:Ljava/util/Collection;

    invoke-virtual {v2, v3}, Lbbs;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x7

    invoke-direct {p0, v2, v3}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(Ljava/util/Collection;I)V

    goto :goto_0

    .line 962
    :cond_1
    invoke-static {}, Lbbs;->a()Lbbs;

    move-result-object v2

    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->x:Ljava/util/Collection;

    invoke-virtual {v2, v4, v3}, Lbbs;->b(Ljava/util/Collection;Z)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x7

    invoke-direct {p0, v2, v3}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(Ljava/util/Collection;I)V

    goto :goto_0

    .line 966
    :pswitch_3
    if-ne v1, v2, :cond_2

    .line 967
    invoke-static {}, Lbbs;->a()Lbbs;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->x:Ljava/util/Collection;

    invoke-virtual {v2, v3}, Lbbs;->f(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(Ljava/util/Collection;I)V

    goto :goto_0

    .line 968
    :cond_2
    if-ne v1, v7, :cond_3

    .line 969
    invoke-static {}, Lbbs;->a()Lbbs;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->x:Ljava/util/Collection;

    invoke-virtual {v2, v3}, Lbbs;->c(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(Ljava/util/Collection;I)V

    goto :goto_0

    .line 970
    :cond_3
    if-ne v1, v5, :cond_4

    .line 971
    invoke-static {}, Lbbs;->a()Lbbs;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->x:Ljava/util/Collection;

    invoke-virtual {v2, v3}, Lbbs;->d(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(Ljava/util/Collection;I)V

    goto :goto_0

    .line 972
    :cond_4
    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 973
    invoke-static {}, Lbbs;->a()Lbbs;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->x:Ljava/util/Collection;

    invoke-virtual {v2, v3}, Lbbs;->e(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(Ljava/util/Collection;I)V

    goto/16 :goto_0

    .line 976
    :cond_5
    invoke-static {}, Lbbs;->a()Lbbs;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->x:Ljava/util/Collection;

    invoke-virtual {v2, v3}, Lbbs;->g(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(Ljava/util/Collection;I)V

    goto/16 :goto_0

    .line 980
    :pswitch_4
    if-ne v1, v2, :cond_9

    .line 981
    invoke-static {}, Lbbs;->a()Lbbs;

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->x:Ljava/util/Collection;

    .line 6402
    const v3, 0x100041

    invoke-static {v2, v3}, Lbbs;->a(Ljava/util/Collection;I)Ljava/util/List;

    move-result-object v3

    .line 6403
    const v4, 0x400041

    invoke-static {v2, v4}, Lbbs;->a(Ljava/util/Collection;I)Ljava/util/List;

    move-result-object v4

    .line 6404
    const v5, 0x1000041

    invoke-static {v2, v5}, Lbbs;->a(Ljava/util/Collection;I)Ljava/util/List;

    move-result-object v2

    .line 6406
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 6407
    if-eqz v3, :cond_6

    .line 6408
    invoke-interface {v5, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 6410
    :cond_6
    if-eqz v4, :cond_7

    .line 6411
    invoke-interface {v5, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 6413
    :cond_7
    if-eqz v2, :cond_8

    .line 6414
    invoke-interface {v5, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 6417
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6418
    invoke-static {}, Lbbn;->b()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 981
    invoke-direct {p0, v2, v6}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(Ljava/util/Collection;I)V

    goto/16 :goto_0

    .line 982
    :cond_9
    if-ne v1, v7, :cond_a

    .line 983
    invoke-static {}, Lbbs;->a()Lbbs;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->x:Ljava/util/Collection;

    invoke-virtual {v2, v3}, Lbbs;->k(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, v6}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(Ljava/util/Collection;I)V

    goto/16 :goto_0

    .line 984
    :cond_a
    if-ne v1, v5, :cond_b

    .line 985
    invoke-static {}, Lbbs;->a()Lbbs;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->x:Ljava/util/Collection;

    invoke-virtual {v2, v3}, Lbbs;->l(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, v6}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(Ljava/util/Collection;I)V

    goto/16 :goto_0

    .line 988
    :cond_b
    invoke-static {}, Lbbs;->a()Lbbs;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->x:Ljava/util/Collection;

    invoke-virtual {v2, v3}, Lbbs;->m(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, v6}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(Ljava/util/Collection;I)V

    goto/16 :goto_0

    .line 992
    :pswitch_5
    invoke-static {}, Lbbs;->a()Lbbs;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->x:Ljava/util/Collection;

    invoke-virtual {v2, v3}, Lbbs;->n(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x6

    invoke-direct {p0, v2, v3}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(Ljava/util/Collection;I)V

    goto/16 :goto_0

    .line 995
    :pswitch_6
    invoke-static {}, Lbbs;->a()Lbbs;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->x:Ljava/util/Collection;

    invoke-virtual {v4, v5}, Lbbs;->i(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 996
    .local v0, "deletedDings":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v4, :cond_c

    .line 997
    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    :goto_1
    invoke-virtual {v4, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setEnabled(Z)V

    .line 999
    :cond_c
    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(Ljava/util/Collection;I)V

    goto/16 :goto_0

    :cond_d
    move v2, v3

    .line 997
    goto :goto_1

    .line 951
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic h(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)Lbhs;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->w:Lbhs;

    return-object v0
.end method

.method private static h()Z
    .locals 1

    .prologue
    .line 1075
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

.method static synthetic i(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)Lbhs;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->v:Lbhs;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)Laxs;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->c:Laxs;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->f:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    .prologue
    .line 97
    .line 9743
    invoke-static {}, Lcms;->n()Ljava/lang/String;

    move-result-object v0

    .line 9744
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$4;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$4;-><init>(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;Ljava/lang/String;)V

    const-class v0, Lcma;

    .line 9779
    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 9744
    invoke-static {v2, v0, v3}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, v0}, Lbbp;->c(Lcma;)V

    .line 97
    return-void
.end method

.method static synthetic m(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->C:J

    return-wide v0
.end method

.method static synthetic n(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    .prologue
    .line 97
    iget v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->e:I

    return v0
.end method

.method static synthetic o(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)Lbiz;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->N:Lbiz;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->f()V

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

    .line 878
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->I:Landroid/view/View;

    if-nez v2, :cond_0

    move-object v0, v1

    .line 885
    :goto_0
    return-object v0

    .line 881
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->I:Landroid/view/View;

    sget v3, Laxp$f;->home_ding_list:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 882
    .local v0, "v":Landroid/view/View;
    instance-of v2, v0, Landroid/widget/ListView;

    if-eqz v2, :cond_1

    .line 883
    check-cast v0, Landroid/widget/ListView;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 885
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

    .line 271
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-static {v0}, Lcpc;->a(Landroid/widget/AbsListView;)V

    .line 3283
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->getFirstVisiblePosition()I

    move-result v2

    .line 3284
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3285
    if-nez v0, :cond_1

    move v0, v1

    .line 3286
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->D:Landroid/util/SparseArray;

    iget v4, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->A:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3287
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->E:Landroid/util/SparseArray;

    iget v3, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->A:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 274
    iput p1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->A:I

    .line 276
    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->c()V

    .line 277
    invoke-direct {p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->g()V

    .line 3291
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->D:Landroid/util/SparseArray;

    iget v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->A:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4033
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 3292
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->E:Landroid/util/SparseArray;

    iget v3, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->A:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 5033
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 3293
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_0

    .line 3294
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setSelectionFromTop(II)V

    .line 280
    :cond_0
    return-void

    .line 3285
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
    .line 366
    if-nez p1, :cond_0

    .line 400
    :goto_0
    return-void

    .line 369
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a:Landroid/view/View;

    .line 370
    sget v0, Laxp$f;->tv_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->g:Landroid/widget/TextView;

    .line 371
    sget v0, Laxp$f;->ll_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->h:Landroid/widget/LinearLayout;

    .line 372
    sget v0, Laxp$f;->tv_cancel_delete:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->i:Landroid/widget/TextView;

    .line 373
    sget v0, Laxp$f;->iv_clear:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 374
    sget v0, Laxp$f;->tv_delete_all:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->k:Landroid/widget/TextView;

    .line 376
    sget v0, Laxp$f;->iv_calendar_mode:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->l:Landroid/widget/TextView;

    .line 377
    sget v0, Laxp$f;->rl_setting:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->m:Landroid/widget/RelativeLayout;

    .line 379
    sget v0, Laxp$f;->iv_search:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 381
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->i:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$16;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$16;-><init>(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->k:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$17;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$17;-><init>(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v1, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$18;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$18;-><init>(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
    .line 868
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 869
    .local v1, "dingIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->f:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6109
    .local v0, "dingId":Ljava/lang/String;
    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 870
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 872
    .end local v0    # "dingId":Ljava/lang/String;
    :cond_0
    sget v2, Laxp$i;->loading:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(Ljava/lang/CharSequence;)V

    .line 873
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->A:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4, p1}, Lbbp;->a(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Lcma;)V

    .line 874
    return-void
.end method

.method public final c()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x8

    .line 403
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a:Landroid/view/View;

    if-nez v2, :cond_0

    .line 435
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 407
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->l:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 408
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 409
    iget v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->e:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 410
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 411
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 412
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 413
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 414
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 415
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->f:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 416
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->k:Landroid/widget/TextView;

    sget v2, Laxp$i;->ding_home_menu_delete_all:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 418
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->k:Landroid/widget/TextView;

    sget v3, Laxp$i;->ding_home_menu_delete:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->f:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 421
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 422
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 423
    iget v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->A:I

    .line 5299
    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 424
    .local v0, "titleResId":I
    :goto_1
    if-eqz v0, :cond_3

    .line 425
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 427
    :cond_3
    iget v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->A:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 428
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 432
    :goto_2
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 433
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 5301
    .end local v0    # "titleResId":I
    :pswitch_0
    sget v0, Laxp$i;->dt_ding_filter_ding:I

    goto :goto_1

    .line 5303
    :pswitch_1
    sget v0, Laxp$i;->ding_filter_deadline:I

    goto :goto_1

    .line 5305
    :pswitch_2
    sget v0, Laxp$i;->ding_filter_calendar:I

    goto :goto_1

    .line 5307
    :pswitch_3
    sget v0, Laxp$i;->ding_filter_focus:I

    goto :goto_1

    .line 5309
    :pswitch_4
    sget v0, Laxp$i;->ding_filter_deleted:I

    goto :goto_1

    .line 430
    .restart local v0    # "titleResId":I
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_2

    .line 5299
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

.method public final d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 813
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->e:I

    .line 814
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 815
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->c:Laxs;

    iget v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->e:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->f:Ljava/util/Set;

    invoke-virtual {v0, v1, v2, v3}, Laxs;->a(ILbiz;Ljava/util/Set;)V

    .line 816
    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->c()V

    .line 817
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 206
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->y:Z

    .line 208
    new-instance v0, Laxz;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget v3, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->e:I

    iget-wide v4, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->C:J

    invoke-direct/range {v0 .. v5}, Laxz;-><init>(Landroid/app/Activity;Landroid/widget/ListView;IJ)V

    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->c:Laxs;

    .line 209
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->c:Laxs;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1702
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$3;-><init>(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 1783
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->R:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1784
    new-instance v0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$5;-><init>(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->R:Landroid/content/BroadcastReceiver;

    .line 1800
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.workapp.ding.choose.mode.change"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1801
    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->R:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2603
    :cond_0
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingAll:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->P:Lcom/alibaba/android/ding/base/objects/ObjectDing$a;

    invoke-virtual {v0, v1, v2}, Lbbp;->a(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcom/alibaba/android/ding/base/objects/ObjectDing$a;)V

    .line 2604
    invoke-static {}, Lbbl;->a()Lbbl;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->Q:Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;

    invoke-virtual {v0, v1}, Lbbl;->a(Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;)V

    .line 2605
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$2;-><init>(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V

    invoke-virtual {v0, v1}, Lbbp;->b(Lcma;)V

    .line 213
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 197
    .line 1192
    sget v1, Laxp$g;->ding_fragment_home_ding_list:I

    .line 197
    invoke-virtual {p1, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1438
    .local v0, "rootView":Landroid/view/View;
    sget v1, Laxp$f;->swipe_layout_ding_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    iput-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->t:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .line 1439
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->t:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v2, 0x4

    new-array v2, v2, [I

    sget v3, Laxp$c;->swipe_refresh_color1:I

    aput v3, v2, v5

    sget v3, Laxp$c;->swipe_refresh_color2:I

    aput v3, v2, v6

    const/4 v3, 0x2

    sget v4, Laxp$c;->swipe_refresh_color1:I

    aput v4, v2, v3

    const/4 v3, 0x3

    sget v4, Laxp$c;->swipe_refresh_color2:I

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setColorScheme([I)V

    .line 1440
    sget v1, Laxp$f;->home_ding_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iput-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .line 1441
    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxp$d;->ding_list_default_header_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->z:I

    .line 1442
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->t:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    iget v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->z:I

    const/16 v3, 0x40

    invoke-virtual {v1, v5, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a(ZII)V

    .line 1443
    sget v1, Laxp$f;->list_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    iput-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->r:Lcom/alibaba/android/ding/widget/DingRimetListEmptyView;

    .line 1451
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->u:Landroid/widget/LinearLayout;

    .line 1452
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 1453
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1454
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->u:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1455
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1456
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->addHeaderView(Landroid/view/View;)V

    .line 1458
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->o:Landroid/view/View;

    .line 1459
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->o:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Laxp$c;->ui_common_page_bg_color:I

    invoke-static {v2, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1461
    new-instance v1, Lcom/alibaba/android/ding/widget/SolicitudeFooterView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/ding/widget/SolicitudeFooterView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->q:Lcom/alibaba/android/ding/base/objects/ISolicitudeFooterView;

    .line 1462
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->q:Lcom/alibaba/android/ding/base/objects/ISolicitudeFooterView;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->addFooterView(Landroid/view/View;)V

    .line 1446
    new-instance v1, Lcpo$a;

    invoke-direct {v1}, Lcpo$a;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->O:Lcpo$a;

    .line 1447
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->O:Lcpo$a;

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v1, v2}, Lcpo$a;->a(Landroid/view/View;)V

    .line 1466
    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->t:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    new-instance v1, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$19;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$19;-><init>(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V

    const-class v3, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;

    .line 1515
    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 1466
    invoke-static {v1, v3, v4}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;)V

    .line 1517
    new-instance v1, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$20;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$20;-><init>(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V

    iput-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->F:Landroid/widget/AbsListView$OnScrollListener;

    .line 1549
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->F:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1552
    new-instance v1, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$21;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$21;-><init>(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V

    const-class v2, Lcjo$a;

    .line 1584
    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 1552
    invoke-static {v1, v2, v3}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcjo$a;

    iput-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->M:Lcjo$a;

    .line 1585
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->M:Lcjo$a;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Lcjo$a;)V

    .line 1587
    new-instance v1, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$22;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$22;-><init>(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V

    iput-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->N:Lbiz;

    .line 200
    iput-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->I:Landroid/view/View;

    .line 201
    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->y:Z

    .line 250
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingAll:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    iget-object v2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->P:Lcom/alibaba/android/ding/base/objects/ObjectDing$a;

    invoke-virtual {v0, v1, v2}, Lbbp;->b(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcom/alibaba/android/ding/base/objects/ObjectDing$a;)V

    .line 251
    invoke-static {}, Lbbl;->a()Lbbl;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->Q:Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;

    invoke-virtual {v0, v1}, Lbbl;->b(Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;)V

    .line 252
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->M:Lcjo$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Lcjo$a;)V

    .line 253
    iput-object v3, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->M:Lcjo$a;

    .line 254
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->R:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->R:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 256
    iput-object v3, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->R:Landroid/content/BroadcastReceiver;

    .line 258
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDestroy()V

    .line 259
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->O:Lcpo$a;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->O:Lcpo$a;

    invoke-virtual {v0}, Lcpo$a;->a()V

    .line 266
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDestroyView()V

    .line 267
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 234
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onPause()V

    .line 235
    invoke-static {}, Lbla;->a()Lbla;

    move-result-object v0

    invoke-virtual {v0}, Lbla;->b()V

    .line 236
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 226
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onResume()V

    .line 227
    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->g()V

    .line 230
    :cond_0
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 192
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

    .line 217
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->setUserVisibleHint(Z)V

    .line 218
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->y:Z

    if-eqz v0, :cond_2

    .line 2685
    iget-boolean v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2686
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->d:Z

    .line 2689
    invoke-static {}, Lbju;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2690
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingAll:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    invoke-virtual {v0, v1, v2}, Lbbp;->b(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcma;)V

    .line 2693
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->w:Lbhs;

    invoke-virtual {v0, v2}, Lbhs;->a(Lbhs$a;)V

    .line 220
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->g()V

    .line 222
    :cond_2
    return-void
.end method
