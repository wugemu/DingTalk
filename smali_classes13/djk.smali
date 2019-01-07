.class public final Ldjk;
.super Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;
.source "ConversationReceiver.java"

# interfaces
.implements Lcom/alibaba/wukong/im/ConversationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldjk$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

.field private b:Lcom/alibaba/wukong/im/ConversationListener;

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

.field private g:Ldjk$a;

.field private h:J

.field private i:Landroid/os/Handler;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/ConversationListener;Landroid/widget/AbsListView;Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "delegatedListener"    # Lcom/alibaba/wukong/im/ConversationListener;
    .param p3, "listView"    # Landroid/widget/AbsListView;
    .param p4, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldjk;->d:Z

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ldjk;->e:Landroid/util/SparseArray;

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ldjk;->h:J

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldjk;->j:Z

    .line 43
    iput-object p2, p0, Ldjk;->b:Lcom/alibaba/wukong/im/ConversationListener;

    .line 44
    iput-object p3, p0, Ldjk;->f:Landroid/widget/AbsListView;

    .line 45
    iput-object p1, p0, Ldjk;->c:Landroid/app/Activity;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ldjk;->i:Landroid/os/Handler;

    .line 47
    new-instance v0, Ldjk$a;

    invoke-direct {v0, p0}, Ldjk$a;-><init>(Ldjk;)V

    iput-object v0, p0, Ldjk;->g:Ldjk$a;

    .line 48
    iget-object v0, p0, Ldjk;->g:Ldjk$a;

    invoke-static {p3, v0, p4}, Ldju;->a(Landroid/widget/AbsListView;Ldju$a;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 49
    const-string/jumbo v0, "LIFECYCLE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    iput-object v0, p0, Ldjk;->a:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 50
    iget-object v0, p0, Ldjk;->a:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->registerActivityLifecycleCallbacks(Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;)V

    .line 51
    return-void
.end method

.method static synthetic a(Ldjk;J)J
    .locals 1
    .param p0, "x0"    # Ldjk;
    .param p1, "x1"    # J

    .prologue
    .line 27
    iput-wide p1, p0, Ldjk;->h:J

    return-wide p1
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 155
    iget-object v3, p0, Ldjk;->e:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 156
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 157
    iget-object v3, p0, Ldjk;->e:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 158
    iget-object v3, p0, Ldjk;->e:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 159
    .local v0, "arg":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v3, p0, Ldjk;->b:Lcom/alibaba/wukong/im/ConversationListener;

    if-eqz v3, :cond_0

    .line 160
    iget-object v3, p0, Ldjk;->e:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 156
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :pswitch_0
    iget-object v3, p0, Ldjk;->b:Lcom/alibaba/wukong/im/ConversationListener;

    invoke-interface {v3, v0}, Lcom/alibaba/wukong/im/ConversationListener;->onAdded(Ljava/util/List;)V

    goto :goto_1

    .line 165
    :pswitch_1
    iget-object v3, p0, Ldjk;->b:Lcom/alibaba/wukong/im/ConversationListener;

    invoke-interface {v3, v0}, Lcom/alibaba/wukong/im/ConversationListener;->onRemoved(Ljava/util/List;)V

    goto :goto_1

    .line 170
    .end local v0    # "arg":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    :cond_1
    iget-object v3, p0, Ldjk;->e:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 171
    return-void

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Ldjk;)V
    .locals 0
    .param p0, "x0"    # Ldjk;

    .prologue
    .line 27
    invoke-direct {p0}, Ldjk;->a()V

    return-void
.end method

.method static synthetic a(Ldjk;Z)Z
    .locals 0
    .param p0, "x0"    # Ldjk;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Ldjk;->d:Z

    return p1
.end method

.method static synthetic b(Ldjk;)J
    .locals 2
    .param p0, "x0"    # Ldjk;

    .prologue
    .line 27
    iget-wide v0, p0, Ldjk;->h:J

    return-wide v0
.end method

.method static synthetic c(Ldjk;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Ldjk;

    .prologue
    .line 27
    iget-object v0, p0, Ldjk;->i:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(ZZ)V
    .locals 1
    .param p1, "post"    # Z
    .param p2, "actionNow"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Ldjk;->j:Z

    .line 63
    iget-boolean v0, p0, Ldjk;->j:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 64
    invoke-direct {p0}, Ldjk;->a()V

    .line 66
    :cond_0
    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 71
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-object v0, p0, Ldjk;->c:Landroid/app/Activity;

    if-ne p1, v0, :cond_0

    .line 108
    iget-object v0, p0, Ldjk;->a:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->unregisterActivityLifecycleCallbacks(Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;)V

    .line 109
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-interface {v0, p0}, Lcom/alibaba/wukong/im/ConversationService;->removeConversationListener(Lcom/alibaba/wukong/im/ConversationListener;)V

    .line 110
    iput-object v1, p0, Ldjk;->b:Lcom/alibaba/wukong/im/ConversationListener;

    .line 111
    iput-object v1, p0, Ldjk;->c:Landroid/app/Activity;

    .line 112
    iput-object v1, p0, Ldjk;->f:Landroid/widget/AbsListView;

    .line 114
    :cond_0
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 91
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 80
    iget-object v0, p0, Ldjk;->c:Landroid/app/Activity;

    if-ne p1, v0, :cond_0

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldjk;->d:Z

    .line 82
    iget-boolean v0, p0, Ldjk;->j:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-direct {p0}, Ldjk;->a()V

    .line 86
    :cond_0
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 103
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 76
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 95
    iget-object v0, p0, Ldjk;->c:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldjk;->d:Z

    .line 98
    :cond_0
    return-void
.end method

.method public final onAdded(Ljava/util/List;)V
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
    .line 118
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v0, p0, Ldjk;->b:Lcom/alibaba/wukong/im/ConversationListener;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Ldjk;->b:Lcom/alibaba/wukong/im/ConversationListener;

    invoke-interface {v0, p1}, Lcom/alibaba/wukong/im/ConversationListener;->onAdded(Ljava/util/List;)V

    .line 121
    :cond_0
    return-void
.end method

.method public final onRefreshed(Ljava/util/List;)V
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
    .line 149
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v0, p0, Ldjk;->b:Lcom/alibaba/wukong/im/ConversationListener;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Ldjk;->b:Lcom/alibaba/wukong/im/ConversationListener;

    invoke-interface {v0, p1}, Lcom/alibaba/wukong/im/ConversationListener;->onRefreshed(Ljava/util/List;)V

    .line 152
    :cond_0
    return-void
.end method

.method public final onRemoved(Ljava/util/List;)V
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
    .line 142
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v0, p0, Ldjk;->b:Lcom/alibaba/wukong/im/ConversationListener;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Ldjk;->b:Lcom/alibaba/wukong/im/ConversationListener;

    invoke-interface {v0, p1}, Lcom/alibaba/wukong/im/ConversationListener;->onRemoved(Ljava/util/List;)V

    .line 145
    :cond_0
    return-void
.end method
