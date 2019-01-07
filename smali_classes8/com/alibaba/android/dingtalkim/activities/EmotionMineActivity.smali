.class public Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "EmotionMineActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final a:I

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ListView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/view/Menu;

.field private i:Landroid/view/MenuItem;

.field private j:Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ldpt$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->a:I

    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->supportInvalidateOptionsMenu()V

    .line 2191
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->c:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 2195
    :cond_0
    :goto_0
    return-void

    .line 2194
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->k:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2202
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2203
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 2208
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->b:Landroid/widget/LinearLayout;

    if-ne v0, v1, :cond_0

    .line 2209
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;

    .prologue
    .line 29
    .line 2263
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2264
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->startActivity(Landroid/content/Intent;)V

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;J)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;
    .param p1, "x1"    # J

    .prologue
    .line 29
    .line 2214
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;J)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 29
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;

    .prologue
    .line 29
    .line 2268
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/im/emotion_download_record.html"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;J)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;
    .param p1, "x1"    # J

    .prologue
    .line 29
    .line 2222
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->d:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 2225
    const/4 v1, 0x1

    .line 2226
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    .line 2227
    if-eqz v0, :cond_0

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->packageId:J

    cmp-long v0, v4, p1

    if-nez v0, :cond_0

    .line 2228
    const/4 v0, 0x0

    .line 2232
    :goto_0
    if-eqz v0, :cond_1

    .line 2233
    invoke-static {}, Ldpt;->a()Ldpt;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ldpt;->b(J)Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;

    move-result-object v0

    .line 2234
    if-eqz v0, :cond_1

    .line 2235
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2236
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->k:Ljava/util/List;

    invoke-static {}, Ldpt;->a()Ldpt;

    move-result-object v1

    invoke-virtual {v1}, Ldpt;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2237
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->a()V

    .line 2238
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->j:Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;->notifyDataSetChanged()V

    .line 29
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;)Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->j:Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;J)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;
    .param p1, "x1"    # J

    .prologue
    .line 29
    .line 2244
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->k:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2247
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2248
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2249
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    .line 2250
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->packageId:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_0

    .line 2251
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 2255
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->a()V

    .line 29
    :cond_2
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    sget v0, Lctk$g;->emotion_mine:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->setContentView(I)V

    .line 1114
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lctk$i;->dt_emotion_my:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 1118
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lctk$g;->layout_emotion_mine_header:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->b:Landroid/widget/LinearLayout;

    .line 1119
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->b:Landroid/widget/LinearLayout;

    sget v1, Lctk$f;->tv_emotion_mine_header:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->c:Landroid/widget/TextView;

    .line 1120
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lctk$g;->layout_emotion_mine_footer:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->e:Landroid/widget/LinearLayout;

    .line 1121
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->e:Landroid/widget/LinearLayout;

    sget v1, Lctk$f;->container_mine_favorite:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->f:Landroid/widget/RelativeLayout;

    .line 1122
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->e:Landroid/widget/LinearLayout;

    sget v1, Lctk$f;->container_download_record:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->g:Landroid/widget/RelativeLayout;

    .line 1123
    sget v0, Lctk$f;->list_emotion_packages:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->d:Landroid/widget/ListView;

    .line 1124
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1125
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->k:Ljava/util/List;

    .line 1130
    invoke-static {}, Ldpt;->a()Ldpt;

    move-result-object v0

    invoke-virtual {v0}, Ldpt;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->k:Ljava/util/List;

    invoke-static {}, Ldpt;->a()Ldpt;

    move-result-object v1

    invoke-virtual {v1}, Ldpt;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1133
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->k:Ljava/util/List;

    sget-object v2, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter$MODE;->DELETE:Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter$MODE;

    invoke-direct {v0, p0, v1, v2}, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter$MODE;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->j:Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;

    .line 1134
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->j:Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1135
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->a()V

    .line 1144
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->l:Ldpt$a;

    .line 1175
    invoke-static {}, Ldpt;->a()Ldpt;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->l:Ldpt$a;

    invoke-virtual {v0, v1}, Ldpt;->a(Ldpt$a;)V

    .line 1177
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->f:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1182
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->g:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1187
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->d:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 58
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->h:Landroid/view/Menu;

    .line 67
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->h:Landroid/view/Menu;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->i:Landroid/view/MenuItem;

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->i:Landroid/view/MenuItem;

    sget v1, Lctk$i;->dt_im_emotion_sort:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 69
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->i:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 70
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 71
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->i:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 75
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->i:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 61
    invoke-static {}, Ldpt;->a()Ldpt;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->l:Ldpt$a;

    invoke-virtual {v0, v1}, Ldpt;->b(Ldpt$a;)V

    .line 62
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onDestroy()V

    .line 63
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 99
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-nez p1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 103
    .local v0, "item":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    if-eqz v1, :cond_0

    .line 106
    check-cast v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    .line 1272
    .end local v0    # "item":Ljava/lang/Object;
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/page/emotion"

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity$5;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 79
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 86
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 1259
    :pswitch_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/im/emotion_mine_adjust_sequence.html"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 90
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onResume()V

    .line 91
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 92
    invoke-static {}, Ldpt;->a()Ldpt;

    move-result-object v0

    invoke-virtual {v0}, Ldpt;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->k:Ljava/util/List;

    invoke-static {}, Ldpt;->a()Ldpt;

    move-result-object v1

    invoke-virtual {v1}, Ldpt;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineActivity;->j:Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;->notifyDataSetChanged()V

    .line 96
    :cond_0
    return-void
.end method
