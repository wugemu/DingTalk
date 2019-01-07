.class final Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$9;
.super Ljava/lang/Object;
.source "ConversationTools.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a(Ljava/lang/String;JJILjava/util/List;Lcom/alibaba/wukong/Callback;)V
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
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    .prologue
    .line 1008
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$9;->d:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$9;->a:Lcom/alibaba/wukong/Callback;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$9;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$9;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$9;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1008
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1008
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .line 2012
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$9;->a:Lcom/alibaba/wukong/Callback;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$9;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$9;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v2, v3, p1, v1}, Lcom/alibaba/wukong/im/ConversationService;->addMembers(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;[Ljava/lang/Long;)V

    .line 1008
    return-void

    .line 2012
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$9;->c:Ljava/util/List;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$9;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Long;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Long;

    goto :goto_0
.end method
