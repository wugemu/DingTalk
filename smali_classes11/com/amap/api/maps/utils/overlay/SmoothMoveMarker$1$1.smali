.class Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1$1;
.super Ljava/util/TimerTask;
.source "SmoothMoveMarker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;


# direct methods
.method constructor <init>(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;

    iget-object v0, v0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$000(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;

    iget-object v0, v0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$908(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)I

    .line 190
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;)V

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;

    iget-object v0, v0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;

    invoke-static {v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->access$100(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)V

    goto :goto_0
.end method
