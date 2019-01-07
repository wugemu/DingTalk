.class final Lder$1;
.super Ljava/lang/Object;
.source "BeginnerGuideManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:Lcom/alibaba/wukong/im/Message;

.field final synthetic c:Lder;


# direct methods
.method constructor <init>(Lder;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$0"    # Lder;

    .prologue
    .line 153
    iput-object p1, p0, Lder$1;->c:Lder;

    iput-object p2, p0, Lder$1;->a:Lcom/alibaba/wukong/im/Conversation;

    iput-object p3, p0, Lder$1;->b:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 157
    :try_start_0
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v2

    iget-object v1, p0, Lder$1;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lder$1;->b:Lcom/alibaba/wukong/im/Message;

    check-cast v1, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 1061
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Z)Z
    :try_end_0
    .catch Lcom/alibaba/wukong/im/base/WKException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Lcom/alibaba/wukong/im/base/WKException;
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/base/WKException;->printStackTrace()V

    goto :goto_0
.end method
