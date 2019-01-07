.class final Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$c$1;
.super Ljava/lang/Object;
.source "AsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$c;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$c;


# direct methods
.method constructor <init>(Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$c;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$c;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$c$1;->b:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$c;

    iput-object p2, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$c$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$c$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    iget-object v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$c$1;->b:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$c;

    invoke-virtual {v0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$c;->a()V

    .line 259
    return-void

    .line 258
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$c$1;->b:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$c;

    invoke-virtual {v1}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$c;->a()V

    throw v0
.end method
