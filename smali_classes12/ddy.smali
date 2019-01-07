.class public final Lddy;
.super Ljava/lang/Object;
.source "ChatLoadPresenter.java"

# interfaces
.implements Lddx$a;


# instance fields
.field a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field b:Lcom/alibaba/wukong/im/Conversation;

.field c:Ldqq;

.field d:Lddx$b;

.field e:I

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Landroid/os/Handler;

.field j:Landroid/content/BroadcastReceiver;

.field k:Ljava/lang/Runnable;

.field private final l:Ljava/lang/String;

.field private m:Lcom/alibaba/wukong/im/MessageListener;

.field private n:Lcom/alibaba/wukong/im/MessageChangeListener;

.field private o:Lcom/alibaba/wukong/im/ConversationListener;

.field private p:Lcom/alibaba/wukong/im/ConversationChangeListener;

.field private q:Lcom/alibaba/wukong/im/GroupNickListener;

.field private r:Lcom/alibaba/doraemon/image/ImageEventListener;

.field private s:Ldq;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lddx$b;)V
    .locals 3
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "view"    # Lddx$b;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-string/jumbo v0, "sync_status"

    iput-object v0, p0, Lddy;->l:Ljava/lang/String;

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lddy;->i:Landroid/os/Handler;

    .line 133
    new-instance v0, Lddy$1;

    invoke-direct {v0, p0}, Lddy$1;-><init>(Lddy;)V

    iput-object v0, p0, Lddy;->j:Landroid/content/BroadcastReceiver;

    .line 473
    new-instance v0, Lddy$20;

    invoke-direct {v0, p0}, Lddy$20;-><init>(Lddy;)V

    iput-object v0, p0, Lddy;->k:Ljava/lang/Runnable;

    .line 109
    iput-object p1, p0, Lddy;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 110
    iput-object p2, p0, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 111
    iput-object p3, p0, Lddy;->d:Lddx$b;

    .line 112
    iget-object v0, p0, Lddy;->d:Lddx$b;

    invoke-interface {v0, p0}, Lddx$b;->setPresenter(Lcjd;)V

    .line 2119
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2120
    const-string/jumbo v1, "com.workapp.conversation.title.CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2121
    const-string/jumbo v1, "com.workapp.CONVERSATION_ENTERPRISE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2122
    const-string/jumbo v1, "com.workapp.msg.update"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2123
    const-string/jumbo v1, "com.workapp.msg.sender.update"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2124
    const-string/jumbo v1, "com.workapp.org.sync"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2125
    const-string/jumbo v1, "com.workapp.org_employee_change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2126
    const-string/jumbo v1, "action_decrypt_msg_in_conversation"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2128
    iget-object v1, p0, Lddy;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iput-object v1, p0, Lddy;->s:Ldq;

    .line 2129
    iget-object v1, p0, Lddy;->s:Ldq;

    iget-object v2, p0, Lddy;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2130
    iget-object v1, p0, Lddy;->s:Ldq;

    iget-object v2, p0, Lddy;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2182
    new-instance v0, Lddy$12;

    invoke-direct {v0, p0}, Lddy$12;-><init>(Lddy;)V

    iput-object v0, p0, Lddy;->m:Lcom/alibaba/wukong/im/MessageListener;

    .line 2275
    const-class v0, Lcom/alibaba/wukong/im/MessageService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageService;

    iget-object v1, p0, Lddy;->m:Lcom/alibaba/wukong/im/MessageListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/MessageService;->addMessageListener(Lcom/alibaba/wukong/im/MessageListener;)V

    .line 2279
    new-instance v0, Lddy$17;

    invoke-direct {v0, p0}, Lddy$17;-><init>(Lddy;)V

    iput-object v0, p0, Lddy;->n:Lcom/alibaba/wukong/im/MessageChangeListener;

    .line 2285
    const-class v0, Lcom/alibaba/wukong/im/MessageService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageService;

    iget-object v1, p0, Lddy;->n:Lcom/alibaba/wukong/im/MessageChangeListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/MessageService;->addMessageChangeListener(Lcom/alibaba/wukong/im/MessageChangeListener;)V

    .line 2289
    new-instance v0, Lddy$18;

    invoke-direct {v0, p0}, Lddy$18;-><init>(Lddy;)V

    iput-object v0, p0, Lddy;->o:Lcom/alibaba/wukong/im/ConversationListener;

    .line 2313
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v1, p0, Lddy;->o:Lcom/alibaba/wukong/im/ConversationListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->addConversationListener(Lcom/alibaba/wukong/im/ConversationListener;)V

    .line 2360
    new-instance v0, Lddy$19;

    invoke-direct {v0, p0}, Lddy$19;-><init>(Lddy;)V

    iput-object v0, p0, Lddy;->p:Lcom/alibaba/wukong/im/ConversationChangeListener;

    .line 2470
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v1, p0, Lddy;->p:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->addConversationChangeListener(Lcom/alibaba/wukong/im/ConversationChangeListener;)V

    .line 2488
    new-instance v0, Lddy$21;

    invoke-direct {v0, p0}, Lddy$21;-><init>(Lddy;)V

    iput-object v0, p0, Lddy;->q:Lcom/alibaba/wukong/im/GroupNickListener;

    .line 2494
    const-class v0, Lcom/alibaba/wukong/im/GroupNickService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/GroupNickService;

    iget-object v1, p0, Lddy;->q:Lcom/alibaba/wukong/im/GroupNickListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/GroupNickService;->addGroupNickListener(Lcom/alibaba/wukong/im/GroupNickListener;)V

    .line 2498
    new-instance v0, Lddy$22;

    invoke-direct {v0, p0}, Lddy$22;-><init>(Lddy;)V

    iput-object v0, p0, Lddy;->r:Lcom/alibaba/doraemon/image/ImageEventListener;

    .line 2554
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lddy;->r:Lcom/alibaba/doraemon/image/ImageEventListener;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->registerEventListener(Lcom/alibaba/doraemon/image/ImageEventListener;)V

    .line 116
    return-void
