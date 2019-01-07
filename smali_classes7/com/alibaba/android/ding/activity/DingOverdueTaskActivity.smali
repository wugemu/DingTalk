.class public Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "DingOverdueTaskActivity.java"


# instance fields
.field a:I

.field b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ListView;

.field private f:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

.field private g:J

.field private h:Lbiz;

.field private i:Landroid/content/BroadcastReceiver;

.field private j:Layh;

.field private k:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/alibaba/android/ding/base/objects/ObjectDing$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 67
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->a:I

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->b:Ljava/util/Set;

    .line 69
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->g:J

    .line 75
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->k:Ljava/util/Collection;

    .line 181
    new-instance v0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$4;-><init>(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->l:Lcom/alibaba/android/ding/base/objects/ObjectDing$a;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->a:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;Ljava/lang/CharSequence;)Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 59
    .line 4333
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4337
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->k:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 4338
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4339
    :goto_0
    return-object v0

    .line 4343
    :cond_1
    const/4 v0, 0x0

    .line 59
    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->b:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;Lcma;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;
    .param p1, "x1"    # Lcma;

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->a(Lcma;)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->g:J

    return-wide v0
.end method

.method private b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 251
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->a:I

    .line 252
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 253
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->j:Layh;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->j:Layh;

    iget v1, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->a:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->b:Ljava/util/Set;

    invoke-virtual {v0, v1, v2, v3}, Layh;->a(ILbiz;Ljava/util/Set;)V

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->a()V

    .line 257
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;)Layh;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->j:Layh;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

    .prologue
    .line 59
    iget v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->a:I

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;)Lbiz;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->h:Lbiz;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->k:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 59
    .line 3205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3207
    invoke-static {}, Lbbs;->a()Lbbs;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->k:Ljava/util/Collection;

    invoke-virtual {v1, v2}, Lbbs;->h(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 3208
    if-eqz v1, :cond_0

    .line 3209
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3212
    :cond_0
    sget-object v1, Lbbn;->e:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3213
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->j:Layh;

    .line 4049
    iget-object v2, v1, Layh;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 4051
    iget-object v2, v1, Layh;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4053
    invoke-virtual {v1}, Layh;->notifyDataSetChanged()V

    .line 3214
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3215
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 3216
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_0
    return-void

    .line 3218
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 3219
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->b()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 260
    iget v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 261
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->d:Landroid/widget/TextView;

    sget v1, Laxp$i;->ding_home_menu_delete_all:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->supportInvalidateOptionsMenu()V

    .line 272
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->d:Landroid/widget/TextView;

    sget v1, Laxp$i;->ding_home_menu_delete:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->b:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

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

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 370
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v1, "dingIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->b:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3109
    .local v0, "dingId":Ljava/lang/String;
    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 372
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 374
    .end local v0    # "dingId":Ljava/lang/String;
    :cond_0
    sget v2, Laxp$i;->loading:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->showLoadingDialog(I)V

    .line 375
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4, p1}, Lbbp;->a(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Lcma;)V

    .line 376
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    sget v0, Laxp$g;->ding_activity_ding_overdue_task:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->setContentView(I)V

    .line 1091
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laxp$g;->actbar_textview:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->c:Landroid/view/View;

    .line 1092
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->c:Landroid/view/View;

    sget v1, Laxp$f;->tv_ok:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->d:Landroid/widget/TextView;

    .line 1094
    sget v0, Laxp$f;->listview:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->e:Landroid/widget/ListView;

    .line 1095
    sget v0, Laxp$f;->list_empty_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 1096
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Laxp$e;->ding_icon_ding_new_empty:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyImageResource(I)V

    .line 1097
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Laxp$i;->dt_ding_empty_content_v2:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 1098
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setExtendedDescription(I)V

    .line 1133
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->i:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1134
    new-instance v0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$3;-><init>(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->i:Landroid/content/BroadcastReceiver;

    .line 1154
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.workapp.ding.choose.mode.change"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1155
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2103
    :cond_0
    new-instance v0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$1;-><init>(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->h:Lbiz;

    .line 2124
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$2;-><init>(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2160
    new-instance v0, Layh;

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->e:Landroid/widget/ListView;

    iget v3, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->a:I

    iget-wide v4, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->g:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Layh;-><init>(Landroid/app/Activity;Landroid/widget/ListView;IJ)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->j:Layh;

    .line 2161
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->j:Layh;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2165
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingAll:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->l:Lcom/alibaba/android/ding/base/objects/ObjectDing$a;

    invoke-virtual {v0, v1, v2}, Lbbp;->a(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcom/alibaba/android/ding/base/objects/ObjectDing$a;)V

    .line 87
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 225
    iget v1, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->a:I

    if-eq v1, v4, :cond_0

    .line 226
    const/4 v1, 0x1

    sget v2, Laxp$i;->sure:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 227
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->c:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 228
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 230
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 170
    .line 2178
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingAll:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->l:Lcom/alibaba/android/ding/base/objects/ObjectDing$a;

    invoke-virtual {v0, v1, v2}, Lbbp;->b(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcom/alibaba/android/ding/base/objects/ObjectDing$a;)V

    .line 171
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->i:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 172
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 174
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 175
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 235
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 247
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 237
    :pswitch_0
    iget v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->b()V

    .line 239
    const/4 v0, 0x1

    goto :goto_1

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->finish()V

    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
