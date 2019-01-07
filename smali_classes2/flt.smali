.class public final Lflt;
.super Ljava/lang/Object;
.source "FriendRequestDataManager.java"


# instance fields
.field public a:Z

.field b:J

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;",
            ">;"
        }
    .end annotation
.end field

.field e:Z

.field f:J

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;",
            ">;"
        }
    .end annotation
.end field

.field h:I

.field i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;",
            ">;"
        }
    .end annotation
.end field

.field public k:Z

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfgm;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;",
            ">;"
        }
    .end annotation
.end field

.field public n:Lcjo$a;

.field public o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

.field p:Z

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "activity"    # Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;
    .param p2, "fromPage"    # Ljava/lang/String;
    .param p3, "isIntroduceData"    # Z

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflt;->c:Ljava/util/List;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lflt;->e:Z

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflt;->g:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflt;->i:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflt;->j:Ljava/util/List;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lflt;->k:Z

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflt;->l:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflt;->m:Ljava/util/List;

    .line 90
    iput-object p1, p0, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    .line 91
    iput-object p2, p0, Lflt;->q:Ljava/lang/String;

    .line 92
    iput-boolean p3, p0, Lflt;->p:Z

    .line 1958
    new-instance v1, Lflt$5;

    invoke-direct {v1, p0}, Lflt$5;-><init>(Lflt;)V

    .line 2045
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 2046
    const-string/jumbo v0, "com.workapp.friend_request_change"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2047
    const-string/jumbo v0, "action_friend_request_status_changed"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2048
    const-string/jumbo v0, "action_friend_request_deleted"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2049
    const-string/jumbo v0, "com.workapp.org_apply_change"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2050
    const-string/jumbo v0, "action_group_apply_removed"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2051
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    iget-object v3, p0, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-interface {v0, v1, v3, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/app/Activity;Landroid/content/IntentFilter;)V

    .line 2056
    new-instance v0, Lflt$6;

    invoke-direct {v0, p0}, Lflt$6;-><init>(Lflt;)V

    iput-object v0, p0, Lflt;->n:Lcjo$a;

    .line 2097
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v0

    iget-object v1, p0, Lflt;->n:Lcjo$a;

    invoke-interface {v0, v1}, Lfac;->a(Lcjo$a;)V

    .line 95
    return-void
.end method

.method private static a(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;>;"
    const/4 v3, 0x2

    .line 101
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    :cond_0
    const/4 v0, 0x0

    .line 115
    :cond_1
    :goto_0
    return v0

    .line 104
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_4

    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 106
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    .line 107
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;
    if-eqz v1, :cond_3

    .line 110
    iget-boolean v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->isRead:Z

    if-eqz v2, :cond_3

    if-ge v0, v3, :cond_1

    .line 105
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 115
    .end local v0    # "i":I
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lflt;)Z
    .locals 1
    .param p0, "x0"    # Lflt;

    .prologue
    .line 60
    .line 5119
    iget-object v0, p0, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 60
    goto :goto_0
.end method

.method static synthetic b(Lflt;)V
    .locals 0
    .param p0, "x0"    # Lflt;

    .prologue
    .line 60
    invoke-virtual {p0}, Lflt;->a()V

    return-void
.end method

.method static synthetic c(Lflt;)V
    .locals 4
    .param p0, "x0"    # Lflt;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 60
    .line 5441
    iget-object v0, p0, Lflt;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 5442
    iget-boolean v0, p0, Lflt;->k:Z

    if-eqz v0, :cond_0

    .line 5443
    iget-object v0, p0, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    .line 6266
    iget-object v1, v0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->a:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6267
    iget-object v1, v0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 6268
    iget-object v1, v0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 6269
    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5450
    :goto_0
    iput-boolean v3, p0, Lflt;->a:Z

    .line 60
    return-void

    .line 5445
    :cond_0
    iget-object v0, p0, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    .line 6274
    iget-object v1, v0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->a:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6275
    iget-object v1, v0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 6276
    iget-object v1, v0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 6277
    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 5448
    :cond_1
    iget-object v0, p0, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->d()V

    goto :goto_0
.end method

