.class Lcom/alibaba/doraemon/threadpool/ProgressCallable$1;
.super Ljava/lang/Object;
.source "ProgressCallable.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/threadpool/ProgressCallable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/threadpool/ProgressCallable;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/threadpool/ProgressCallable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/threadpool/ProgressCallable;

    .prologue
    .line 17
    .local p0, "this":Lcom/alibaba/doraemon/threadpool/ProgressCallable$1;, "Lcom/alibaba/doraemon/threadpool/ProgressCallable$1;"
    iput-object p1, p0, Lcom/alibaba/doraemon/threadpool/ProgressCallable$1;->this$0:Lcom/alibaba/doraemon/threadpool/ProgressCallable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 20
    .local p0, "this":Lcom/alibaba/doraemon/threadpool/ProgressCallable$1;, "Lcom/alibaba/doraemon/threadpool/ProgressCallable$1;"
    iget-object v0, p0, Lcom/alibaba/doraemon/threadpool/ProgressCallable$1;->this$0:Lcom/alibaba/doraemon/threadpool/ProgressCallable;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/doraemon/threadpool/ProgressCallable;->onProgress(ILjava/lang/Object;)V

    .line 21
    const/4 v0, 0x1

    return v0
.end method
