.class public Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "ChannelListActivity.java"


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Lcuc;

.field private e:J

.field private final f:I

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;",
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

.field private n:Landroid/content/BroadcastReceiver;

.field private o:Landroid/content/BroadcastReceiver;

.field private p:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->e:J

    .line 54
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->f:I

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->g:Ljava/util/ArrayList;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->k:Z

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->l:I

    .line 62
    const-string/jumbo v0, "12034"

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->m:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->l:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;
    .param p1, "x1"    # J

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->e:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 5
    .param p1, "loadMore"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v4, 0x8

    .line 223
    if-nez p1, :cond_0

    .line 3259
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->b:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3260
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 3261
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->c:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 226
    :cond_0
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/ChannelIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/ChannelIService;

    .line 227
    .local v1, "channelIService":Lcom/alibaba/android/dingtalkim/models/idl/service/ChannelIService;
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;Z)V

    .line 255
    .local v0, "callback":Lcmi;, "Lcmi<Ldqp;>;"
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/ChannelIService;->getChannelRequest(Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V

    .line 256
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->i:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)Lcuc;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->d:Lcuc;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->k:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->h:I

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 46
    .line 3265
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 3266
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 3267
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3268
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    .line 3271
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 3272
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3273
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->j:I

    return p1
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    .prologue
    const-wide/16 v4, 0x0

    .line 46
    .line 4183
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->d:Lcuc;

    if-eqz v0, :cond_2

    .line 4184
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->d:Lcuc;

    .line 5164
    const/4 v1, 0x0

    .line 5165
    iget-object v0, v6, Lcuc;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, v6, Lcuc;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 5166
    iget-object v0, v6, Lcuc;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;

    .line 5167
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;->b:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v7, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;->FOLLOWING:Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;

    invoke-virtual {v7}, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;->ordinal()I

    move-result v7

    if-ne v3, v7, :cond_0

    .line 5169
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;->a:Lcfi;

    iget-object v1, v1, Lcfi;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 5174
    :goto_0
    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 5175
    invoke-static {}, Lddf;->a()Lddi;

    move-result-object v1

    invoke-interface {v1, v2, v3}, Lddi;->a(J)Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    move-result-object v1

    .line 5176
    if-eqz v1, :cond_2

    .line 5177
    if-eqz v0, :cond_1

    .line 5178
    sget-object v2, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;->FOLLOWED:Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;->b:Ljava/lang/Integer;

    .line 5179
    invoke-virtual {v6}, Lcuc;->notifyDataSetChanged()V

    .line 5180
    iget-object v0, v6, Lcuc;->b:Lcuc$a;

    if-eqz v0, :cond_1

    .line 5181
    iget-object v0, v6, Lcuc;->b:Lcuc$a;

    iget-object v2, v6, Lcuc;->c:Lcuc$b;

    invoke-virtual {v0, v2}, Lcuc$a;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5184
    :cond_1
    invoke-virtual {v6, v1}, Lcuc;->a(Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;)V

    .line 46
    :cond_2
    return-void

    :cond_3
    move-object v0, v1

    move-wide v2, v4

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->k:Z

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    .prologue
    .line 46
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->h:I

    return v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    .prologue
    .line 46
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->i:I

    return v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    .prologue
    .line 46
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->j:I

    return v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    .prologue
    .line 46
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->l:I

    return v0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->m:Ljava/lang/String;

    return-object v0
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

    .line 70
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    sget v0, Lctk$g;->activity_channel_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->setContentView(I)V

    .line 72
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lctk$i;->dt_channel_assistant_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1189
    sget v0, Lctk$f;->ll_progress:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->b:Landroid/view/View;

    .line 1190
    sget v0, Lctk$f;->rl_empty_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->c:Landroid/view/View;

    .line 1192
    sget v0, Lctk$f;->list_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->a:Landroid/widget/ListView;

    .line 1193
    new-instance v0, Lcuc;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->g:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcuc;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->d:Lcuc;

    .line 1194
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->d:Lcuc;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1195
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 1196
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 74
    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->a(Z)V

    .line 2088
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->n:Landroid/content/BroadcastReceiver;

    .line 2112
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "action_cancel_follow_channel"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2113
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2123
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->o:Landroid/content/BroadcastReceiver;

    .line 2154
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "internal_channel_auth_result"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2155
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2165
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->p:Landroid/content/BroadcastReceiver;

    .line 2171
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2172
    const-string/jumbo v1, "com.workapp.channel.sync"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2173
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 78
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 81
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onDestroy()V

    .line 3117
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->n:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 3118
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 3159
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->o:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 3160
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 3177
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->p:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 3178
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 85
    :cond_2
    return-void
.end method
