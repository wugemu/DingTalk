.class final Lcom/alibaba/android/dingtalkim/forward/NameCardForwardHandler$1$1;
.super Ljava/lang/Object;
.source "NameCardForwardHandler.java"

# interfaces
.implements Ldiz$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/NameCardForwardHandler$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/forward/NameCardForwardHandler$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/NameCardForwardHandler$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/forward/NameCardForwardHandler$1;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/NameCardForwardHandler$1$1;->a:Lcom/alibaba/android/dingtalkim/forward/NameCardForwardHandler$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/wukong/im/Message;)V
    .locals 2
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/NameCardForwardHandler$1$1;->a:Lcom/alibaba/android/dingtalkim/forward/NameCardForwardHandler$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/forward/NameCardForwardHandler$1;->d:Lcom/alibaba/android/dingtalkim/forward/NameCardForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/NameCardForwardHandler$1$1;->a:Lcom/alibaba/android/dingtalkim/forward/NameCardForwardHandler$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/forward/NameCardForwardHandler$1;->b:Ldiz;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/forward/NameCardForwardHandler;->sendText(Ldiz;)V

    .line 55
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;I)V
    .locals 0
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "progress"    # I

    .prologue
    .line 65
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/NameCardForwardHandler$1$1;->a:Lcom/alibaba/android/dingtalkim/forward/NameCardForwardHandler$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/forward/NameCardForwardHandler$1;->d:Lcom/alibaba/android/dingtalkim/forward/NameCardForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/NameCardForwardHandler$1$1;->a:Lcom/alibaba/android/dingtalkim/forward/NameCardForwardHandler$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/forward/NameCardForwardHandler$1;->b:Ldiz;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/forward/NameCardForwardHandler;->sendText(Ldiz;)V

    .line 60
    return-void
.end method
