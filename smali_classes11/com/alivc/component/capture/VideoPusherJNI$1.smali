.class Lcom/alivc/component/capture/VideoPusherJNI$1;
.super Ljava/lang/Object;
.source "VideoPusherJNI.java"

# interfaces
.implements Lcom/alivc/component/capture/VideoPusher$VideoSourceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/component/capture/VideoPusherJNI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alivc/component/capture/VideoPusherJNI;


# direct methods
.method constructor <init>(Lcom/alivc/component/capture/VideoPusherJNI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alivc/component/capture/VideoPusherJNI;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/alivc/component/capture/VideoPusherJNI$1;->this$0:Lcom/alivc/component/capture/VideoPusherJNI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoFrame([BJIIIII)V
    .locals 10
    .param p1, "videoFrame"    # [B
    .param p2, "timestamp"    # J
    .param p4, "cameraId"    # I
    .param p5, "orientation"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "format"    # I

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI$1;->this$0:Lcom/alivc/component/capture/VideoPusherJNI;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/alivc/component/capture/VideoPusherJNI;->access$000(Lcom/alivc/component/capture/VideoPusherJNI;[BJIIIII)I

    .line 24
    return-void
.end method
