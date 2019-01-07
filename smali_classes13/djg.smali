.class public final Ldjg;
.super Lcom/alibaba/wukong/im/ConversationChangeListener;
.source "ConversationChangeMaid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldjg$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

.field private b:Lcom/alibaba/wukong/im/ConversationChangeListener;

.field private c:Landroid/app/Activity;

.field private d:Z

.field private e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Landroid/widget/AbsListView;

.field private g:Ldjg$a;

.field private h:J

.field private i:Landroid/os/Handler;

.field private j:Landroid/content/BroadcastReceiver;

.field private k:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;


# direct methods
.method public constructor <init>(Lcom/alibaba/wukong/im/ConversationChangeListener;Landroid/app/Activity;Landroid/widget/AbsListView;Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 4
    .param p1, "delegate"    # Lcom/alibaba/wukong/im/ConversationChangeListener;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "listView"    # Landroid/widget/AbsListView;
    .param p4, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/alibaba/wukong/im/ConversationChangeListener;-><init>()V

    .line 55
    const/4 v1, 0x0

    iput-boolean v1, p0, Ldjg;->d:Z

    .line 56
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Ldjg;->e:Landroid/util/SparseArray;

    .line 59
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ldjg;->h:J

    .line 62
    new-instance v1, Ldjg$1;

    invoke-direct {v1, p0}, Ldjg$1;-><init>(Ldjg;)V

    iput-object v1, p0, Ldjg;->j:Landroid/content/BroadcastReceiver;

    .line 74
    new-instance v1, Ldjg$2;

    invoke-direct {v1, p0}, Ldjg$2;-><init>(Ldjg;)V

    iput-object v1, p0, Ldjg;->k:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;

    .line 126
    iput-object p1, p0, Ldjg;->b:Lcom/alibaba/wukong/im/ConversationChangeListener;

    .line 127
    iput-object p2, p0, Ldjg;->c:Landroid/app/Activity;

    .line 128
    const-string/jumbo v1, "LIFECYCLE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    iput-object v1, p0, Ldjg;->a:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 129
    iget-object v1, p0, Ldjg;->a:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    iget-object v2, p0, Ldjg;->k:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->registerActivityLifecycleCallbacks(Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;)V

    .line 130
    iput-object p3, p0, Ldjg;->f:Landroid/widget/AbsListView;

    .line 131
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Ldjg;->i:Landroid/os/Handler;

    .line 132
    new-instance v1, Ldjg$a;

    invoke-direct {v1, p0}, Ldjg$a;-><init>(Ldjg;)V

    iput-object v1, p0, Ldjg;->g:Ldjg$a;

    .line 133
    iget-object v1, p0, Ldjg;->g:Ldjg$a;

    invoke-static {p3, v1, p4}, Ldju;->a(Landroid/widget/AbsListView;Ldju$a;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 136
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 137
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.alibaba.wukong.auth.LOGOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string/jumbo v1, "com.alibaba.wukong.auth.KICKOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    invoke-static {p2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Ldjg;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 140
    return-void
.end method

.method static synthetic a(Ldjg;J)J
    .locals 1
    .param p0, "x0"    # Ldjg;
    .param p1, "x1"    # J

    .prologue
    .line 33
    iput-wide p1, p0, Ldjg;->h:J

    return-wide p1
.end method

.method static synthetic a(Ldjg;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Ldjg;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Ldjg;->c:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Ldjg;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Ldjg;

    .prologue
    .line 33
    iget-object v0, p0, Ldjg;->e:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic a(Ldjg;Landroid/widget/AbsListView;)Landroid/widget/AbsListView;
    .locals 1
    .param p0, "x0"    # Ldjg;
    .param p1, "x1"    # Landroid/widget/AbsListView;

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Ldjg;->f:Landroid/widget/AbsListView;

    return-object v0
.end method

.method private a(ILjava/util/List;)V
    .locals 5
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 224
    .local p2, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v3, p0, Ldjg;->e:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 225
    .local v1, "holdConversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    if-nez v1, :cond_1

    .line 226
    iget-object v3, p0, Ldjg;->e:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 238
    :cond_0
    return-void

    .line 229
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 230
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 231
    .local v2, "index":I
    if-gez v2, :cond_2

    .line 232
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 234
    :cond_2
    invoke-interface {v1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic a(Ldjg;Z)Z
    .locals 0
    .param p0, "x0"    # Ldjg;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Ldjg;->d:Z

    return p1
.end method

.method static synthetic b(Ldjg;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Ldjg;

    .prologue
    .line 33
    iget-object v0, p0, Ldjg;->c:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Ldjg;)V
    .locals 4
    .param p0, "x0"    # Ldjg;

    .prologue
    .line 33
    .line 2171
    iget-object v0, p0, Ldjg;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 2172
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 2173
    iget-object v0, p0, Ldjg;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 2174
    iget-object v0, p0, Ldjg;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2175
    iget-object v3, p0, Ldjg;->e:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 2172
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2177
    :pswitch_1
    iget-object v3, p0, Ldjg;->b:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-virtual {v3, v0}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onTitleChanged(Ljava/util/List;)V

    goto :goto_1

    .line 2180
    :pswitch_2
    iget-object v3, p0, Ldjg;->b:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-virtual {v3, v0}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onIconChanged(Ljava/util/List;)V

    goto :goto_1

    .line 2183
    :pswitch_3
    iget-object v3, p0, Ldjg;->b:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-virtual {v3, v0}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onStatusChanged(Ljava/util/List;)V

    goto :goto_1

    .line 2186
    :pswitch_4
    iget-object v3, p0, Ldjg;->b:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-virtual {v3, v0}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onLatestMessageChanged(Ljava/util/List;)V

    goto :goto_1

    .line 2189
    :pswitch_5
    iget-object v3, p0, Ldjg;->b:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-virtual {v3, v0}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onUnreadCountChanged(Ljava/util/List;)V

    goto :goto_1

    .line 2192
    :pswitch_6
    iget-object v3, p0, Ldjg;->b:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-virtual {v3, v0}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onDraftChanged(Ljava/util/List;)V

    goto :goto_1

    .line 2195
    :pswitch_7
    iget-object v3, p0, Ldjg;->b:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-virtual {v3, v0}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onTagChanged(Ljava/util/List;)V

    goto :goto_1

    .line 2198
    :pswitch_8
    iget-object v3, p0, Ldjg;->b:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-virtual {v3, v0}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onExtensionChanged(Ljava/util/List;)V

    goto :goto_1

    .line 2201
    :pswitch_9
    iget-object v3, p0, Ldjg;->b:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-virtual {v3, v0}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onAtMeStatusChanged(Ljava/util/List;)V

    goto :goto_1

    .line 2204
    :pswitch_a
    iget-object v3, p0, Ldjg;->b:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-virtual {v3, v0}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onLocalExtrasChanged(Ljava/util/List;)V

    goto :goto_1

    .line 2207
    :pswitch_b
    iget-object v3, p0, Ldjg;->b:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-virtual {v3, v0}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onNotificationChanged(Ljava/util/List;)V

    goto :goto_1

    .line 2210
    :pswitch_c
    iget-object v3, p0, Ldjg;->b:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-virtual {v3, v0}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onTopChanged(Ljava/util/List;)V

    goto :goto_1

    .line 2213
    :pswitch_d
    iget-object v3, p0, Ldjg;->b:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-virtual {v3, v0}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onMemberCountChanged(Ljava/util/List;)V

    goto :goto_1

    .line 2216
    :pswitch_e
    iget-object v3, p0, Ldjg;->b:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-virtual {v3, v0}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onEntrancedIdChanged(Ljava/util/List;)V

    goto :goto_1

    .line 2220
    :cond_0
    iget-object v0, p0, Ldjg;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 33
    return-void

    .line 2175
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method

.method static synthetic d(Ldjg;)Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    .locals 1
    .param p0, "x0"    # Ldjg;

    .prologue
    .line 33
    iget-object v0, p0, Ldjg;->a:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    return-object v0
.end method

.method static synthetic e(Ldjg;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Ldjg;

    .prologue
    .line 33
    iget-object v0, p0, Ldjg;->j:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic f(Ldjg;)J
    .locals 2
    .param p0, "x0"    # Ldjg;

    .prologue
    .line 33
    iget-wide v0, p0, Ldjg;->h:J

    return-wide v0
.end method

.method static synthetic g(Ldjg;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Ldjg;

    .prologue
    .line 33
    iget-object v0, p0, Ldjg;->i:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final onAtMeStatusChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 343
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-boolean v0, p0, Ldjg;->d:Z

    if-eqz v0, :cond_0

    .line 344
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Ldjg;->a(ILjava/util/List;)V

    .line 348
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Ldjg;->b:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-virtual {v0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onAtMeStatusChanged(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onDraftChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-boolean v0, p0, Ldjg;->d:Z

    if-eqz v0, :cond_0

    .line 317
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Ldjg;->a(ILjava/util/List;)V

    .line 321
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Ldjg;->b:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-virtual {v0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onDraftChanged(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onEntrancedIdChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 406
    .local p1, "conversationList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-boolean v0, p0, Ldjg;->d:Z

    if-eqz v0, :cond_0

    .line 407
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Ldjg;->a(ILjava/util/List;)V

    .line 411
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Ldjg;->b:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-virtual {v0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onEntrancedIdChanged(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onExtensionChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 334
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-boolean v0, p0, Ldjg;->d:Z

    if-eqz v0, :cond_0

    .line 335
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Ldjg;->a(ILjava/util/List;)V

    .line 339
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Ldjg;->b:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-virtual {v0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onExtensionChanged(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onGroupIconChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 388
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-boolean v0, p0, Ldjg;->d:Z

    if-eqz v0, :cond_0

    .line 389
    const/16 v0, 0xf

    invoke-direct {p0, v0, p1}, Ldjg;->a(ILjava/util/List;)V

    .line 393
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Ldjg;->b:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-virtual {v0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onGroupIconChanged(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onIconChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-boolean v0, p0, Ldjg;->d:Z

    if-eqz v0, :cond_0

    .line 278
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Ldjg;->a(ILjava/util/List;)V

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Ldjg;->b:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-virtual {v0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onIconChanged(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onLatestMessageChanged(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    const/4 v6, 0x1

    .line 295
    iget-boolean v0, p0, Ldjg;->d:Z

    if-eqz v0, :cond_0

    .line 296
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Ldjg;->a(ILjava/util/List;)V

    .line 303
    :goto_0
    return-void

    .line 1244
    :cond_0
    if-eqz p1, :cond_3

    .line 1245
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 1247
    if-eqz v0, :cond_1

    .line 1250
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v2

    .line 1251
    if-eqz v2, :cond_1

    .line 1256
    :try_start_0
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->recallStatus()I

    move-result v3

    if-eq v3, v6, :cond_2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->shieldStatus()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 1257
    :cond_2
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v3

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1259
    :catch_0
    move-exception v0

    .line 1260
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 301
    :cond_3
    iget-object v0, p0, Ldjg;->b:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-virtual {v0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onLatestMessageChanged(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onLocalExtrasChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-boolean v0, p0, Ldjg;->d:Z

    if-eqz v0, :cond_0

    .line 353
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Ldjg;->a(ILjava/util/List;)V

    .line 357
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Ldjg;->b:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-virtual {v0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onLocalExtrasChanged(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onMemberCountChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-boolean v0, p0, Ldjg;->d:Z

    if-eqz v0, :cond_0

    .line 380
    const/16 v0, 0xd

    invoke-direct {p0, v0, p1}, Ldjg;->a(ILjava/util/List;)V

    .line 384
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Ldjg;->b:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-virtual {v0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onMemberCountChanged(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onNotificationChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 361
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-boolean v0, p0, Ldjg;->d:Z

    if-eqz v0, :cond_0

    .line 362
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Ldjg;->a(ILjava/util/List;)V

    .line 366
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Ldjg;->b:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-virtual {v0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onNotificationChanged(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onShowHistoryTypeChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 397
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-boolean v0, p0, Ldjg;->d:Z

    if-eqz v0, :cond_0

    .line 398
    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Ldjg;->a(ILjava/util/List;)V

    .line 402
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Ldjg;->b:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-virtual {v0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onShowHistoryTypeChanged(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onStatusChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-boolean v0, p0, Ldjg;->d:Z

    if-eqz v0, :cond_0

    .line 287
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Ldjg;->a(ILjava/util/List;)V

    .line 291
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Ldjg;->b:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-virtual {v0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onStatusChanged(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onTagChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 325
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-boolean v0, p0, Ldjg;->d:Z

    if-eqz v0, :cond_0

    .line 326
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Ldjg;->a(ILjava/util/List;)V

    .line 330
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Ldjg;->b:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-virtual {v0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onTagChanged(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onTitleChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-boolean v0, p0, Ldjg;->d:Z

    if-eqz v0, :cond_0

    .line 269
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Ldjg;->a(ILjava/util/List;)V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Ldjg;->b:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-virtual {v0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onTitleChanged(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onTopChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 370
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-boolean v0, p0, Ldjg;->d:Z

    if-eqz v0, :cond_0

    .line 371
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Ldjg;->a(ILjava/util/List;)V

    .line 375
    :goto_0
    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Ldjg;->b:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-virtual {v0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onTopChanged(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onUnreadCountChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-boolean v0, p0, Ldjg;->d:Z

    if-eqz v0, :cond_0

    .line 308
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Ldjg;->a(ILjava/util/List;)V

    .line 312
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Ldjg;->b:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-virtual {v0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onUnreadCountChanged(Ljava/util/List;)V

    goto :goto_0
.end method
