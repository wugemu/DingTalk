.class Lcom/alivc/component/capture/VideoPusherJNI$2;
.super Ljava/lang/Object;
.source "VideoPusherJNI.java"

# interfaces
.implements Lcom/alivc/component/capture/VideoPusher$VideoSourceTextureListener;


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
    .line 27
    iput-object p1, p0, Lcom/alivc/component/capture/VideoPusherJNI$2;->this$0:Lcom/alivc/component/capture/VideoPusherJNI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoFrame(JIIIII)V
    .locals 9
    .param p1, "timestamp"    # J
    .param p3, "cameraId"    # I
    .param p4, "orientation"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "format"    # I

    .prologue
    .line 30
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusherJNI$2;->this$0:Lcom/alivc/component/capture/VideoPusherJNI;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v1 .. v8}, Lcom/alivc/component/capture/VideoPusherJNI;->access$100(Lcom/alivc/component/capture/VideoPusherJNI;JIIIII)I

    .line 31
    return-void
.end method
