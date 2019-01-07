.class public final Libe;
.super Landroid/util/LruCache;
.source "GroupNickCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Lcom/alibaba/wukong/im/GroupNickObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0x1388

    invoke-direct {p0, v0}, Landroid/util/LruCache;-><init>(I)V

    .line 36
    return-void
.end method

.method static b(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "uid"    # J

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/wukong/im/GroupNickObject;)Lcom/alibaba/wukong/im/GroupNickObject;
    .locals 4
    .param p1, "groupNickObject"    # Lcom/alibaba/wukong/im/GroupNickObject;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 59
    invoke-virtual {p1}, Lcom/alibaba/wukong/im/GroupNickObject;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/wukong/im/GroupNickObject;->getOpenId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Libe;->b(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Libe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/GroupNickObject;

    .line 60
    .local v0, "containGroupNick":Lcom/alibaba/wukong/im/GroupNickObject;
    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/GroupNickObject;->getTag()I

    move-result v1

    invoke-virtual {p1}, Lcom/alibaba/wukong/im/GroupNickObject;->getTag()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 62
    const/4 p1, 0x0

    .line 70
    .end local p1    # "groupNickObject":Lcom/alibaba/wukong/im/GroupNickObject;
    :goto_0
    return-object p1

    .line 64
    .restart local p1    # "groupNickObject":Lcom/alibaba/wukong/im/GroupNickObject;
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/wukong/im/GroupNickObject;->completeIfNecessary()V

    .line 65
    invoke-virtual {v0, p1}, Lcom/alibaba/wukong/im/GroupNickObject;->merge(Lcom/alibaba/wukong/im/GroupNickObject;)V

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/wukong/im/GroupNickObject;->completeIfNecessary()V

    .line 69
    invoke-virtual {p1}, Lcom/alibaba/wukong/im/GroupNickObject;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/wukong/im/GroupNickObject;->getOpenId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Libe;->b(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Libe;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;J)Lcom/alibaba/wukong/im/GroupNickObject;
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "uid"    # J

    .prologue
    .line 98
    invoke-static {p1, p2, p3}, Libe;->b(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Libe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/GroupNickObject;

    return-object v0
.end method

.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/GroupNickObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/GroupNickObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 75
    .local p1, "groupNickObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/GroupNickObject;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/GroupNickObject;>;"
    if-eqz p1, :cond_2

    .line 77
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/GroupNickObject;

    .line 78
    .local v1, "groupNickObject":Lcom/alibaba/wukong/im/GroupNickObject;
    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/GroupNickObject;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/GroupNickObject;->getOpenId()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Libe;->b(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Libe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/GroupNickObject;

    .line 80
    .local v0, "containGroupNick":Lcom/alibaba/wukong/im/GroupNickObject;
    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/GroupNickObject;->getTag()I

    move-result v4

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/GroupNickObject;->getTag()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 82
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/GroupNickObject;->completeIfNecessary()V

    .line 83
    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/im/GroupNickObject;->merge(Lcom/alibaba/wukong/im/GroupNickObject;)V

    .line 84
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/GroupNickObject;->completeIfNecessary()V

    .line 88
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/GroupNickObject;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/GroupNickObject;->getOpenId()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Libe;->b(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v1}, Libe;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    .end local v0    # "containGroupNick":Lcom/alibaba/wukong/im/GroupNickObject;
    .end local v1    # "groupNickObject":Lcom/alibaba/wukong/im/GroupNickObject;
    :cond_2
    return-object v2
.end method