.end method

.method static synthetic a(Lddy;Ldqq;)I
    .locals 4
    .param p0, "x0"    # Lddy;
    .param p1, "x1"    # Ldqq;

    .prologue
    .line 66
    .line 6127
    const/4 v0, 0x0

    .line 6128
    if-eqz p1, :cond_1

    .line 6129
    invoke-virtual {p1}, Ldqq;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 6130
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->tryToDecryptSync()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6131
    instance-of v3, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v3, :cond_0

    .line 6132
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->updateDisplayType()V

    .line 6134
    :cond_0
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 6136
    goto :goto_0

    :cond_1
    move v1, v0

    .line 66
    :cond_2
    return v1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lddy;)V
    .locals 4
    .param p0, "x0"    # Lddy;

    .prologue
    .line 66
    .line 6317
    iget-object v0, p0, Lddy;->c:Ldqq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lddy;->c:Ldqq;

    invoke-virtual {v0}, Ldqq;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lddy;->c:Ldqq;

    invoke-virtual {v0}, Ldqq;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 6318
    iget-object v0, p0, Lddy;->c:Ldqq;

    invoke-virtual {v0}, Ldqq;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lddy;->c:Ldqq;

    invoke-virtual {v1}, Ldqq;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 6319
    iget-object v1, p0, Lddy;->d:Lddx$b;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lddx$b;->b(J)V

    .line 6320
    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 6321
    iget-object v0, p0, Lddy;->d:Lddx$b;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lddx$b;->b(J)V

    goto :goto_0
.end method

