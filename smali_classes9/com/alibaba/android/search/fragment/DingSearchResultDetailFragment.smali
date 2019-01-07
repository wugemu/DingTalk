.class public Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;
.super Lcom/alibaba/android/search/widget/SearchBaseFragment;
.source "DingSearchResultDetailFragment.java"


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field public c:Ljava/lang/String;

.field public d:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/view/View;

.field private l:I

.field private m:I

.field private n:I

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/DingSearchResultModel;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lemw;

.field private q:I

.field private r:I

.field private s:Z

.field private t:Z

.field private u:Lcca;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Lcom/alibaba/android/search/widget/SearchBaseFragment;-><init>()V

    .line 71
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->c:Ljava/lang/String;

    .line 72
    sget-object v0, Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;->SENDER:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->d:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    .line 74
    iput v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->l:I

    .line 75
    iput v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->m:I

    .line 76
    iput v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->n:I

    .line 84
    iput-boolean v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->s:Z

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->t:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->q:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->o:Ljava/util/List;

    return-object v0
.end method

.method private a(ILjava/lang/String;Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;Lcca;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "dingSearchResultType"    # Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;
    .param p4, "searchTaskListener"    # Lcca;

    .prologue
    .line 227
    sget-object v0, Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;->SENDER:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    if-eq p3, v0, :cond_1

    .line 229
    sget-object v0, Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;->BODY:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    if-ne p3, v0, :cond_0

    .line 230
    iget v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->l:I

    invoke-static {v0, p1, p2, p4}, Lenu;->c(IILjava/lang/String;Lcca;)V

    .line 236
    :goto_0
    return-void

    .line 231
    :cond_0
    sget-object v0, Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;->ATTACHMENT:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    if-ne p3, v0, :cond_1

    .line 232
    iget v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->l:I

    invoke-static {v0, p1, p2, p4}, Lenu;->d(IILjava/lang/String;Lcca;)V

    goto :goto_0

    .line 234
    :cond_1
    iget v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->l:I

    invoke-static {v0, p1, p2, p4}, Lenu;->b(IILjava/lang/String;Lcca;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;IILjava/lang/String;Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;Lcca;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;
    .param p5, "x5"    # Lcca;

    .prologue
    .line 54
    const/16 v0, 0x14

    invoke-direct {p0, v0, p3, p4, p5}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->a(ILjava/lang/String;Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;Lcca;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;Ljava/util/List;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 54
    .line 2239
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->d:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    const v2, 0x7ffffffe

    new-instance v0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$5;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$5;-><init>(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;Ljava/util/List;)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    .line 2284
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 2242
    invoke-static {v0, v3, v4}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 2239
    invoke-static {p1, v1, v2, v0}, Lcom/alibaba/android/search/model/DingSearchResultModel;->a(Ljava/util/List;Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;ILcom/alibaba/wukong/Callback;)V

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->t:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->r:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->t:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->s:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    .prologue
    .line 54
    iget v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->q:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->l:I

    return p1
.end method

.method private c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->s:Z

    .line 219
    iput v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->m:I

    .line 220
    iput v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->n:I

    .line 1307
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1310
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->k:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->j:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 222
    :cond_0
    :goto_0
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->d:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->u:Lcca;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->a(ILjava/lang/String;Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;Lcca;)V

    .line 223
    return-void

    .line 1313
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->j:Landroid/widget/LinearLayout;

    if-eq v0, v1, :cond_0

    .line 1316
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->j:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    .prologue
    .line 54
    iget v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->r:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->m:I

    return p1
.end method

.method static synthetic e(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->n:I

    return p1
.end method

.method static synthetic e(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->s:Z

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->c()V

    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    .prologue
    .line 54
    iget v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->l:I

    return v0
.end method

.method static synthetic h(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    .prologue
    .line 54
    iget v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->m:I

    return v0
.end method

.method static synthetic i(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    .prologue
    .line 54
    iget v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->n:I

    return v0
.end method

.method static synthetic j(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    .prologue
    .line 54
    .line 2320
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2323
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->k:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->j:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 2324
    :cond_0
    :goto_0
    return-void

    .line 2326
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->j:Landroid/widget/LinearLayout;

    if-ne v0, v1, :cond_0

    .line 2329
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto :goto_0
.end method

.method static synthetic k(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->d:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)Lemw;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->p:Lemw;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    .prologue
    .line 54
    .line 3298
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3301
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->f:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 3302
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->f:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 54
    :cond_0
    return-void
.end method

.method static synthetic n(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)Lcca;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->u:Lcca;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 97
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/search/widget/SearchBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 1113
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->rl_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->f:Landroid/widget/RelativeLayout;

    .line 1115
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lemt$f;->item_ding_search_result_header:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->g:Landroid/widget/LinearLayout;

    .line 1116
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->g:Landroid/widget/LinearLayout;

    sget v1, Lemt$e;->tv_search_result_header:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->h:Landroid/widget/TextView;

    .line 1117
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .line 1119
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->j:Landroid/widget/LinearLayout;

    .line 1120
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 1121
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1122
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->j:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1123
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lemt$f;->footer_loading_view:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->k:Landroid/view/View;

    .line 1127
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    new-instance v1, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$1;-><init>(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1135
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$2;-><init>(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)V

    const-class v2, Lcca;

    .line 1154
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 1135
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcca;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->u:Lcca;

    .line 1156
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$3;-><init>(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)V

    const-class v2, Landroid/widget/AbsListView$OnScrollListener;

    .line 1166
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 1156
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$OnScrollListener;

    .line 1167
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1169
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment$4;-><init>(Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;)V

    const-class v2, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$a;

    .line 1184
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 1169
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$a;

    .line 1185
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setFlingCallBack(Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$a;)V

    .line 1191
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->d:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    .line 1205
    sget-object v2, Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;->SENDER:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    if-eq v0, v2, :cond_2

    .line 1208
    sget-object v2, Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;->BODY:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    if-ne v0, v2, :cond_1

    .line 1209
    sget v0, Lemt$g;->dt_search_category_body:I

    .line 1191
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1192
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->addHeaderView(Landroid/view/View;)V

    .line 1193
    iput v4, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->l:I

    .line 1194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->o:Ljava/util/List;

    .line 1195
    new-instance v0, Lemw;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v5}, Lemw;-><init>(Landroid/app/Activity;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->p:Lemw;

    .line 1196
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->p:Lemw;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1197
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->addFooterView(Landroid/view/View;)V

    .line 1198
    iput-boolean v4, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->s:Z

    .line 1199
    iput-boolean v5, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->t:Z

    .line 1289
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1292
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->f:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 1293
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1201
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->c()V

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->I:Landroid/view/View;

    return-object v0

    .line 1211
    :cond_1
    sget-object v2, Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;->ATTACHMENT:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    if-ne v0, v2, :cond_2

    .line 1212
    sget v0, Lemt$g;->dt_search_category_attachment:I

    goto :goto_0

    .line 1214
    :cond_2
    sget v0, Lemt$g;->dt_search_category_sender:I

    goto :goto_0
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 92
    sget v0, Lemt$f;->fragment_ding_search_result_detail:I

    return v0
.end method
