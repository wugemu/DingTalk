.class public Lcom/amap/api/mapcore/util/ef$b;
.super Lcom/amap/api/mapcore/util/dw;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/ef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/mapcore/util/dw",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/ef;


# direct methods
.method protected constructor <init>(Lcom/amap/api/mapcore/util/ef;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/amap/api/mapcore/util/ef$b;->a:Lcom/amap/api/mapcore/util/ef;

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/dw;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 478
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/ef$b;->d([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs d([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 502
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 485
    :pswitch_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ef$b;->a:Lcom/amap/api/mapcore/util/ef;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ef;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 499
    :catch_0
    move-exception v0

    .line 500
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 488
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ef$b;->a:Lcom/amap/api/mapcore/util/ef;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ef;->b()V

    goto :goto_0

    .line 491
    :pswitch_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ef$b;->a:Lcom/amap/api/mapcore/util/ef;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ef;->d()V

    goto :goto_0

    .line 494
    :pswitch_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ef$b;->a:Lcom/amap/api/mapcore/util/ef;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ef;->e()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 483
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