.method static synthetic a(Lddy;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 1
    .param p0, "x0"    # Lddy;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 66
    .line 6482
    iput-object p1, p0, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 6483
    iget-object v0, p0, Lddy;->d:Lddx$b;

    invoke-interface {v0, p1}, Lddx$b;->a(Lcom/alibaba/wukong/im/Conversation;)V

    .line 6484
    iget-object v0, p0, Lddy;->d:Lddx$b;

    invoke-interface {v0}, Lddx$b;->j()V

    .line 66
    return-void
.end method

.method static synthetic b(Lddy;)V
    .locals 4
    .param p0, "x0"    # Lddy;

    .prologue
    .line 66
    .line 7022
    iget-object v0, p0, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_1

    .line 7023
    iget-object v0, p0, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v0

    iput v0, p0, Lddy;->e:I

    .line 7024
    iget-object v0, p0, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->resetUnreadCount()V

    .line 7025
    iget-object v0, p0, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v1

    .line 7026
    if-eqz v1, :cond_0

    .line 7027
    const-string/jumbo v0, "anchorType"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lddy;->f:Ljava/lang/String;

    .line 7028
    const-string/jumbo v0, "anchorMessageId"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lddy;->g:Ljava/lang/String;

    .line 7029
    iget-object v0, p0, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Lddq;->j(Lcom/alibaba/wukong/im/Conversation;)V

    .line 7031
    :cond_0
    iget-object v0, p0, Lddy;->d:Lddx$b;

    iget v1, p0, Lddy;->e:I

    invoke-interface {v0, v1}, Lddx$b;->c(I)V

    .line 7032
    iget-object v0, p0, Lddy;->d:Lddx$b;

    iget v1, p0, Lddy;->e:I

    iget-object v2, p0, Lddy;->f:Ljava/lang/String;

    iget-object v3, p0, Lddy;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lddx$b;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 756
    iget-object v0, p0, Lddy;->c:Ldqq;

    new-instance v1, Lddy$5;

    invoke-direct {v1, p0}, Lddy$5;-><init>(Lddy;)V

    const/4 v2, 0x1

    const-string/jumbo v3, "refresh"

    invoke-virtual {v0, v1, v2, v3}, Ldqq;->a(Ldqq$d;ZLjava/lang/Object;)V

    .line 790
    return-void
.end method

.method public final a(II)V
    .locals 8
    .param p1, "bottomPosition"    # I
    .param p2, "topPosition"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1143
    iget-object v1, p0, Lddy;->c:Ldqq;

    if-eqz v1, :cond_0

    .line 1145
    iget-object v1, p0, Lddy;->c:Ldqq;

    invoke-virtual {v1}, Ldqq;->a()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lddy;->c:Ldqq;

    invoke-virtual {v2}, Ldqq;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 1148
    .local v0, "bottomMessage":Lcom/alibaba/wukong/im/Message;
    iget v1, p0, Lddy;->e:I

    add-int/lit8 v1, v1, -0x1

    neg-int v2, v1

    sget-object v3, Lcom/alibaba/wukong/im/Message$CreatorType;->SELF:Lcom/alibaba/wukong/im/Message$CreatorType;

    const/4 v4, 0x1

    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Lddy$14;

    invoke-direct {v5, p0, p1, p2, v0}, Lddy$14;-><init>(Lddy;IILcom/alibaba/wukong/im/Message;)V

    const-class v6, Lcom/alibaba/wukong/Callback;

    iget-object v7, p0, Lddy;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v1, v5, v6, v7}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v2, v3, v4, v1}, Lcom/alibaba/wukong/im/Message;->getOffsetMessage(ILcom/alibaba/wukong/im/Message$CreatorType;ZLcom/alibaba/wukong/Callback;)V

    .line 1194
    .end local v0    # "bottomMessage":Lcom/alibaba/wukong/im/Message;
    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 7
    .param p1, "senderId"    # J

    .prologue
    .line 664
    iget-object v0, p0, Lddy;->c:Ldqq;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lddy;->c:Ldqq;

    new-instance v1, Lddy$3;

    invoke-direct {v1, p0}, Lddy$3;-><init>(Lddy;)V

    const/4 v4, 0x0

    const-string/jumbo v5, "load_pre"

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Ldqq;->b(Ldqq$d;JZLjava/lang/Object;)V

    .line 711
    :cond_0
    return-void
