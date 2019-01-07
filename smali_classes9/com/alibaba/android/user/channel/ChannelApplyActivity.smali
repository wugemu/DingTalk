.class public Lcom/alibaba/android/user/channel/ChannelApplyActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "ChannelApplyActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Lfbr;

.field private e:J

.field private final f:I

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/user/channel/model/ChannelApplyObject;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Lcjo$a;

.field private o:Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 62
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->e:J

    .line 63
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->f:I

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->g:Ljava/util/ArrayList;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->k:Z

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->l:I

    .line 71
    const-string/jumbo v0, "12034"

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->m:Ljava/lang/String;

    .line 334
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/channel/ChannelApplyActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelApplyActivity;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->l:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/channel/ChannelApplyActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelApplyActivity;
    .param p1, "x1"    # J

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->e:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/channel/ChannelApplyActivity;Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;)Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelApplyActivity;
    .param p1, "x1"    # Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->o:Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/channel/ChannelApplyActivity;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelApplyActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 48
    .line 3315
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3316
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 3317
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3318
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->b:Landroid/view/View;

    sget v1, Lezg$h;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3319
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->b:Landroid/view/View;

    sget v1, Lezg$h;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/channel/ChannelApplyActivity;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelApplyActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 5
    .param p1, "loadMore"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 209
    if-nez p1, :cond_0

    .line 2307
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->b:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2308
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->a:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2309
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->c:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2310
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->b:Landroid/view/View;

    sget v2, Lezg$h;->tv_empty:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lezg$l;->loading:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2311
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->b:Landroid/view/View;

    sget v2, Lezg$h;->tv_empty:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 212
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/user/channel/ChannelApplyActivity$4;-><init>(Lcom/alibaba/android/user/channel/ChannelApplyActivity;Z)V

    .line 302
    .local v0, "apiEventListener":Lcma;, "Lcma<Lfoe;>;"
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    invoke-interface {v1, v0, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;, "Lcma<Lfoe;>;"
    check-cast v0, Lcma;

    .line 303
    .restart local v0    # "apiEventListener":Lcma;, "Lcma<Lfoe;>;"
    invoke-static {}, Lfai;->a()Lezs;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->e:J

    const/16 v4, 0x14

    invoke-interface {v1, v2, v3, v4, v0}, Lezs;->b(JILcma;)V

    .line 304
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/channel/ChannelApplyActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelApplyActivity;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->i:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)Lfbr;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->d:Lfbr;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/channel/ChannelApplyActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelApplyActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->k:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/user/channel/ChannelApplyActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelApplyActivity;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->h:I

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->k:Z

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    .prologue
    .line 48
    iget v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->h:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/channel/ChannelApplyActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelApplyActivity;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->j:I

    return p1
.end method

.method static synthetic e(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    .prologue
    .line 48
    iget v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->i:I

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    .prologue
    .line 48
    iget v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->j:I

    return v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    .prologue
    .line 48
    iget v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->l:I

    return v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 48
    .line 2323
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2324
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2325
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2326
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2327
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->b:Landroid/view/View;

    sget v1, Lezg$h;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lezg$l;->no_org_apply:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    .line 2329
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2330
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->o:Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->m:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 107
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    sget v0, Lezg$j;->activity_channel_apply:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->setContentView(I)V

    .line 109
    sget v0, Lezg$h;->list_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->a:Landroid/widget/ListView;

    .line 110
    sget v0, Lezg$h;->ll_progress:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->b:Landroid/view/View;

    .line 111
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->b:Landroid/view/View;

    sget v1, Lezg$h;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->c:Landroid/view/View;

    .line 112
    new-instance v0, Lfbr;

    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->g:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lfbr;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->d:Lfbr;

    .line 113
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {p0}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->dt_channel_apply_list_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->d:Lfbr;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 116
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/user/channel/ChannelApplyActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/channel/ChannelApplyActivity$2;-><init>(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 140
    invoke-direct {p0, v3}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->a(Z)V

    .line 1156
    new-instance v1, Lcom/alibaba/android/user/channel/ChannelApplyActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/channel/ChannelApplyActivity$3;-><init>(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)V

    .line 1201
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1202
    const-string/jumbo v0, "com.workapp.channel_apply_clear_change"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1203
    const-string/jumbo v0, "com.workapp.channel_apply_change"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1204
    const-string/jumbo v0, "com.workapp.org.external.added"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1205
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    invoke-interface {v0, v1, p0, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/app/Activity;Landroid/content/IntentFilter;)V

    .line 2077
    new-instance v0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/channel/ChannelApplyActivity$1;-><init>(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->n:Lcjo$a;

    .line 2102
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->n:Lcjo$a;

    invoke-interface {v0, v1}, Lfac;->a(Lcjo$a;)V

    .line 143
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 147
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 148
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->n:Lcjo$a;

    invoke-interface {v0, v1}, Lfac;->b(Lcjo$a;)V

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->n:Lcjo$a;

    .line 150
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->o:Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->o:Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;

    invoke-virtual {v0}, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;->a()V

    .line 153
    :cond_0
    return-void
.end method
