.class public Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "PoiSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$b;,
        Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/PoiItem;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:I

.field private f:D

.field private g:D

.field private h:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$b;

.field private i:I

.field private j:Lhku;

.field private k:I

.field private l:Lhku$a;

.field private final m:I

.field private n:Landroid/widget/SearchView;

.field private o:Landroid/widget/ProgressBar;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 45
    const-string/jumbo v0, "poi_search_trigger"

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->a:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "poi_search_fail"

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->b:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->c:Ljava/util/List;

    .line 53
    new-instance v0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$b;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$b;-><init>(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->h:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$b;

    .line 54
    iput v1, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->i:I

    .line 58
    iput v1, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->k:I

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->m:I

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->n:Landroid/widget/SearchView;

    .line 260
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->o:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;Lhku$a;)Lhku$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;
    .param p1, "x1"    # Lhku$a;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->l:Lhku$a;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;Ljava/lang/String;)V
    .locals 12
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    .line 3150
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->i:I

    .line 3151
    iget v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->k:I

    .line 3152
    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->f:D

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->g:D

    iget v6, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->e:I

    iget v7, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->i:I

    const/16 v8, 0xa

    const-string/jumbo v9, "\u6c7d\u8f66\u670d\u52a1|\u6c7d\u8f66\u9500\u552e|\u6c7d\u8f66\u7ef4\u4fee|\u6469\u6258\u8f66\u670d\u52a1|\u9910\u996e\u670d\u52a1|\u8d2d\u7269\u670d\u52a1|\u751f\u6d3b\u670d\u52a1|\u4f53\u80b2\u4f11\u95f2\u670d\u52a1|\u533b\u7597\u4fdd\u5065\u670d\u52a1|\u4f4f\u5bbf\u670d\u52a1|\u98ce\u666f\u540d\u80dc|\u5546\u52a1\u4f4f\u5b85|\u653f\u5e9c\u673a\u6784\u53ca\u793e\u4f1a\u56e2\u4f53|\u79d1\u6559\u6587\u5316\u670d\u52a1|\u4ea4\u901a\u8bbe\u65bd\u670d\u52a1|\u91d1\u878d\u4fdd\u9669\u670d\u52a1|\u516c\u53f8\u4f01\u4e1a|\u9053\u8def\u9644\u5c5e\u8bbe\u65bd|\u5730\u540d\u5730\u5740\u4fe1\u606f|\u516c\u5171\u8bbe\u65bd"

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->d:Ljava/lang/String;

    new-instance v11, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a;

    iget v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->k:I

    invoke-direct {v11, p0, v0}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a;-><init>(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;I)V

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v11}, Lhku;->a(Landroid/content/Context;Ljava/lang/String;DDIIILjava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)Lhku;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->j:Lhku;

    .line 3154
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "poi_search_trigger"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    .prologue
    .line 43
    iget v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->k:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->p:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->q:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    .prologue
    .line 43
    iget v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->i:I

    return v0
.end method

.method static synthetic f(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->h:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$b;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)Lhku;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->j:Lhku;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)Lhku$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->l:Lhku$a;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    .prologue
    .line 43
    iget v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->i:I

    return v0
.end method

.method static synthetic k(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    .prologue
    .line 43
    iget v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->k:I

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 76
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    sget v0, Lhdn$i;->ac_poi_search_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->setContentView(I)V

    .line 1085
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1086
    if-eqz v0, :cond_0

    .line 1087
    const-string/jumbo v1, "default_city_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->d:Ljava/lang/String;

    .line 1088
    const-string/jumbo v1, "scope_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->e:I

    .line 1089
    const-string/jumbo v1, "default_location_latitude"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->f:D

    .line 1090
    const-string/jumbo v1, "default_location_longitude"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->g:D

    .line 1215
    :cond_0
    sget v0, Lhdn$h;->progress:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->o:Landroid/widget/ProgressBar;

    .line 1217
    sget v0, Lhdn$h;->list_poi_search_datas:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->q:Landroid/widget/ListView;

    .line 1218
    sget v0, Lhdn$h;->no_result_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->p:Landroid/view/View;

    .line 1220
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->q:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->h:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1222
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->q:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$3;-><init>(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1234
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->q:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$4;-><init>(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1255
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1256
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 97
    const-string/jumbo v1, ""

    invoke-interface {p1, v5, v2, v5, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 98
    .local v0, "searchInput":Landroid/view/MenuItem;
    sget v1, Lhdn$k;->search_box_hint:I

    invoke-static {p0, v1}, Lcms;->a(Landroid/app/Activity;I)Landroid/widget/SearchView;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->n:Landroid/widget/SearchView;

    .line 99
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->n:Landroid/widget/SearchView;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 100
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 101
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 103
    new-instance v1, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$1;-><init>(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)V

    invoke-static {v0, v1}, Lgd;->a(Landroid/view/MenuItem;Lgd$d;)Landroid/view/MenuItem;

    .line 118
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->n:Landroid/widget/SearchView;

    new-instance v2, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$2;-><init>(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 2203
    new-instance v1, Landroid/text/SpannableString;

    sget v2, Lhdn$k;->search_box_hint:I

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2206
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lhdn$e;->search_hint_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-interface {v1, v2, v5, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2208
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->n:Landroid/widget/SearchView;

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2209
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->n:Landroid/widget/SearchView;

    invoke-virtual {v2, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 142
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method
