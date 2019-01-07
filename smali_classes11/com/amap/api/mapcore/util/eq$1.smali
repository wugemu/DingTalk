.class Lcom/amap/api/mapcore/util/eq$1;
.super Ljava/lang/Object;
.source "IndoorFloorSwitchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/eq;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/eq;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/eq;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/amap/api/mapcore/util/eq$1;->a:Lcom/amap/api/mapcore/util/eq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 116
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eq$1;->a:Lcom/amap/api/mapcore/util/eq;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/eq;->getScrollY()I

    move-result v0

    .line 117
    iget-object v1, p0, Lcom/amap/api/mapcore/util/eq$1;->a:Lcom/amap/api/mapcore/util/eq;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/eq;->a(Lcom/amap/api/mapcore/util/eq;)I

    move-result v1

    sub-int v0, v1, v0

    if-nez v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eq$1;->a:Lcom/amap/api/mapcore/util/eq;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/eq;->a(Lcom/amap/api/mapcore/util/eq;)I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/eq$1;->a:Lcom/amap/api/mapcore/util/eq;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/eq;->b(Lcom/amap/api/mapcore/util/eq;)I

    move-result v1

    rem-int/2addr v0, v1

    .line 119
    iget-object v1, p0, Lcom/amap/api/mapcore/util/eq$1;->a:Lcom/amap/api/mapcore/util/eq;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/eq;->a(Lcom/amap/api/mapcore/util/eq;)I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/eq$1;->a:Lcom/amap/api/mapcore/util/eq;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/eq;->b(Lcom/amap/api/mapcore/util/eq;)I

    move-result v2

    div-int/2addr v1, v2

    .line 120
    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eq$1;->a:Lcom/amap/api/mapcore/util/eq;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/eq$1;->a:Lcom/amap/api/mapcore/util/eq;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/eq;->c(Lcom/amap/api/mapcore/util/eq;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/amap/api/mapcore/util/eq;->b:I

    .line 123
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eq$1;->a:Lcom/amap/api/mapcore/util/eq;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/eq;->d(Lcom/amap/api/mapcore/util/eq;)V

    .line 155
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/eq$1;->a:Lcom/amap/api/mapcore/util/eq;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/eq;->b(Lcom/amap/api/mapcore/util/eq;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_1

    .line 126
    iget-object v2, p0, Lcom/amap/api/mapcore/util/eq$1;->a:Lcom/amap/api/mapcore/util/eq;

    new-instance v3, Lcom/amap/api/mapcore/util/eq$1$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/amap/api/mapcore/util/eq$1$1;-><init>(Lcom/amap/api/mapcore/util/eq$1;II)V

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore/util/eq;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 137
    :cond_1
    iget-object v2, p0, Lcom/amap/api/mapcore/util/eq$1;->a:Lcom/amap/api/mapcore/util/eq;

    new-instance v3, Lcom/amap/api/mapcore/util/eq$1$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/amap/api/mapcore/util/eq$1$2;-><init>(Lcom/amap/api/mapcore/util/eq$1;II)V

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore/util/eq;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eq$1;->a:Lcom/amap/api/mapcore/util/eq;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/eq$1;->a:Lcom/amap/api/mapcore/util/eq;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/eq;->getScrollY()I

    move-result v1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/eq;->a(Lcom/amap/api/mapcore/util/eq;I)I

    .line 152
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eq$1;->a:Lcom/amap/api/mapcore/util/eq;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/eq$1;->a:Lcom/amap/api/mapcore/util/eq;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/eq;->e(Lcom/amap/api/mapcore/util/eq;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/eq$1;->a:Lcom/amap/api/mapcore/util/eq;

    .line 153
    invoke-static {v2}, Lcom/amap/api/mapcore/util/eq;->f(Lcom/amap/api/mapcore/util/eq;)I

    move-result v2

    int-to-long v2, v2

    .line 152
    invoke-virtual {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/eq;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
