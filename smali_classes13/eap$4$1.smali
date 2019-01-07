.class final Leap$4$1;
.super Ljava/lang/Object;
.source "ConversationSettingPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leap$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leap$4;


# direct methods
.method constructor <init>(Leap$4;)V
    .locals 0
    .param p1, "this$1"    # Leap$4;

    .prologue
    .line 210
    iput-object p1, p0, Leap$4$1;->a:Leap$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 213
    iget-object v1, p0, Leap$4$1;->a:Leap$4;

    iget-object v1, v1, Leap$4;->b:Leap;

    .line 1034
    iget-object v1, v1, Leap;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 213
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v0

    .line 214
    .local v0, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 215
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 218
    .restart local v0    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v2, "orgGroupSync"

    iget-object v1, p0, Leap$4$1;->a:Leap$4;

    iget-boolean v1, v1, Leap$4;->a:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v1

    iget-object v2, p0, Leap$4$1;->a:Leap$4;

    iget-object v2, v2, Leap$4;->b:Leap;

    .line 2034
    iget-object v2, v2, Leap;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 223
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Liar;->a(Ljava/lang/String;Ljava/util/Map;)Z

    .line 224
    return-void

    .line 218
    :cond_1
    const-string/jumbo v1, "0"

    goto :goto_0
.end method
