.class public final Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$1;
.super Ljava/lang/Object;
.source "CompeteEmotionStateManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$1;->b:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 103
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$1;->b:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v7}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v7

    invoke-interface {v7}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;->a(Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;

    move-result-object v2

    .line 104
    .local v2, "model":Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$1;->b:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v7}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;->a(Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;J)J

    .line 105
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$1;->b:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;

    invoke-static {v6, v2}, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;->a(Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;)V

    .line 106
    const-wide/16 v4, 0x0

    .line 107
    .local v4, "topicId":J
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    .line 108
    .local v1, "imageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getExtension()Ljava/util/Map;

    move-result-object v0

    .line 109
    .local v0, "ext":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getExtension()Ljava/util/Map;

    move-result-object v6

    const-string/jumbo v7, "p_t_id"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1109
    .local v3, "value":Ljava/lang/String;
    const-wide/16 v6, 0x0

    invoke-static {v3, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 115
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$1;->b:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-static {v6, v7}, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;->a(Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;Lcom/alibaba/wukong/im/Message;)V

    .line 2054
    invoke-static {}, Ldiy$a;->a()Ldiy;

    move-result-object v6

    .line 118
    invoke-virtual {v6, v4, v5}, Ldiy;->a(J)V

    .line 119
    return-void
.end method
