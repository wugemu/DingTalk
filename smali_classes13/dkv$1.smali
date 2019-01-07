.class final Ldkv$1;
.super Ljava/lang/Object;
.source "CampusStudentAggregation.java"

# interfaces
.implements Ldwq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldkv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldkv;


# direct methods
.method constructor <init>(Ldkv;)V
    .locals 0
    .param p1, "this$0"    # Ldkv;

    .prologue
    .line 128
    iput-object p1, p0, Ldkv$1;->a:Ldkv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/Set;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldwz;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 132
    .local p1, "infoUpdatedList":Ljava/util/List;, "Ljava/util/List<Ldwz;>;"
    .local p2, "noChangedSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    .line 133
    .local v2, "currentTime":J
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 134
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 135
    .local v6, "userId":Ljava/lang/Long;
    if-eqz v6, :cond_0

    .line 138
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->b()Lchy;

    move-result-object v8

    invoke-virtual {v8}, Lchy;->getCurrentUid()J

    move-result-wide v8

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ldjl;->a(JJ)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "cid":Ljava/lang/String;
    iget-object v8, p0, Ldkv$1;->a:Ldkv;

    invoke-virtual {v8, v0}, Ldkv;->a(Ljava/lang/String;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v5

    .line 140
    .local v5, "subConversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v5, :cond_0

    .line 141
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 142
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "im_recru_lst_request_time"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-interface {v5, v1}, Lcom/alibaba/wukong/im/Conversation;->updateLocalExtrasByKeys(Ljava/util/Map;)V

    goto :goto_0

    .line 148
    .end local v0    # "cid":Ljava/lang/String;
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "subConversation":Lcom/alibaba/wukong/im/Conversation;
    .end local v6    # "userId":Ljava/lang/Long;
    :cond_1
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 149
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldwz;

    .line 150
    .local v4, "object":Ldwz;
    if-eqz v4, :cond_2

    .line 151
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->b()Lchy;

    move-result-object v8

    invoke-virtual {v8}, Lchy;->getCurrentUid()J

    move-result-wide v8

    iget-wide v10, v4, Ldwz;->a:J

    invoke-static {v8, v9, v10, v11}, Ldjl;->a(JJ)Ljava/lang/String;

    move-result-object v0

    .line 152
    .restart local v0    # "cid":Ljava/lang/String;
    iget-object v8, p0, Ldkv$1;->a:Ldkv;

    invoke-virtual {v8, v0}, Ldkv;->a(Ljava/lang/String;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v5

    .line 153
    .restart local v5    # "subConversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v5, :cond_2

    .line 154
    invoke-virtual {v4, v5, v2, v3}, Ldwz;->a(Lcom/alibaba/wukong/im/Conversation;J)V

    goto :goto_1

    .line 159
    .end local v0    # "cid":Ljava/lang/String;
    .end local v4    # "object":Ldwz;
    .end local v5    # "subConversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_3
    return-void
.end method