.end method

.method public final a(JJZ)V
    .locals 11
    .param p1, "anchorId"    # J
    .param p3, "senderId"    # J
    .param p5, "realRefresh"    # Z

    .prologue
    const/4 v4, 0x1

    .line 853
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 854
    .local v7, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v0, "chat_load"

    const-string/jumbo v1, "load_message"

    invoke-interface {v7, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    iget-object v0, p0, Lddy;->c:Ldqq;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_2

    .line 859
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    if-eqz p5, :cond_4

    .line 860
    :cond_0
    iget-object v0, p0, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Lddq;->f(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p5, :cond_3

    .line 861
    :cond_1
    iget-object v0, p0, Lddy;->c:Ldqq;

    new-instance v1, Lddy$7;

    invoke-direct {v1, p0, v7}, Lddy$7;-><init>(Lddy;Lcom/alibaba/doraemon/statistics/Statistics;)V

    const-string/jumbo v5, "refresh"

    move-wide v2, p3

    invoke-virtual/range {v0 .. v5}, Ldqq;->a(Ldqq$d;JZLjava/lang/Object;)V

    .line 973
    :cond_2
    :goto_0
    return-void

    .line 930
    :cond_3
    iget-object v0, p0, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v8

    .line 931
    .local v8, "unreadCount":I
    iget-object v0, p0, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->resetUnreadCount()V

    .line 932
    iget-object v0, p0, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v6

    .line 933
    .local v6, "lastMsg":Lcom/alibaba/wukong/im/Message;
    add-int/lit8 v0, v8, -0x1

    neg-int v1, v0

    sget-object v2, Lcom/alibaba/wukong/im/Message$CreatorType;->SELF:Lcom/alibaba/wukong/im/Message$CreatorType;

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lddy$8;

    invoke-direct {v3, p0, v8}, Lddy$8;-><init>(Lddy;I)V

    const-class v5, Lcom/alibaba/wukong/Callback;

    iget-object v9, p0, Lddy;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v0, v3, v5, v9}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {v6, v1, v2, v4, v0}, Lcom/alibaba/wukong/im/Message;->getOffsetMessage(ILcom/alibaba/wukong/im/Message$CreatorType;ZLcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 951
    .end local v6    # "lastMsg":Lcom/alibaba/wukong/im/Message;
    .end local v8    # "unreadCount":I
    :cond_4
    iget-object v1, p0, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lddy$9;

    invoke-direct {v2, p0}, Lddy$9;-><init>(Lddy;)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    iget-object v4, p0, Lddy;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, p1, p2, v0}, Lcom/alibaba/wukong/im/Conversation;->getMessage(JLcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 5
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1082
    if-eqz p1, :cond_1

    .line 1083
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1084
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v0

    invoke-virtual {v0}, Ldho;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1085
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1086
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "sync_status"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1087
    :cond_0
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    .line 1088
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    new-instance v2, Lddy$13;

    invoke-direct {v2, p0}, Lddy$13;-><init>(Lddy;)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    iget-object v4, p0, Lddy;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    .line 1115
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    .line 1087
    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/ConversationService;->syncConversationProperties(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 1117
    :cond_1
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;)V
    .locals 5
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 794
    iget-object v1, p0, Lddy;->c:Ldqq;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 798
    :cond_1
    iget-object v1, p0, Lddy;->c:Ldqq;

    new-instance v2, Lddy$6;

    invoke-direct {v2, p0}, Lddy$6;-><init>(Lddy;)V

    const/4 v3, 0x1

    const-string/jumbo v4, "jump"

    invoke-virtual {v1, p1, v2, v3, v4}, Ldqq;->a(Lcom/alibaba/wukong/im/Message;Ldqq$d;ZLjava/lang/Object;)I

    move-result v0

    .line 846
    .local v0, "result":I
    if-ltz v0, :cond_0

    .line 847
    iget-object v1, p0, Lddy;->d:Lddx$b;

    invoke-interface {v1, v0}, Lddx$b;->a(I)V

    goto :goto_0
.end method

.method public final a(Ldnf;)V
    .locals 4
    .param p1, "mdPreparser"    # Ldnf;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 560
    iget-object v0, p0, Lddy;->c:Ldqq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lddy;->c:Ldqq;

    .line 3325
    iget-object v0, v0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 560
    if-eqz v0, :cond_0

    iget-object v0, p0, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lddy;->c:Ldqq;

    .line 4325
    iget-object v0, v0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 561
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 562
    iget-object v0, p0, Lddy;->c:Ldqq;

    invoke-virtual {v0}, Ldqq;->b()V

    .line 563
    const/4 v0, 0x0

    iput-object v0, p0, Lddy;->c:Ldqq;

    .line 567
    :cond_0
    iget-object v0, p0, Lddy;->c:Ldqq;

    if-nez v0, :cond_2

    .line 568
    new-instance v0, Ldqq;

    iget-object v1, p0, Lddy;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    new-instance v3, Lddy$23;

    invoke-direct {v3, p0, p1}, Lddy$23;-><init>(Lddy;Ldnf;)V

    invoke-direct {v0, v1, v2, v3}, Ldqq;-><init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ldqq$e;)V

    iput-object v0, p0, Lddy;->c:Ldqq;

    .line 595
    iget-object v0, p0, Lddy;->c:Ldqq;

    new-instance v1, Lddy$2;

    invoke-direct {v1, p0}, Lddy$2;-><init>(Lddy;)V

    invoke-virtual {v0, v1}, Ldqq;->a(Ldqq$d;)V

    .line 635
    :cond_1
    :goto_0
    iget-object v0, p0, Lddy;->d:Lddx$b;

    iget-object v1, p0, Lddy;->c:Ldqq;

    invoke-interface {v0, v1}, Lddx$b;->a(Ldqq;)V

    .line 636
    return-void

    .line 632
    :cond_2
    iget-object v0, p0, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lddy;->c:Ldqq;

    .line 5325
    iget-object v0, v0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 632
    iget-object v1, p0, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eq v0, v1, :cond_1

    .line 633
    iget-object v0, p0, Lddy;->c:Ldqq;

    iget-object v1, p0, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v0, v1}, Ldqq;->a(Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Lcom/alibaba/wukong/im/MessageListener$DataType;)V
    .locals 1
    .param p2, "dataType"    # Lcom/alibaba/wukong/im/MessageListener$DataType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Lcom/alibaba/wukong/im/MessageListener$DataType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1121
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    iget-object v0, p0, Lddy;->m:Lcom/alibaba/wukong/im/MessageListener;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1122
    iget-object v0, p0, Lddy;->m:Lcom/alibaba/wukong/im/MessageListener;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/im/MessageListener;->onAdded(Ljava/util/List;Lcom/alibaba/wukong/im/MessageListener$DataType;)V

    .line 1124
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1248
    iget-object v1, p0, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lddy;->c:Ldqq;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lddy;->c:Ldqq;

    invoke-virtual {v1}, Ldqq;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lddy;->c:Ldqq;

    invoke-virtual {v1}, Ldqq;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1249
    new-instance v0, Lddy$16;

    invoke-direct {v0, p0}, Lddy$16;-><init>(Lddy;)V

    .line 1287
    .local v0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v1, p0, Lddy;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v1, :cond_0

    .line 1288
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcom/alibaba/wukong/Callback;

    iget-object v3, p0, Lddy;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 1291
    .restart local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    :cond_0
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v2, p0, Lddy;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 1293
    .end local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    :cond_1
    return-void
