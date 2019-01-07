.class public final Ldll;
.super Ldlm;
.source "ForwardCombineParams.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldlm",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/Message;",
        ">;",
        "Lcom/alibaba/wukong/im/Message;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p3, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    invoke-direct {p0, p1, p2, p3}, Ldlm;-><init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/Object;)V

    .line 21
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-virtual {p0}, Ldll;->b()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 50
    :goto_0
    return v2

    .line 43
    :cond_0
    iget-object v2, p0, Ldll;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 44
    .local v0, "message":Lcom/alibaba/wukong/im/Message;
    iget-object v4, p0, Ldll;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, v4}, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->transformation(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    move-result-object v1

    .line 45
    .local v1, "type":Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;
    sget-object v4, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->ENCRYPT_FILE:Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    if-ne v1, v4, :cond_1

    .line 46
    const/4 v2, 0x1

    goto :goto_0

    .end local v0    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v1    # "type":Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;
    :cond_2
    move v2, v3

    .line 50
    goto :goto_0
.end method
