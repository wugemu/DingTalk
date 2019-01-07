.class public Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "MsgUnreadActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$a;,
        Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$b;,
        Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$c;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field a:Lcma;

.field b:Lcma;

.field private final d:I

.field private e:Landroid/widget/ScrollView;

.field private f:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

.field private g:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Lcwh;

.field private j:Lcwh;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/view/View;

.field private n:Lcom/alibaba/wukong/im/Message;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 64
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->d:I

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->n:Lcom/alibaba/wukong/im/Message;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->o:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->p:Ljava/util/List;

    .line 80
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$c;

    invoke-direct {v1, p0, v3}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$c;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;B)V

    const-class v2, Lcma;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->a:Lcma;

    .line 81
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$b;

    invoke-direct {v1, p0, v3}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$b;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;B)V

    const-class v2, Lcma;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->b:Lcma;

    .line 430
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->o:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 61
    .line 2414
    if-eqz p1, :cond_4

    .line 2415
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_unread_user_ding"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 2417
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2418
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->o:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2419
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 2420
    if-eqz v0, :cond_0

    .line 2421
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2425
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->n:Lcom/alibaba/wukong/im/Message;

    .line 3258
    new-instance v2, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    invoke-direct {v2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;-><init>()V

    .line 3259
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    move-result-object v3

    .line 3260
    invoke-virtual {v3, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->c(Ljava/util/List;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    move-result-object v1

    const/4 v3, 0x1

    .line 3261
    invoke-virtual {v1, v3}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->c(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    move-result-object v1

    const-string/jumbo v3, "im"

    .line 3262
    invoke-virtual {v1, v3}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->i(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 3264
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3265
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->h(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 3266
    invoke-static {p1}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->d(J)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 3268
    :cond_2
    if-eqz v0, :cond_3

    .line 3269
    invoke-virtual {v2, v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 3270
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->c(J)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 3922
    :cond_3
    iget-object v0, v2, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 3217
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;)V

    .line 2426
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->finish()V

    .line 61
    :cond_4
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)Lcwh;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->i:Lcwh;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->p:Ljava/util/List;

    return-object p1
.end method

.method private b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 156
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->e:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 157
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->m:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->n:Lcom/alibaba/wukong/im/Message;

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->n:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 159
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 161
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v1, "unread_message"

    const-string/jumbo v2, "message_receivers"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->n:Lcom/alibaba/wukong/im/Message;

    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;Lcom/alibaba/doraemon/statistics/Statistics;)V

    const-class v4, Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    invoke-interface {v2, v1}, Lcom/alibaba/wukong/im/Message;->messageReceivers(Lcom/alibaba/wukong/Callback;)V

    .line 245
    .end local v0    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)Lcwh;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->j:Lcwh;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->h:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->e:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->m:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->o:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->p:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)Lcom/alibaba/wukong/im/Message;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->n:Lcom/alibaba/wukong/im/Message;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    sget v2, Lctk$g;->activity_unread_members:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->setContentView(I)V

    .line 88
    const-string/jumbo v2, "STATISTICS"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 90
    .local v1, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v2, "unread_message"

    const-string/jumbo v3, "to_msg_unread_activity"

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string/jumbo v2, "unread_message"

    const-string/jumbo v3, "msg_unread_activity_onCreate"

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget v2, Lctk$f;->tv_empty:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->m:Landroid/view/View;

    .line 94
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->m:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->m:Landroid/view/View;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    sget v2, Lctk$f;->scrollview:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->e:Landroid/widget/ScrollView;

    .line 102
    sget v2, Lctk$f;->ll_unread_loading:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->h:Landroid/widget/LinearLayout;

    .line 103
    sget v2, Lctk$f;->grid_unconfirmed:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    .line 104
    sget v2, Lctk$f;->grid_received:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    .line 105
    sget v2, Lctk$f;->tv_read_count:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->l:Landroid/widget/TextView;

    .line 106
    sget v2, Lctk$f;->tv_unread_count:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->k:Landroid/widget/TextView;

    .line 108
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 109
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 110
    const-string/jumbo v2, "message"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/Message;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->n:Lcom/alibaba/wukong/im/Message;

    .line 112
    :cond_0
    new-instance v2, Lcwh;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->n:Lcom/alibaba/wukong/im/Message;

    invoke-direct {v2, p0, v3}, Lcwh;-><init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->i:Lcwh;

    .line 113
    new-instance v2, Lcwh;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->n:Lcom/alibaba/wukong/im/Message;

    invoke-direct {v2, p0, v3}, Lcwh;-><init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->j:Lcwh;

    .line 114
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->i:Lcwh;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->j:Lcwh;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 117
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 130
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$3;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 143
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->b()V

    .line 144
    const-string/jumbo v2, "unread_message"

    const-string/jumbo v3, "msg_unread_activity_onCreate"

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$6;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$6;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)V

    .line 1510
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 1511
    const-string/jumbo v2, "com.workapp.alias_change"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1512
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    invoke-interface {v2, v3, p0, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/app/Activity;Landroid/content/IntentFilter;)V

    .line 146
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 364
    sget v3, Lctk$i;->experience:I

    invoke-interface {p1, v5, v6, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 365
    .local v1, "guideItem":Landroid/view/MenuItem;
    sget v3, Lctk$e;->ic_actbar_guide:I

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 366
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 368
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->n:Lcom/alibaba/wukong/im/Message;

    if-eqz v3, :cond_0

    .line 369
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->n:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    .line 371
    .local v0, "content":Lcom/alibaba/wukong/im/MessageContent;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->n:Lcom/alibaba/wukong/im/Message;

    invoke-static {v3}, Ldkc;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 372
    const/4 v3, 0x1

    sget v4, Lctk$i;->ding_txt_cancel_remind:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 2395
    .local v2, "menuItem":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lctk$g;->actbar_button:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2396
    sget v3, Lctk$f;->btn_ok:I

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 2397
    sget v5, Lctk$i;->ding_do_a_ding:I

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(I)V

    .line 2398
    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$5;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 374
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 378
    .end local v0    # "content":Lcom/alibaba/wukong/im/MessageContent;
    .end local v2    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    return v3
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 150
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onDestroy()V

    .line 151
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 383
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 384
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v2

    const-class v3, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    invoke-virtual {v2, v3}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    .line 385
    .local v1, "lightAppRuntimeReverseInterface":Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 386
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "url"

    const-string/jumbo v3, "https://tms.dingtalk.com/markets/dingtalk/miniappding?lwfrom=20150826204224736&type=ding"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-virtual {v1, p0, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 389
    const/4 v2, 0x0

    .line 391
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "lightAppRuntimeReverseInterface":Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method
