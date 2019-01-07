.class final Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler$1$1;
.super Ljava/lang/Object;
.source "MessageForwardHandler.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler$1;
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
.field final synthetic a:Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler$1;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler$1$1;->a:Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler$1;

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
    .line 143
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler$1$1;->a:Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler$1;->c:Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler$1$1;->a:Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler$1;->a:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->access$000(Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;Landroid/widget/TextView;Lcom/alibaba/wukong/im/Message;)V

    .line 144
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 135
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .line 1138
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler$1$1;->a:Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler$1;->c:Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler$1$1;->a:Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler$1;->a:Landroid/widget/TextView;

    invoke-static {v0, v1, p1}, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;->access$000(Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;Landroid/widget/TextView;Lcom/alibaba/wukong/im/Message;)V

    .line 135
    return-void
.end method
