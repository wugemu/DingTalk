.class Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler$1;
.super Ljava/lang/Object;
.source "CountLogHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler$1;->this$0:Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler$1;->this$0:Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;->flushData()V

    .line 159
    return-void
.end method
