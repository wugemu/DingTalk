.class public final Ldrr;
.super Ljava/lang/Object;
.source "MessagePickMenuPresenter.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView$a;


# instance fields
.field a:Ldru;

.field b:J

.field private c:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Ldru;Ldrt$b;)V
    .locals 3
    .param p1, "manager"    # Ldru;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldru;",
            "Ldrt$b",
            "<",
            "Ldrt$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "view":Ldrt$b;, "Ldrt$b<Ldrt$a;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "manager can not be NULL"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    if-nez p2, :cond_1

    .line 44
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "view can not be NULL"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_1
    iput-object p1, p0, Ldrr;->a:Ldru;

    .line 47
    invoke-interface {p2, p0}, Ldrt$b;->setPresenter(Lcjd;)V

    .line 1118
    new-instance v0, Ldrr$2;

    invoke-direct {v0, p0}, Ldrr$2;-><init>(Ldrr;)V

    iput-object v0, p0, Ldrr;->c:Landroid/content/BroadcastReceiver;

    .line 1137
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "action_ding_create_result"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1138
    iget-object v1, p0, Ldrr;->a:Ldru;

    .line 2079
    iget-object v1, v1, Ldru;->a:Landroid/app/Activity;

    .line 1138
    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Ldrr;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 49
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 75
    .local v1, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "num"

    iget-object v2, p0, Ldrr;->a:Ldru;

    .line 4071
    iget-object v2, v2, Ldru;->d:Ljava/util/HashSet;

    .line 75
    if-eqz v2, :cond_0

    iget-object v2, p0, Ldrr;->a:Ldru;

    .line 5071
    iget-object v2, v2, Ldru;->d:Ljava/util/HashSet;

    .line 75
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "0"

    :goto_0
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string/jumbo v2, "chat_more_forward_click"

    invoke-static {v2, v1}, Lcps;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 77
    new-instance v0, Ldve;

    iget-object v2, p0, Ldrr;->a:Ldru;

    .line 6079
    iget-object v2, v2, Ldru;->a:Landroid/app/Activity;

    .line 77
    iget-object v3, p0, Ldrr;->a:Ldru;

    invoke-direct {v0, v2, v3}, Ldve;-><init>(Landroid/app/Activity;Ldru;)V

    .line 78
    .local v0, "handler":Ldve;
    iget-object v2, p0, Ldrr;->a:Ldru;

    .line 6179
    iget-object v2, v2, Ldru;->f:Ljava/lang/String;

    .line 7068
    iput-object v2, v0, Ldve;->a:Ljava/lang/String;

    .line 79
    new-instance v2, Ldrr$1;

    invoke-direct {v2, p0}, Ldrr$1;-><init>(Ldrr;)V

    invoke-virtual {v0, v2}, Ldve;->a(Lcom/alibaba/wukong/Callback;)V

    .line 99
    iget-object v2, p0, Ldrr;->a:Ldru;

    .line 7075
    iget-object v2, v2, Ldru;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 99
    iget-object v3, p0, Ldrr;->a:Ldru;

    .line 8071
    iget-object v3, v3, Ldru;->d:Ljava/util/HashSet;

    .line 99
    invoke-virtual {v0, v2, v3}, Ldve;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/Collection;)V

    .line 100
    invoke-virtual {v0}, Ldve;->a()V

    .line 101
    return-void

    .line 75
    .end local v0    # "handler":Ldve;
    :cond_1
    iget-object v2, p0, Ldrr;->a:Ldru;

    .line 6071
    iget-object v2, v2, Ldru;->d:Ljava/util/HashSet;

    .line 75
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public final c()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 106
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 107
    .local v7, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "num"

    iget-object v1, p0, Ldrr;->a:Ldru;

    .line 9071
    iget-object v1, v1, Ldru;->d:Ljava/util/HashSet;

    .line 107
    if-eqz v1, :cond_0

    iget-object v1, p0, Ldrr;->a:Ldru;

    .line 10071
    iget-object v1, v1, Ldru;->d:Ljava/util/HashSet;

    .line 107
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v1, "0"

    :goto_0
    invoke-interface {v7, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string/jumbo v1, "chat_more_to_task_click"

    invoke-static {v1, v7}, Lcps;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 109
    iget-object v1, p0, Ldrr;->a:Ldru;

    .line 12071
    iget-object v0, v1, Ldru;->d:Ljava/util/HashSet;

    .line 110
    .local v0, "messages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/wukong/im/Message;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 115
    :cond_1
    :goto_1
    return-void

    .line 107
    .end local v0    # "messages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/wukong/im/Message;>;"
    :cond_2
    iget-object v1, p0, Ldrr;->a:Ldru;

    .line 11071
    iget-object v1, v1, Ldru;->d:Ljava/util/HashSet;

    .line 107
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 113
    .restart local v0    # "messages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/wukong/im/Message;>;"
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Ldrr;->b:J

    .line 114
    iget-object v1, p0, Ldrr;->a:Ldru;

    .line 12079
    iget-object v1, v1, Ldru;->a:Landroid/app/Activity;

    .line 114
    iget-object v2, p0, Ldrr;->a:Ldru;

    .line 13075
    iget-object v2, v2, Ldru;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 114
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-wide v4, p0, Ldrr;->b:J

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ldkf;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;JZ)V

    goto :goto_1
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public final i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    .line 2142
    iget-object v0, p0, Ldrr;->c:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2143
    iget-object v0, p0, Ldrr;->a:Ldru;

    .line 3079
    iget-object v0, v0, Ldru;->a:Landroid/app/Activity;

    .line 2143
    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Ldrr;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 69
    :cond_0
    return-void
.end method
