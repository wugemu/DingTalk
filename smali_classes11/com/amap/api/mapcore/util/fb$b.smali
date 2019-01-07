.class Lcom/amap/api/mapcore/util/fb$b;
.super Landroid/os/Handler;
.source "TraceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/fb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/amap/api/mapcore/util/fb;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/amap/api/mapcore/util/fb;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/fb;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 261
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/fb$b;->a(Lcom/amap/api/mapcore/util/fb;)V

    .line 262
    return-void
.end method

.method private a(Lcom/amap/api/mapcore/util/fb;)V
    .locals 1

    .prologue
    .line 265
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fb$b;->a:Ljava/lang/ref/WeakReference;

    .line 266
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/fb;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fb$b;->b:Lcom/amap/api/mapcore/util/fb;

    .line 267
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb$b;->b:Lcom/amap/api/mapcore/util/fb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb$b;->b:Lcom/amap/api/mapcore/util/fb;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/fb;->d(Lcom/amap/api/mapcore/util/fb;)Liuu;

    move-result-object v0

    if-nez v0, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_0

    .line 279
    const-string/jumbo v1, "lineID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 280
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 282
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 283
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb$b;->b:Lcom/amap/api/mapcore/util/fb;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/fb;->d(Lcom/amap/api/mapcore/util/fb;)Liuu;

    iget v0, p1, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 287
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 288
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb$b;->b:Lcom/amap/api/mapcore/util/fb;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/fb;->d(Lcom/amap/api/mapcore/util/fb;)Liuu;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v0, p1, Landroid/os/Message;->arg2:I

    goto :goto_0

    .line 292
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 293
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb$b;->b:Lcom/amap/api/mapcore/util/fb;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/fb;->d(Lcom/amap/api/mapcore/util/fb;)Liuu;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