.method private e()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 376
    iget-object v0, p0, Lflt;->g:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lflt;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 377
    iget-object v6, p0, Lflt;->l:Ljava/util/List;

    new-instance v0, Lfgm;

    const/4 v1, 0x4

    const/4 v5, 0x0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lfgm;-><init>(IIZZLcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v0, p0, Lflt;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_2

    .line 379
    iget-object v0, p0, Lflt;->l:Ljava/util/List;

    new-instance v3, Lfgm;

    const/4 v4, 0x3

    if-nez v5, :cond_0

    move v6, v9

    :goto_1
    iget-object v1, p0, Lflt;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v5, v1, :cond_1

    move v7, v9

    :goto_2
    iget-object v1, p0, Lflt;->g:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    invoke-direct/range {v3 .. v8}, Lfgm;-><init>(IIZZLcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move v6, v2

    .line 379
    goto :goto_1

    :cond_1
    move v7, v2

    goto :goto_2

    .line 382
    .end local v5    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method a()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 349
    iget-object v0, p0, Lflt;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 350
    iget-boolean v0, p0, Lflt;->p:Z

    if-eqz v0, :cond_1

    .line 352
    invoke-direct {p0}, Lflt;->e()V

    .line 372
    :cond_0
    :goto_0
    iget-object v0, p0, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->g()V

    .line 373
    return-void

    .line 354
    :cond_1
    invoke-virtual {p0}, Lflt;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 355
    iget v3, p0, Lflt;->h:I

    .line 2385
    iget-object v0, p0, Lflt;->i:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lflt;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 2386
    iget-object v6, p0, Lflt;->l:Ljava/util/List;

    new-instance v0, Lfgm;

    const/16 v1, 0x8

    new-instance v4, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;-><init>()V

    .line 3067
    iput v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->b:I

    .line 2387
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->a()Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    move-result-object v5

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lfgm;-><init>(IIZZLcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;)V

    .line 2386
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v2

    .line 2388
    :goto_1
    iget-object v0, p0, Lflt;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_4

    .line 2389
    iget-object v0, p0, Lflt;->l:Ljava/util/List;

    new-instance v3, Lfgm;

    const/16 v4, 0x9

    if-nez v5, :cond_2

    move v6, v11

    :goto_2
    iget-object v1, p0, Lflt;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v5, v1, :cond_3

    move v7, v11

    :goto_3
    iget-object v1, p0, Lflt;->i:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    invoke-direct/range {v3 .. v8}, Lfgm;-><init>(IIZZLcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2388
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move v6, v2

    .line 2389
    goto :goto_2

    :cond_3
    move v7, v2

    goto :goto_3

    .line 2391
    :cond_4
    iget-object v6, p0, Lflt;->l:Ljava/util/List;

    new-instance v0, Lfgm;

    const/16 v1, 0xa

    move v3, v2

    move v4, v2

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lfgm;-><init>(IIZZLcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3396
    :cond_5
    iget-object v0, p0, Lflt;->c:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lflt;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 3397
    iget-object v6, p0, Lflt;->l:Ljava/util/List;

    new-instance v0, Lfgm;

    move v1, v11

    move v3, v2

    move v4, v2

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lfgm;-><init>(IIZZLcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v2

    .line 3398
    :goto_4
    iget-object v0, p0, Lflt;->c:Ljava/util/List;

    invoke-static {v0}, Lflt;->a(Ljava/util/List;)I

    move-result v0

    if-ge v3, v0, :cond_8

    .line 3399
    iget-object v0, p0, Lflt;->l:Ljava/util/List;

    new-instance v1, Lfgm;

    if-nez v3, :cond_6

    move v4, v11

    :goto_5
    iget-object v5, p0, Lflt;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_7

    move v5, v11

    :goto_6
    iget-object v6, p0, Lflt;->c:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    invoke-direct/range {v1 .. v6}, Lfgm;-><init>(IIZZLcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3398
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    move v4, v2

    .line 3399
    goto :goto_5

    :cond_7
    move v5, v2

    goto :goto_6

    .line 3401
    :cond_8
    iget-object v6, p0, Lflt;->l:Ljava/util/List;

    new-instance v0, Lfgm;

    const/4 v1, 0x2

    move v3, v2

    move v4, v2

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lfgm;-><init>(IIZZLcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_9
    invoke-virtual {p0}, Lflt;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3406
    iget-object v0, p0, Lflt;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflt;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3407
    iget-object v6, p0, Lflt;->l:Ljava/util/List;

    new-instance v0, Lfgm;

    const/4 v1, 0x6

    move v3, v2

    move v4, v2

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lfgm;-><init>(IIZZLcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v2

    .line 3408
    :goto_7
    iget-object v0, p0, Lflt;->j:Ljava/util/List;

    invoke-static {v0}, Lflt;->a(Ljava/util/List;)I

    move-result v0

    if-ge v5, v0, :cond_c

    .line 3409
    iget-object v0, p0, Lflt;->l:Ljava/util/List;

    new-instance v3, Lfgm;

    const/4 v4, 0x5

    if-nez v5, :cond_a

    move v6, v11

    :goto_8
    iget-object v1, p0, Lflt;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v5, v1, :cond_b

    move v7, v11

    :goto_9
    iget-object v1, p0, Lflt;->j:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    invoke-direct/range {v3 .. v8}, Lfgm;-><init>(IIZZLcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3408
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_a
    move v6, v2

    .line 3409
    goto :goto_8

    :cond_b
    move v7, v2

    goto :goto_9

    .line 3411
    :cond_c
    iget-object v6, p0, Lflt;->l:Ljava/util/List;

    new-instance v0, Lfgm;

    const/4 v1, 0x7

    move v3, v2

    move v4, v2

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lfgm;-><init>(IIZZLcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 364
    :cond_d
    invoke-static {}, Lflw;->a()Z

    move-result v9

    .line 365
    .local v9, "contactSwitch":Z
    iget-object v0, p0, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    const-string/jumbo v1, "pref_new_friends_header_tip_closed"

    invoke-static {v0, v1}, Lcpk;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    .line 367
    .local v10, "isClosed":Z
    if-nez v10, :cond_0

    if-eqz v9, :cond_0

    .line 368
    invoke-direct {p0}, Lflt;->e()V

    goto/16 :goto_0
.end method

.method public final a(I)V
    .locals 7
    .param p1, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 465
    iget-boolean v1, p0, Lflt;->a:Z

    if-eqz v1, :cond_1

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    iget-object v1, p0, Lflt;->c:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lflt;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    if-ltz p1, :cond_0

    iget-object v1, p0, Lflt;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 474
    iget-object v1, p0, Lflt;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    .line 475
    .local v0, "friendRequestObject":Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;
    if-eqz v0, :cond_0

    .line 478
    iget-object v1, p0, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->showLoadingDialog()V

    .line 479
    const/4 v1, 0x1

    iput-boolean v1, p0, Lflt;->a:Z

    .line 480
    invoke-static {}, Lfap;->a()Lezv;

    move-result-object v2

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->id:J

    new-instance v1, Lflt$10;

    invoke-direct {v1, p0, p1}, Lflt$10;-><init>(Lflt;I)V

    const-class v3, Lcma;

    iget-object v6, p0, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-static {v1, v3, v6}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-interface {v2, v4, v5, v1}, Lezv;->b(JLcma;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;Ljava/lang/String;)V
    .locals 5
    .param p1, "friendRequestObject"    # Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;
    .param p2, "displayName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 870
    if-nez p1, :cond_0

    .line 939
    :goto_0
    return-void

    .line 873
    :cond_0
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 874
    iget-object v0, p0, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-static {v0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/accept_friend"

    new-instance v2, Lflt$3;

    invoke-direct {v2, p0, p1, p2}, Lflt$3;-><init>(Lflt;Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 885
    :cond_1
    iget-object v0, p0, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->showLoadingDialog()V

    .line 886
    invoke-static {}, Lfap;->a()Lezv;

    move-result-object v0

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->id:J

    const/4 v1, 0x0

    new-instance v4, Lflt$4;

    invoke-direct {v4, p0, p1, p2}, Lflt$4;-><init>(Lflt;Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;Ljava/lang/String;)V

    invoke-interface {v0, v2, v3, v1, v4}, Lezv;->a(JZLcma;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 6
    .param p1, "isLoadMore"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 186
    if-eqz p1, :cond_0

    iget-wide v2, p0, Lflt;->f:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 187
    iget-wide v0, p0, Lflt;->f:J

    .line 191
    .local v0, "cursor":J
    :goto_0
    invoke-static {}, Lfap;->a()Lezv;

    move-result-object v2

    const/16 v3, 0x14

    new-instance v4, Lflt$7;

    invoke-direct {v4, p0, p1}, Lflt$7;-><init>(Lflt;Z)V

    invoke-interface {v2, v0, v1, v3, v4}, Lezv;->e(JILcma;)V

    .line 244
    return-void

    .line 2345
    .end local v0    # "cursor":J
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 189
    .restart local v0    # "cursor":J
    goto :goto_0
.end method

.method b()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 416
    iget-object v0, p0, Lflt;->q:Ljava/lang/String;

    const-string/jumbo v1, "IM"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lflt;->q:Ljava/lang/String;

    const-string/jumbo v1, "search"

    .line 417
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 421
    iget-object v0, p0, Lflt;->q:Ljava/lang/String;

    const-string/jumbo v1, "IM"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lflt;->q:Ljava/lang/String;

    const-string/jumbo v1, "search"

    .line 422
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

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

.method public final d()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 426
    iget-boolean v0, p0, Lflt;->a:Z

    if-eqz v0, :cond_0

    .line 438
    :goto_0
    return-void

    .line 429
    :cond_0
    iget-object v0, p0, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->b()V

    .line 430
    const/4 v0, 0x1

    iput-boolean v0, p0, Lflt;->a:Z

    .line 431
    iget-boolean v0, p0, Lflt;->p:Z

    if-eqz v0, :cond_1

    .line 432
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lflt;->a(Z)V

    goto :goto_0

    .line 4123
    :cond_1
    invoke-static {}, Lfap;->a()Lezv;

    move-result-object v0

    .line 4345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4123
    const/4 v1, 0x3

    new-instance v4, Lflt$1;

    invoke-direct {v4, p0}, Lflt$1;-><init>(Lflt;)V

    invoke-interface {v0, v2, v3, v1, v4}, Lezv;->c(JILcma;)V

    goto :goto_0
.end method
