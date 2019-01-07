.class public Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;
.super Lcom/alibaba/android/search/widget/SearchBaseFragment;
.source "DingSearchResultCategoryFragment.java"


# static fields
.field private static final d:Ljava/lang/String;

.field private static final e:Landroid/text/style/ForegroundColorSpan;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:I

.field private E:I

.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/DingSearchResultModel;",
            ">;"
        }
    .end annotation
.end field

.field private M:Lcca;

.field private N:Lcca;

.field public c:Ljava/lang/String;

.field private f:Landroid/widget/ScrollView;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/ListView;

.field private n:Landroid/view/View;

.field private o:Lemw;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/LinearLayout;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/LinearLayout;

.field private t:Landroid/widget/LinearLayout;

.field private u:Landroid/widget/ListView;

.field private v:Landroid/view/View;

.field private w:Lemw;

.field private x:Landroid/widget/RelativeLayout;

.field private y:Landroid/widget/TextView;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const-class v0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->d:Ljava/lang/String;

    .line 72
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 73
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lemt$b;->text_color_blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->e:Landroid/text/style/ForegroundColorSpan;

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/alibaba/android/search/widget/SearchBaseFragment;-><init>()V

    .line 113
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->c:Ljava/lang/String;

    .line 115
    iput-boolean v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->z:Z

    .line 116
    iput-boolean v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->A:Z

    .line 119
    iput-boolean v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->B:Z

    .line 120
    iput-boolean v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->C:Z

    .line 123
    iput v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->D:I

    .line 124
    iput v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->E:I

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->F:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->E:I

    return p1
.end method

