.class final Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler$1;
.super Ljava/lang/Object;
.source "MessageForwardHandler.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->loadMessageAsynAndSet(Landroid/widget/TextView;)V
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
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:J

.field final synthetic c:Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;Landroid/widget/TextView;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler$1;->c:Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler$1;->a:Landroid/widget/TextView;

    iput-wide p3, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler$1;->c:Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler$1;->a:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->access$000(Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;Landroid/widget/TextView;Lcom/alibaba/wukong/im/Message;)V

    .line 157
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 129
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1132
    if-nez p1, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler$1;->c:Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler$1;->a:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->access$000(Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;Landroid/widget/TextView;Lcom/alibaba/wukong/im/Message;)V

    :goto_0
    return-void

    .line 1135
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler$1;->b:J

    new-instance v2, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler$1$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler$1$1;-><init>(Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler$1;)V

    invoke-interface {p1, v0, v1, v2}, Lcom/alibaba/wukong/im/Conversation;->getMessage(JLcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method
