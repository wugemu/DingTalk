.class public final Ldlo;
.super Ldlm;
.source "MultiToTaskParams.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldlm",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/Message;",
        ">;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lcom/alibaba/wukong/idl/im/models/ContentModel;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Ldlm;-><init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/Object;)V

    .line 23
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/ContentModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "msgIdContentModelMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/ContentModel;>;"
    iget-object v0, p0, Ldlo;->d:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Ldlo;->d:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 76
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-virtual {p0}, Ldlo;->b()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 69
    :goto_0
    return v2

    .line 60
    :cond_0
    iget-object v2, p0, Ldlo;->c:Ljava/lang/Object;

    if-nez v2, :cond_1

    move v2, v3

    .line 61
    goto :goto_0

    .line 63
    :cond_1
    iget-object v2, p0, Ldlo;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 64
    .local v0, "message":Lcom/alibaba/wukong/im/Message;
    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->transformation(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    move-result-object v1

    .line 65
    .local v1, "type":Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;
    sget-object v4, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->ENCRYPT_FILE:Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    if-ne v1, v4, :cond_2

    .line 66
    const/4 v2, 0x1

    goto :goto_0

    .end local v0    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v1    # "type":Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;
    :cond_3
    move v2, v3

    .line 69
    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 27
    iget-object v0, p0, Ldlo;->a:Landroid/app/Activity;

    if-nez v0, :cond_0

    move v0, v1

    .line 38
    :goto_0
    return v0

    .line 30
    :cond_0
    iget-object v0, p0, Ldlo;->c:Ljava/lang/Object;

    if-nez v0, :cond_1

    move v0, v1

    .line 31
    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Ldlo;->c:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 34
    iget-object v0, p0, Ldlo;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 35
    goto :goto_0

    .line 38
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
