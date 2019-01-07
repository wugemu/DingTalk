.class Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$CallbackWrapper;
.super Ljava/lang/Object;
.source "TaskRunner.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallbackWrapper"
.end annotation


# instance fields
.field private mCallback:Landroid/os/Handler$Callback;

.field final synthetic this$0:Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;Landroid/os/Handler$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;
    .param p2, "cb"    # Landroid/os/Handler$Callback;

    .prologue
    .line 663
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$CallbackWrapper;->this$0:Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 664
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$CallbackWrapper;->mCallback:Landroid/os/Handler$Callback;

    .line 665
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 669
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$CallbackWrapper;->mCallback:Landroid/os/Handler$Callback;

    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method
