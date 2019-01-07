.class final Ldbs$1;
.super Ljava/lang/Object;
.source "AtMeListPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/im/MessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldbs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldbs;


# direct methods
.method constructor <init>(Ldbs;)V
    .locals 0
    .param p1, "this$0"    # Ldbs;

    .prologue
    .line 63
    iput-object p1, p0, Ldbs$1;->a:Ldbs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdded(Ljava/util/List;Lcom/alibaba/wukong/im/MessageListener$DataType;)V
    .locals 7
    .param p2, "type"    # Lcom/alibaba/wukong/im/MessageListener$DataType;
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    const/4 v6, 0x0

    .line 66
    iget-object v2, p0, Ldbs$1;->a:Ldbs;

    .line 1026
    iget-object v2, v2, Ldbs;->a:Ldbr$b;

    .line 66
    invoke-interface {v2}, Ldbr$b;->d()Z

    move-result v2

    if-nez v2, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, "change":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Message;

    .line 72
    .local v1, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->isAt()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Ldbs$1;->a:Ldbs;

    .line 2026
    iget-object v3, v3, Ldbs;->f:Ljava/util/Map;

    .line 72
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 73
    iget-object v3, p0, Ldbs$1;->a:Ldbs;

    .line 3026
    iget-object v3, v3, Ldbs;->e:Ljava/util/List;

    .line 73
    invoke-interface {v3, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 74
    iget-object v3, p0, Ldbs$1;->a:Ldbs;

    .line 4026
    iget-object v3, v3, Ldbs;->f:Ljava/util/Map;

    .line 74
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const/4 v0, 0x1

    goto :goto_1

    .line 78
    .end local v1    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_3
    if-eqz v0, :cond_0

    .line 79
    iget-object v2, p0, Ldbs$1;->a:Ldbs;

    .line 5186
    iget-object v3, v2, Ldbs;->e:Ljava/util/List;

    iget-object v4, v2, Ldbs;->b:Ldbp;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5187
    iget-object v3, v2, Ldbs;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, v2, Ldbs;->e:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 5188
    invoke-static {}, Ldbu;->a()Ldbu;

    iget-object v2, v2, Ldbs;->e:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v2

    invoke-static {v2, v3}, Ldbu;->a(J)V

    .line 80
    :cond_4
    iget-object v2, p0, Ldbs$1;->a:Ldbs;

    .line 6026
    iget-object v2, v2, Ldbs;->a:Ldbr$b;

    .line 80
    invoke-interface {v2}, Ldbr$b;->a()V

    goto/16 :goto_0
.end method

.method public final onChanged(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    const/4 v6, 0x1

    .line 106
    iget-object v2, p0, Ldbs$1;->a:Ldbs;

    .line 9026
    iget-object v2, v2, Ldbs;->a:Ldbr$b;

    .line 106
    invoke-interface {v2}, Ldbr$b;->d()Z

    move-result v2

    if-nez v2, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "change":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Message;

    .line 112
    .local v1, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v1, :cond_2

    iget-object v3, p0, Ldbs$1;->a:Ldbs;

    .line 10026
    iget-object v3, v3, Ldbs;->f:Ljava/util/Map;

    .line 112
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 113
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->recallStatus()I

    move-result v3

    if-eq v3, v6, :cond_3

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->shieldStatus()I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 114
    :cond_3
    iget-object v3, p0, Ldbs$1;->a:Ldbs;

    invoke-static {v3, v1}, Ldbs;->a(Ldbs;Lcom/alibaba/wukong/im/Message;)V

    .line 115
    const/4 v0, 0x1

    goto :goto_1

    .line 119
    .end local v1    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_4
    if-eqz v0, :cond_0

    .line 120
    iget-object v2, p0, Ldbs$1;->a:Ldbs;

    invoke-static {v2, v6}, Ldbs;->a(Ldbs;Z)V

    goto :goto_0
.end method

.method public final onRemoved(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 87
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    iget-object v2, p0, Ldbs$1;->a:Ldbs;

    .line 7026
    iget-object v2, v2, Ldbs;->a:Ldbr$b;

    .line 87
    invoke-interface {v2}, Ldbr$b;->d()Z

    move-result v2

    if-nez v2, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, "change":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Message;

    .line 93
    .local v1, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->isAt()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Ldbs$1;->a:Ldbs;

    .line 8026
    iget-object v3, v3, Ldbs;->f:Ljava/util/Map;

    .line 93
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 94
    iget-object v3, p0, Ldbs$1;->a:Ldbs;

    invoke-static {v3, v1}, Ldbs;->a(Ldbs;Lcom/alibaba/wukong/im/Message;)V

    .line 95
    const/4 v0, 0x1

    goto :goto_1

    .line 98
    .end local v1    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_3
    if-eqz v0, :cond_0

    .line 99
    iget-object v2, p0, Ldbs$1;->a:Ldbs;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ldbs;->a(Ldbs;Z)V

    goto :goto_0
.end method
