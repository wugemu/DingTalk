.class public final Ldql;
.super Ljava/lang/Object;
.source "BurnChatEnterManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldql$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field public b:I

.field c:Lcom/alibaba/wukong/im/ConversationListener;

.field d:Lcom/alibaba/wukong/im/ConversationListener;

.field private e:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

.field private f:Ldql$a;

.field private g:Z

.field private h:Lcom/alibaba/wukong/im/ConversationChangeListener;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ldql$a;)V
    .locals 5
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "listener"    # Ldql$a;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Ldql;->e:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 37
    iput-object p3, p0, Ldql;->f:Ldql$a;

    .line 1042
    if-eqz p2, :cond_0

    .line 1043
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1044
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    .line 1188
    if-eqz v0, :cond_1

    .line 1189
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1190
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1191
    new-instance v1, Ljava/lang/StringBuffer;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1044
    :goto_0
    iput-object v0, p0, Ldql;->a:Ljava/lang/String;

    .line 1045
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Ldql$1;

    invoke-direct {v2, p0}, Ldql$1;-><init>(Ldql;)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    iget-object v4, p0, Ldql;->e:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Ldql;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 39
    :cond_0
    return-void

    .line 1194
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method static synthetic a(Ldql;)V
    .locals 2
    .param p0, "x0"    # Ldql;

    .prologue
    .line 21
    .line 2129
    iget-boolean v0, p0, Ldql;->g:Z

    if-nez v0, :cond_0

    .line 2132
    const/4 v0, 0x0

    iput v0, p0, Ldql;->b:I

    .line 2133
    invoke-virtual {p0}, Ldql;->a()V

    .line 2134
    new-instance v0, Ldql$4;

    invoke-direct {v0, p0}, Ldql$4;-><init>(Ldql;)V

    iput-object v0, p0, Ldql;->c:Lcom/alibaba/wukong/im/ConversationListener;

    .line 2164
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v1, p0, Ldql;->c:Lcom/alibaba/wukong/im/ConversationListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->addConversationListener(Lcom/alibaba/wukong/im/ConversationListener;)V

    .line 21
    :cond_0
    return-void
.end method

.method static synthetic a(Ldql;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "x0"    # Ldql;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 21
    .line 2075
    iget-boolean v0, p0, Ldql;->g:Z

    if-nez v0, :cond_0

    .line 2078
    if-eqz p1, :cond_0

    .line 2079
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v0

    iput v0, p0, Ldql;->b:I

    .line 2080
    invoke-virtual {p0}, Ldql;->a()V

    .line 2081
    new-instance v0, Ldql$2;

    invoke-direct {v0, p0}, Ldql$2;-><init>(Ldql;)V

    iput-object v0, p0, Ldql;->h:Lcom/alibaba/wukong/im/ConversationChangeListener;

    .line 2094
    new-instance v0, Ldql$3;

    invoke-direct {v0, p0}, Ldql$3;-><init>(Ldql;)V

    iput-object v0, p0, Ldql;->d:Lcom/alibaba/wukong/im/ConversationListener;

    .line 2123
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v1, p0, Ldql;->h:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->addConversationChangeListener(Lcom/alibaba/wukong/im/ConversationChangeListener;)V

    .line 2124
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v1, p0, Ldql;->d:Lcom/alibaba/wukong/im/ConversationListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->addConversationListener(Lcom/alibaba/wukong/im/ConversationListener;)V

    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Ldql;->f:Ldql$a;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Ldql;->f:Ldql$a;

    invoke-interface {v0}, Ldql$a;->a()V

    .line 72
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldql;->g:Z

    .line 173
    iget-object v0, p0, Ldql;->h:Lcom/alibaba/wukong/im/ConversationChangeListener;

    if-eqz v0, :cond_0

    .line 174
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v1, p0, Ldql;->h:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->removeConversationChangeListener(Lcom/alibaba/wukong/im/ConversationChangeListener;)V

    .line 175
    iput-object v2, p0, Ldql;->h:Lcom/alibaba/wukong/im/ConversationChangeListener;

    .line 177
    :cond_0
    iget-object v0, p0, Ldql;->c:Lcom/alibaba/wukong/im/ConversationListener;

    if-eqz v0, :cond_1

    .line 178
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v1, p0, Ldql;->c:Lcom/alibaba/wukong/im/ConversationListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->removeConversationListener(Lcom/alibaba/wukong/im/ConversationListener;)V

    .line 179
    iput-object v2, p0, Ldql;->c:Lcom/alibaba/wukong/im/ConversationListener;

    .line 181
    :cond_1
    iget-object v0, p0, Ldql;->d:Lcom/alibaba/wukong/im/ConversationListener;

    if-eqz v0, :cond_2

    .line 182
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v1, p0, Ldql;->d:Lcom/alibaba/wukong/im/ConversationListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->removeConversationListener(Lcom/alibaba/wukong/im/ConversationListener;)V

    .line 183
    iput-object v2, p0, Ldql;->d:Lcom/alibaba/wukong/im/ConversationListener;

    .line 185
    :cond_2
    return-void
.end method
