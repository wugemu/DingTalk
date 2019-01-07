.class final Ldkl$a;
.super Landroid/content/BroadcastReceiver;
.source "RedPacketsStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldkl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ldkl;


# direct methods
.method private constructor <init>(Ldkl;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Ldkl$a;->a:Ldkl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldkl;B)V
    .locals 0
    .param p1, "x0"    # Ldkl;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Ldkl$a;-><init>(Ldkl;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v6, "intent_action_pick_status_change"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 82
    const-string/jumbo v6, "intent_key_cluster_id"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "clusterId":Ljava/lang/String;
    const-string/jumbo v6, "intent_key_pick_status"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 84
    .local v5, "status":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 103
    .end local v1    # "clusterId":Ljava/lang/String;
    .end local v5    # "status":I
    :cond_0
    :goto_0
    return-void

    .line 89
    .restart local v1    # "clusterId":Ljava/lang/String;
    .restart local v5    # "status":I
    :cond_1
    iget-object v6, p0, Ldkl$a;->a:Ldkl;

    invoke-static {v6}, Ldkl;->a(Ldkl;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/Message;

    .line 90
    .local v3, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v3, :cond_0

    .line 91
    invoke-static {v3}, Ldkl;->a(Lcom/alibaba/wukong/im/Message;)I

    move-result v4

    .line 92
    .local v4, "oldStatus":I
    if-eq v5, v4, :cond_0

    .line 93
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->localExtras()Ljava/util/Map;

    move-result-object v2

    .line 94
    .local v2, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v2, :cond_2

    .line 95
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 97
    .restart local v2    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v6, "red_packets_pick_status"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-interface {v3, v2}, Lcom/alibaba/wukong/im/Message;->updateLocalExtras(Ljava/util/Map;)V

    .line 99
    iget-object v6, p0, Ldkl$a;->a:Ldkl;

    invoke-static {v6}, Ldkl;->b(Ldkl;)Ldq;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "com.workapp.msg.update"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method
