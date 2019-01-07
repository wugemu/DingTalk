.class final Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1$1;
.super Ljava/lang/Object;
.source "ConversationTools.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1;

    .prologue
    .line 920
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1$1;->a:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 945
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1$1;->a:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1;->b:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 920
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 920
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .line 1923
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1$1;->a:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1;->b:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Long;

    .line 1924
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1$1;->a:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1;->b:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1925
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v2, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1$1$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1$1$1;-><init>(Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1$1;)V

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1$1;->a:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1;->b:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7;->b:Ljava/lang/String;

    invoke-interface {v0, v2, v3, p1, v1}, Lcom/alibaba/wukong/im/ConversationService;->removeMembers(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;[Ljava/lang/Long;)V

    .line 920
    return-void
.end method
