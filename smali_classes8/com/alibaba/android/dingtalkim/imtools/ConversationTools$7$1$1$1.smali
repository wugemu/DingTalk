.class final Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1$1$1;
.super Ljava/lang/Object;
.source "ConversationTools.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1$1;
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
        "Ljava/util/List",
        "<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1$1;)V
    .locals 0
    .param p1, "this$3"    # Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1$1;

    .prologue
    .line 925
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1$1$1;->a:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 933
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1$1$1;->a:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1$1;->a:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1;->b:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 925
    return-void
.end method

.method public final bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 925
    check-cast p1, Ljava/util/List;

    .line 1928
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1$1$1;->a:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1$1;->a:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7$1;->b:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$7;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 925
    return-void
.end method
