.class final Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$2;
.super Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$d;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$d",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;


# direct methods
.method constructor <init>(Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;

    .prologue
    .line 307
    .local p0, "this":Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$2;, "Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$2;"
    iput-object p1, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$2;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$d;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 309
    .local p0, "this":Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$2;, "Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$2;"
    iget-object v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$2;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;

    invoke-static {v0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->a(Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 311
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 313
    iget-object v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$2;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;

    iget-object v1, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$2;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;

    iget-object v2, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$2;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->a(Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
