.class final Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$b;
.super Landroid/os/Handler;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 662
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 662
    invoke-direct {p0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 666
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$a;

    .line 667
    .local v0, "result":Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$a;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 676
    :goto_0
    return-void

    .line 670
    :pswitch_0
    iget-object v1, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$a;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;

    iget-object v2, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$a;->b:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->c(Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;Ljava/lang/Object;)V

    goto :goto_0

    .line 673
    :pswitch_1
    invoke-static {}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;->a()V

    goto :goto_0

    .line 667
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
