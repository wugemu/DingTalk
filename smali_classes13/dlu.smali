.class public final Ldlu;
.super Ldlv;
.source "ForwardCombineTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldlv",
        "<",
        "Lcom/alibaba/wukong/im/Message;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ldlv;-><init>()V

    return-void
.end method

.method static synthetic a(Ldlu;Ldll;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .param p0, "x0"    # Ldlu;
    .param p1, "x1"    # Ldll;
    .param p2, "x2"    # Ljava/util/Map;
    .param p3, "x3"    # Ljava/util/Map;

    .prologue
    .line 33
    .line 2078
    iget-object v0, p1, Ldll;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    .line 2079
    const-class v0, Lcom/alibaba/wukong/im/MessageService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageService;

    iget-object v1, p1, Ldll;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    new-instance v5, Ldlu$2;

    invoke-direct {v5, p0, p1}, Ldlu$2;-><init>(Ldlu;Ldll;)V

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/wukong/im/MessageService;->combineForward(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/alibaba/wukong/Callback;)V

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Ldlm;)V
    .locals 1
    .param p1, "params"    # Ldlm;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ldlu;->a(Ldlm;Ljava/util/Map;)V

    .line 39
    return-void
.end method

.method public final a(Ldlm;Ljava/util/Map;)V
    .locals 12
    .param p1, "params"    # Ldlm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldlm;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/ContentModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 42
    .local p2, "contentModels":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/ContentModel;>;"
    if-nez p1, :cond_0

    .line 1131
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-virtual {p1}, Ldlm;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 46
    invoke-virtual {p0, p1}, Ldlu;->b(Ldlm;)V

    goto :goto_0

    .line 49
    :cond_1
    instance-of v1, p1, Ldll;

    if-nez v1, :cond_2

    .line 50
    const-string/jumbo v1, "Params must be ForwardCombineParams"

    invoke-static {p1, v1}, Ldlu;->a(Ldlm;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 54
    check-cast v0, Ldll;

    .line 56
    .local v0, "combineParams":Ldll;
    new-instance v2, Ldlu$1;

    invoke-direct {v2, p0, v0, p2}, Ldlu$1;-><init>(Ldlu;Ldll;Ljava/util/Map;)V

    .line 1101
    iget-object v1, v0, Ldll;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 1102
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1104
    iget-object v1, v0, Ldll;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Message;

    .line 1105
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1106
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1110
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1111
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 1113
    iget-object v1, v0, Ldll;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    .line 1114
    if-eqz v3, :cond_6

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    const/4 v7, 0x2

    if-ne v1, v7, :cond_6

    .line 1116
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1117
    const-class v1, Lcom/alibaba/wukong/im/GroupNickService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/GroupNickService;

    .line 1118
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x1

    invoke-interface {v1, v7, v8, v9, v10}, Lcom/alibaba/wukong/im/GroupNickService;->getGroupNickSync(Ljava/lang/String;JZ)Lcom/alibaba/wukong/im/GroupNickObject;

    move-result-object v1

    .line 1119
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/GroupNickObject;->getGroupNick()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1120
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/GroupNickObject;->getOpenId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/GroupNickObject;->getGroupNick()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1126
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_7

    .line 1129
    invoke-interface {v2, v6}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1134
    :cond_7
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    new-instance v3, Ldlu$3;

    invoke-direct {v3, p0, v6, v2}, Ldlu$3;-><init>(Ldlu;Ljava/util/HashMap;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v1, v5, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto/16 :goto_0
.end method