.method private static a(Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 3
    .param p0, "container"    # Landroid/widget/LinearLayout;
    .param p1, "headerOrFooter"    # Landroid/view/View;

    .prologue
    .line 540
    if-nez p0, :cond_1

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    if-nez p1, :cond_2

    .line 544
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto :goto_0

    .line 547
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 550
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 551
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 552
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .prologue
    .line 62
    .line 1562
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->g:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 1563
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->g:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 62
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;Ljava/util/List;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 62
    .line 1371
    sget-object v1, Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;->SENDER:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    const/4 v2, 0x3

    new-instance v0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$10;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$10;-><init>(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;Ljava/util/List;)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    .line 1416
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 1374
    invoke-static {v0, v3, v4}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 1371
    invoke-static {p1, v1, v2, v0}, Lcom/alibaba/android/search/model/DingSearchResultModel;->a(Ljava/util/List;Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;ILcom/alibaba/wukong/Callback;)V

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/ListView;Landroid/view/View;Lemw;I)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Landroid/widget/LinearLayout;
    .param p3, "x3"    # Landroid/view/View;
    .param p4, "x4"    # Landroid/widget/LinearLayout;
    .param p5, "x5"    # Landroid/view/View;
    .param p6, "x6"    # Landroid/widget/ListView;
    .param p7, "x7"    # Landroid/view/View;
    .param p8, "x8"    # Lemw;
    .param p9, "x9"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 62
    const/4 v3, 0x3

    .line 3481
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3484
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 3493
    invoke-static {p2, p3}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->a(Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 3496
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_4

    const/4 v1, 0x1

    .line 3497
    :goto_0
    if-eqz v1, :cond_5

    .end local p5    # "x5":Landroid/view/View;
    :goto_1
    invoke-static {p4, p5}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->a(Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 3500
    invoke-virtual {p6, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 3501
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 3502
    invoke-interface {p1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 3504
    .end local p1    # "x1":Ljava/util/List;
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->w:Lemw;

    if-ne p8, v0, :cond_1

    .line 3505
    new-instance v0, Lcom/alibaba/android/search/model/DingSearchResultModel$a;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/DingSearchResultModel$a;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3507
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->c:Ljava/lang/String;

    .line 4045
    iput-object v0, p8, Lemw;->c:Ljava/lang/String;

    .line 4046
    invoke-virtual {p8, p1}, Lemw;->a(Ljava/util/List;)V

    .line 3510
    invoke-virtual {p7, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3489
    :cond_2
    :goto_2
    return-void

    .line 3485
    .restart local p1    # "x1":Ljava/util/List;
    .restart local p5    # "x5":Landroid/view/View;
    :cond_3
    invoke-virtual {p6, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 3486
    invoke-virtual {p7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3487
    invoke-static {p2, v0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->a(Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 3488
    invoke-static {p4, v0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->a(Landroid/widget/LinearLayout;Landroid/view/View;)V

    goto :goto_2

    :cond_4
    move v1, v2

    .line 3496
    goto :goto_0

    :cond_5
    move-object p5, v0

    .line 3497
    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->A:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->D:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;Ljava/util/List;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 62
    .line 1420
    sget-object v1, Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;->BODY:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    const/4 v2, 0x3

    new-instance v0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$2;-><init>(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    .line 1451
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 1423
    invoke-static {v0, v3, v4}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 1420
    invoke-static {p1, v1, v2, v0}, Lcom/alibaba/android/search/model/DingSearchResultModel;->a(Ljava/util/List;Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;ILcom/alibaba/wukong/Callback;)V

    .line 62
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->B:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->C:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->C:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->z:Z

    return p1
.end method

.method static synthetic d(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .prologue
    .line 62
    .line 2514
    new-instance v0, Landroid/text/SpannableStringBuilder;

    sget v1, Lemt$g;->dt_search_ding_result_empty_prefix:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2515
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2516
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 2517
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2518
    sget-object v2, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->e:Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    const/16 v4, 0x21

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2520
    :cond_0
    sget v1, Lemt$g;->dt_search_ding_result_empty_suffix:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2521
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->y:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->x:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 2522
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->y:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2523
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->x:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 62
    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->B:Z

    return p1
.end method

.method static synthetic e(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .prologue
    .line 62
    .line 2528
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->x:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 2529
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->x:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 62
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .prologue
    .line 62
    iget v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->E:I

    return v0
.end method

.method static synthetic g(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .prologue
    .line 62
    iget v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->D:I

    return v0
.end method

.method private h()Landroid/widget/LinearLayout;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 534
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 535
    .local v0, "ret":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 536
    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->F:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->h:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->i:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->k:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->l:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->m:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->n:Landroid/view/View;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Lemw;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->o:Lemw;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Lcca;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->M:Lcca;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .prologue
    .line 62
    .line 4297
    iget-boolean v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->z:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->A:Z

    if-eqz v0, :cond_0

    .line 4298
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$9;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$9;-><init>(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 62
    :cond_0
    return-void
.end method

.method static synthetic s(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->p:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic t(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->q:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic u(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->s:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic v(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->t:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic w(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->u:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic x(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->v:Landroid/view/View;

    return-object v0
.end method

.method static synthetic y(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)Lemw;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->w:Lemw;

    return-object v0
.end method


# virtual methods
.method public c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x0

    .line 362
    iput v2, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->D:I

    .line 363
    iput v2, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->E:I

    .line 364
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 366
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->M:Lcca;

    invoke-static {v2, v3, v0, v1}, Lenu;->b(IILjava/lang/String;Lcca;)V

    .line 367
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->N:Lcca;

    invoke-static {v2, v3, v0, v1}, Lenu;->c(IILjava/lang/String;Lcca;)V

    .line 368
    return-void
.end method

.method public g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 556
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->g:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->g:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 559
    :cond_0
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
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 139
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/search/widget/SearchBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 1156
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->scroll_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->f:Landroid/widget/ScrollView;

    .line 1157
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->rl_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->g:Landroid/widget/RelativeLayout;

    .line 1160
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->h()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->h:Landroid/widget/LinearLayout;

    .line 1161
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->h()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->k:Landroid/widget/LinearLayout;

    .line 1163
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lemt$f;->item_ding_search_result_header:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->i:Landroid/widget/LinearLayout;

    .line 1164
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->i:Landroid/widget/LinearLayout;

    sget v1, Lemt$e;->tv_search_result_header:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->j:Landroid/widget/TextView;

    .line 1165
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lemt$f;->item_ding_search_result_footer:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->l:Landroid/widget/LinearLayout;

    .line 1166
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->list_view_sender:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->m:Landroid/widget/ListView;

    .line 1167
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->line_below_list_sender:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->n:Landroid/view/View;

    .line 1170
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->h()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->p:Landroid/widget/LinearLayout;

    .line 1171
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->h()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->s:Landroid/widget/LinearLayout;

    .line 1173
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lemt$f;->item_ding_search_result_header:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->q:Landroid/widget/LinearLayout;

    .line 1174
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->q:Landroid/widget/LinearLayout;

    sget v1, Lemt$e;->tv_search_result_header:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->r:Landroid/widget/TextView;

    .line 1175
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lemt$f;->item_ding_search_result_footer:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->t:Landroid/widget/LinearLayout;

    .line 1176
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->list_view_body:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->u:Landroid/widget/ListView;

    .line 1177
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->line_below_list_body:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->v:Landroid/view/View;

    .line 1190
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->rl_search_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->x:Landroid/widget/RelativeLayout;

    .line 1191
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->tv_search_result_empty_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->y:Landroid/widget/TextView;

    .line 1195
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->f:Landroid/widget/ScrollView;

    new-instance v1, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$1;-><init>(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1202
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->m:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$3;-><init>(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1209
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->u:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$4;-><init>(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1224
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$5;-><init>(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)V

    const-class v2, Lcca;

    .line 1238
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 1224
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcca;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->M:Lcca;

    .line 1240
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$6;-><init>(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)V

    const-class v2, Lcca;

    .line 1255
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 1240
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcca;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->N:Lcca;

    .line 1273
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->l:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$7;-><init>(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1280
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->t:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment$8;-><init>(Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1328
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->j:Landroid/widget/TextView;

    sget v1, Lemt$g;->dt_search_category_sender:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1329
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1330
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1331
    new-instance v0, Lemw;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v4}, Lemw;-><init>(Landroid/app/Activity;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->o:Lemw;

    .line 1332
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->o:Lemw;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1335
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->r:Landroid/widget/TextView;

    sget v1, Lemt$g;->dt_search_category_body:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1336
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->u:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1337
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->u:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1338
    new-instance v0, Lemw;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v4}, Lemw;-><init>(Landroid/app/Activity;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->w:Lemw;

    .line 1339
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->u:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->w:Lemw;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1348
    iput-boolean v4, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->z:Z

    .line 1349
    iput-boolean v4, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->A:Z

    .line 1352
    iput-boolean v4, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->B:Z

    .line 1353
    iput-boolean v4, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->C:Z

    .line 1356
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->g()V

    .line 1357
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->c()V

    .line 143
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->I:Landroid/view/View;

    return-object v0
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 134
    sget v0, Lemt$f;->fragment_ding_search_result_category:I

    return v0
.end method