.end method

.method public final b(J)V
    .locals 7
    .param p1, "senderId"    # J

    .prologue
    .line 715
    iget-object v0, p0, Lddy;->c:Ldqq;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lddy;->c:Ldqq;

    new-instance v1, Lddy$4;

    invoke-direct {v1, p0}, Lddy$4;-><init>(Lddy;)V

    const/4 v4, 0x0

    const-string/jumbo v5, "load_next"

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Ldqq;->c(Ldqq$d;JZLjava/lang/Object;)V

    .line 752
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 1298
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 1303
    return-void
.end method

.method public final i()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1307
    iget-object v0, p0, Lddy;->j:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lddy;->s:Ldq;

    if-eqz v0, :cond_0

    .line 1308
    iget-object v0, p0, Lddy;->s:Ldq;

    iget-object v1, p0, Lddy;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 1311
    :cond_0
    iget-object v0, p0, Lddy;->m:Lcom/alibaba/wukong/im/MessageListener;

    if-eqz v0, :cond_1

    .line 1312
    const-class v0, Lcom/alibaba/wukong/im/MessageService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageService;

    iget-object v1, p0, Lddy;->m:Lcom/alibaba/wukong/im/MessageListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/MessageService;->removeMessageListener(Lcom/alibaba/wukong/im/MessageListener;)V

    .line 1314
    :cond_1
    iget-object v0, p0, Lddy;->o:Lcom/alibaba/wukong/im/ConversationListener;

    if-eqz v0, :cond_2

    .line 1315
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v1, p0, Lddy;->o:Lcom/alibaba/wukong/im/ConversationListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->removeConversationListener(Lcom/alibaba/wukong/im/ConversationListener;)V

    .line 1317
    :cond_2
    iget-object v0, p0, Lddy;->p:Lcom/alibaba/wukong/im/ConversationChangeListener;

    if-eqz v0, :cond_3

    .line 1318
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v1, p0, Lddy;->p:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->removeConversationChangeListener(Lcom/alibaba/wukong/im/ConversationChangeListener;)V

    .line 1320
    :cond_3
    iget-object v0, p0, Lddy;->q:Lcom/alibaba/wukong/im/GroupNickListener;

    if-eqz v0, :cond_4

    .line 1321
    const-class v0, Lcom/alibaba/wukong/im/GroupNickService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/GroupNickService;

    iget-object v1, p0, Lddy;->q:Lcom/alibaba/wukong/im/GroupNickListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/GroupNickService;->removeGroupNickListener(Lcom/alibaba/wukong/im/GroupNickListener;)V

    .line 1323
    :cond_4
    iget-object v0, p0, Lddy;->n:Lcom/alibaba/wukong/im/MessageChangeListener;

    if-eqz v0, :cond_5

    .line 1324
    const-class v0, Lcom/alibaba/wukong/im/MessageService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageService;

    iget-object v1, p0, Lddy;->n:Lcom/alibaba/wukong/im/MessageChangeListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/MessageService;->removeMessageChangeListener(Lcom/alibaba/wukong/im/MessageChangeListener;)V

    .line 1327
    :cond_5
    iget-object v0, p0, Lddy;->r:Lcom/alibaba/doraemon/image/ImageEventListener;

    if-eqz v0, :cond_6

    .line 1328
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lddy;->r:Lcom/alibaba/doraemon/image/ImageEventListener;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->unregisterEventListener(Lcom/alibaba/doraemon/image/ImageEventListener;)V

    .line 1331
    :cond_6
    iget-object v0, p0, Lddy;->i:Landroid/os/Handler;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lddy;->k:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 1332
    iget-object v0, p0, Lddy;->i:Landroid/os/Handler;

    iget-object v1, p0, Lddy;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1334
    :cond_7
    iput-object v2, p0, Lddy;->i:Landroid/os/Handler;

    .line 1335
    iput-object v2, p0, Lddy;->k:Ljava/lang/Runnable;

    .line 1336
    return-void
.end method
