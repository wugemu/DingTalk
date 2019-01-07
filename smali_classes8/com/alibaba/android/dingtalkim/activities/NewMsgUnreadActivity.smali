.class public Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "NewMsgUnreadActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$b;,
        Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$a;,
        Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$f;,
        Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;,
        Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;,
        Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$d;,
        Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$e;
    }
.end annotation


# instance fields
.field private A:Landroid/animation/ObjectAnimator;

.field private B:Landroid/animation/ObjectAnimator;

.field private C:I

.field private D:Landroid/os/Handler;

.field a:Lcma;

.field b:Lcma;

.field private c:Lcom/alibaba/wukong/im/Message;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$e;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/ListView;

.field private k:Landroid/widget/BaseAdapter;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/view/View;

.field private t:Landroid/widget/ListView;

.field private u:Landroid/widget/BaseAdapter;

.field private v:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

.field private w:Lcom/alibaba/android/dingtalkim/views/ScrollableViewPager;

.field private x:J

.field private y:I

.field private z:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->c:Lcom/alibaba/wukong/im/Message;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->d:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->e:Ljava/util/List;

    .line 103
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->y:I

    .line 104
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->z:Ljava/util/HashSet;

    .line 110
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;

    invoke-direct {v1, p0, v3}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;-><init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;B)V

    const-class v2, Lcma;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->a:Lcma;

    .line 111
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$f;

    invoke-direct {v1, p0, v3}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$f;-><init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;B)V

    const-class v2, Lcma;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->b:Lcma;

    .line 669
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$11;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$11;-><init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->D:Landroid/os/Handler;

    .line 1240
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->C:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->i:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;
    .param p1, "x1"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->k:Landroid/widget/BaseAdapter;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;
    .param p1, "x1"    # Landroid/widget/ListView;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->j:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->p:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->v:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    return-object v0
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 226
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->v:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->f:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$e;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->v:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->f:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$e;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$e;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(ILjava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->v:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->f:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$e;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$e;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(ILjava/lang/String;)V

    .line 230
    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 2
    .param p1, "choosingMode"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 332
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->y:I

    if-ne v0, p1, :cond_0

    .line 348
    :goto_0
    return-void

    .line 336
    :cond_0
    iput p1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->y:I

    .line 337
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 338
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->c()V

    .line 339
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->w:Lcom/alibaba/android/dingtalkim/views/ScrollableViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/ScrollableViewPager;->setScrollable(Z)V

    .line 5206
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->B:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->B:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5207
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->B:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 5210
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->A:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 5211
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->A:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 347
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->d()V

    goto :goto_0

    .line 342
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->b()V

    .line 343
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->w:Lcom/alibaba/android/dingtalkim/views/ScrollableViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/ScrollableViewPager;->setScrollable(Z)V

    .line 5217
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->A:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->A:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5218
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->A:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 5220
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->B:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 5221
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->B:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 71
    .line 8149
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->z:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8150
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->z:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8151
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->z:Ljava/util/HashSet;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8152
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->c:Lcom/alibaba/wukong/im/Message;

    invoke-static {p0, p1, v1, v0}, Ldjm;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;Ljava/util/List;)V

    .line 71
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;Ljava/util/List;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 71
    .line 8102
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;Ljava/util/List;Ldrs;Ldrs;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ldrs;
    .param p3, "x3"    # Ldrs;
    .param p4, "x4"    # Ljava/util/List;
    .param p5, "x5"    # Ljava/util/List;
    .param p6, "x6"    # Ljava/util/Map;

    .prologue
    .line 71
    .line 6761
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6762
    if-eqz p1, :cond_3

    .line 6763
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 6764
    if-eqz v0, :cond_0

    .line 6765
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldsa;

    .line 6766
    if-eqz v1, :cond_0

    .line 6767
    iput-object v0, v1, Ldsa;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 6768
    iget v4, v1, Ldsa;->b:I

    sget-object v5, Lcom/alibaba/wukong/im/Message$ReadStatus;->READ:Lcom/alibaba/wukong/im/Message$ReadStatus;

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/Message$ReadStatus;->typeValue()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 6769
    iget-object v4, v1, Ldsa;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->b()Lchy;

    move-result-object v6

    invoke-virtual {v6}, Lchy;->getCurrentUid()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 6770
    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6775
    :cond_1
    :goto_1
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6776
    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6773
    :cond_2
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6782
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 6783
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$2;

    invoke-direct {v3, p0, p6, p2, p3}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;Ljava/util/Map;Ldrs;Ldrs;)V

    const-class v4, Lcma;

    invoke-interface {v0, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;Ljava/util/List;)V

    :goto_2
    return-void

    .line 6813
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->a:Lcma;

    invoke-interface {v0, p2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 6814
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->b:Lcma;

    invoke-interface {v0, p3}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 6815
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->a()V

    goto :goto_2
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->l:Landroid/view/View;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;
    .param p1, "x1"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->u:Landroid/widget/BaseAdapter;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;
    .param p1, "x1"    # Landroid/widget/ListView;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->t:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->q:Landroid/widget/TextView;

    return-object p1
.end method

.method private b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 352
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->z:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 353
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 358
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v0, :cond_1

    .line 359
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->z:Ljava/util/HashSet;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 362
    .end local v0    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->k:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 363
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->d()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    .prologue
    const-wide/16 v8, 0x1f4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 71
    .line 6175
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->v:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    const-string/jumbo v1, "translationY"

    new-array v2, v7, [F

    iget v3, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->C:I

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v2, v5

    aput v4, v2, v6

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->A:Landroid/animation/ObjectAnimator;

    .line 6176
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->A:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 6177
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->A:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6184
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->v:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    const-string/jumbo v1, "translationY"

    new-array v2, v7, [F

    aput v4, v2, v5

    iget v3, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->C:I

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v2, v6

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->B:Landroid/animation/ObjectAnimator;

    .line 6185
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->B:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$6;-><init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6192
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->B:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 71
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;I)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;
    .param p1, "x1"    # I

    .prologue
    .line 71
    .line 6196
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->w:Lcom/alibaba/android/dingtalkim/views/ScrollableViewPager;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/views/ScrollableViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 6197
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 6198
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6199
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 6200
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->w:Lcom/alibaba/android/dingtalkim/views/ScrollableViewPager;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkim/views/ScrollableViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->m:Landroid/view/View;

    return-object p1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->r:Landroid/widget/TextView;

    return-object p1
.end method

.method private c()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->z:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 368
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->k:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 369
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->d()V

    .line 370
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;I)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;
    .param p1, "x1"    # I

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->a(I)V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->o:Landroid/view/View;

    return-object p1
.end method

.method private d()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 374
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->c:Lcom/alibaba/wukong/im/Message;

    invoke-static {v1}, Ldkc;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 375
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->m:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->m:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->l:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 380
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->l:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 383
    :cond_1
    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->y:I

    if-ne v1, v4, :cond_7

    .line 385
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->o:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 386
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->o:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 389
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->n:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 390
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->n:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 394
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->p:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 395
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 398
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->q:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 399
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 402
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->r:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    .line 403
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 462
    :cond_6
    :goto_0
    return-void

    .line 408
    :cond_7
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->o:Landroid/view/View;

    if-eqz v1, :cond_8

    .line 409
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->o:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 412
    :cond_8
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->n:Landroid/view/View;

    if-eqz v1, :cond_9

    .line 413
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->n:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 417
    :cond_9
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->z:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v0

    .line 418
    .local v0, "selectedCount":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->r:Landroid/widget/TextView;

    if-eqz v1, :cond_a

    .line 419
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 422
    :cond_a
    if-gtz v0, :cond_c

    .line 423
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->r:Landroid/widget/TextView;

    sget v2, Lctk$i;->and_ding_inform_confirm:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 424
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 425
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 432
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_d

    .line 433
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->p:Landroid/widget/TextView;

    if-eqz v1, :cond_b

    .line 434
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 437
    :cond_b
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->q:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    .line 438
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 427
    :cond_c
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->r:Landroid/widget/TextView;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    sget v3, Lctk$i;->and_ding_inform_confirm:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-string/jumbo v3, "("

    aput-object v3, v2, v7

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x3

    const-string/jumbo v4, ")"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setClickable(Z)V

    .line 429
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 441
    :cond_d
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->p:Landroid/widget/TextView;

    if-eqz v1, :cond_e

    .line 442
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 445
    :cond_e
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->q:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    .line 446
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 453
    .end local v0    # "selectedCount":I
    :cond_f
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->m:Landroid/view/View;

    if-eqz v1, :cond_10

    .line 454
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->m:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 457
    :cond_10
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->l:Landroid/view/View;

    if-eqz v1, :cond_6

    .line 458
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->l:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    .prologue
    .line 71
    .line 6297
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->o:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$7;-><init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6303
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->p:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$8;-><init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6310
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->q:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$9;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$9;-><init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6317
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->r:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$10;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$10;-><init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->s:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->n:Landroid/view/View;

    return-object p1
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->s:Landroid/view/View;

    return-object p1
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->g:Landroid/view/View;

    return-object p1
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->h:Landroid/view/View;

    return-object p1
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->b()V

    return-void
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->c()V

    return-void
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Lcom/alibaba/wukong/im/Message;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->c:Lcom/alibaba/wukong/im/Message;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->z:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Landroid/widget/BaseAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->k:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->d()V

    return-void
.end method

.method static synthetic n(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    .prologue
    .line 71
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->y:I

    return v0
.end method

.method static synthetic o(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    .prologue
    .line 71
    .line 7686
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->D:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7687
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->dismissLoadingDialog()V

    .line 71
    return-void
.end method

.method static synthetic r(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->a()V

    return-void
.end method

.method static synthetic s(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->x:J

    return-wide v0
.end method

.method static synthetic t(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic u(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic v(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->j:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic w(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Landroid/widget/BaseAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->u:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic x(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->t:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x2

    .line 139
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->y:I

    if-eq v0, v1, :cond_1

    .line 140
    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->a(I)V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onBackPressed()V

    .line 145
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 115
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    sget v2, Lctk$g;->activity_new_unread_members:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->setContentView(I)V

    .line 119
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 120
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 121
    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/Message;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->c:Lcom/alibaba/wukong/im/Message;

    .line 122
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->c:Lcom/alibaba/wukong/im/Message;

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->c:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    .line 124
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 125
    invoke-static {v0}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->x:J

    .line 2151
    .end local v0    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_0
    sget v2, Lctk$f;->view_pager:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/views/ScrollableViewPager;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->w:Lcom/alibaba/android/dingtalkim/views/ScrollableViewPager;

    .line 2152
    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$e;

    invoke-direct {v2, p0, v6}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$e;-><init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;B)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->f:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$e;

    .line 2153
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->w:Lcom/alibaba/android/dingtalkim/views/ScrollableViewPager;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->f:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$e;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkim/views/ScrollableViewPager;->setAdapter(Lgl;)V

    .line 2154
    sget v2, Lctk$f;->indicator:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->v:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    .line 2155
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->v:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->w:Lcom/alibaba/android/dingtalkim/views/ScrollableViewPager;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 2156
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->v:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setCurrentItem(I)V

    .line 2157
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->v:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    sget v3, Lctk$c;->color_pager_tab_text_color:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setTextColorSeletor(I)V

    .line 2159
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->v:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2692
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->c:Lcom/alibaba/wukong/im/Message;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->c:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 3681
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->D:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 3682
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->D:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2694
    const-string/jumbo v2, "im"

    const/4 v3, 0x0

    const-string/jumbo v4, "NewMsgUnreadActivity.pullUnreadMemberList"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2695
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->c:Lcom/alibaba/wukong/im/Message;

    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$12;-><init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)V

    const-class v5, Lcom/alibaba/wukong/Callback;

    invoke-interface {v2, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/Callback;

    invoke-interface {v3, v2}, Lcom/alibaba/wukong/im/Message;->messageReceivers(Lcom/alibaba/wukong/Callback;)V

    .line 4204
    :cond_1
    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$4;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)V

    .line 4235
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 4236
    const-string/jumbo v2, "com.workapp.alias_change"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4237
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    invoke-interface {v2, v3, p0, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/app/Activity;Landroid/content/IntentFilter;)V

    .line 134
    return-void
.end method
