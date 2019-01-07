.class Lcom/alivc/component/capture/VideoPusher$2;
.super Ljava/lang/Object;
.source "VideoPusher.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/component/capture/VideoPusher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alivc/component/capture/VideoPusher;


# direct methods
.method constructor <init>(Lcom/alivc/component/capture/VideoPusher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alivc/component/capture/VideoPusher;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 9
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 234
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$700(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoPusher$VideoSourceListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$100(Lcom/alivc/component/capture/VideoPusher;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/alivc/component/capture/VideoPusher;->access$102(Lcom/alivc/component/capture/VideoPusher;J)J

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$800(Lcom/alivc/component/capture/VideoPusher;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$200(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoParam;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$300(Lcom/alivc/component/capture/VideoPusher;)I

    move-result v0

    if-lez v0, :cond_5

    .line 246
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$700(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoPusher$VideoSourceListener;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v1}, Lcom/alivc/component/capture/VideoPusher;->access$100(Lcom/alivc/component/capture/VideoPusher;)J

    move-result-wide v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    div-long/2addr v2, v4

    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    .line 247
    invoke-static {v1}, Lcom/alivc/component/capture/VideoPusher;->access$200(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alivc/component/capture/VideoParam;->getCameraId()I

    move-result v4

    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v1}, Lcom/alivc/component/capture/VideoPusher;->access$300(Lcom/alivc/component/capture/VideoPusher;)I

    move-result v5

    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v1}, Lcom/alivc/component/capture/VideoPusher;->access$200(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alivc/component/capture/VideoParam;->getWidth()I

    move-result v6

    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v1}, Lcom/alivc/component/capture/VideoPusher;->access$200(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alivc/component/capture/VideoParam;->getHeight()I

    move-result v7

    const/16 v8, 0x11

    move-object v1, p1

    .line 246
    invoke-interface/range {v0 .. v8}, Lcom/alivc/component/capture/VideoPusher$VideoSourceListener;->onVideoFrame([BJIIIII)V

    .line 257
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/alivc/component/capture/VideoPusher;->access$502(Lcom/alivc/component/capture/VideoPusher;J)J

    .line 258
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$608(Lcom/alivc/component/capture/VideoPusher;)I

    .line 261
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$900(Lcom/alivc/component/capture/VideoPusher;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v1}, Lcom/alivc/component/capture/VideoPusher;->access$500(Lcom/alivc/component/capture/VideoPusher;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/alivc/component/capture/VideoPusher;->access$902(Lcom/alivc/component/capture/VideoPusher;J)J

    .line 264
    :cond_2
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$500(Lcom/alivc/component/capture/VideoPusher;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v2}, Lcom/alivc/component/capture/VideoPusher;->access$900(Lcom/alivc/component/capture/VideoPusher;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "StatLog: video capture fps = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v1}, Lcom/alivc/component/capture/VideoPusher;->access$600(Lcom/alivc/component/capture/VideoPusher;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v1}, Lcom/alivc/component/capture/VideoPusher;->access$600(Lcom/alivc/component/capture/VideoPusher;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alivc/component/capture/VideoPusher;->access$1002(Lcom/alivc/component/capture/VideoPusher;I)I

    .line 267
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$600(Lcom/alivc/component/capture/VideoPusher;)I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_7

    .line 268
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$1100(Lcom/alivc/component/capture/VideoPusher;)I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_6

    .line 270
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alivc/component/capture/VideoPusher;->access$1102(Lcom/alivc/component/capture/VideoPusher;I)I

    .line 278
    :goto_1
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alivc/component/capture/VideoPusher;->access$602(Lcom/alivc/component/capture/VideoPusher;I)I

    .line 279
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v1}, Lcom/alivc/component/capture/VideoPusher;->access$500(Lcom/alivc/component/capture/VideoPusher;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/alivc/component/capture/VideoPusher;->access$902(Lcom/alivc/component/capture/VideoPusher;J)J

    .line 281
    :cond_3
    if-eqz p2, :cond_4

    .line 282
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 284
    :cond_4
    return-void

    .line 250
    :cond_5
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$700(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoPusher$VideoSourceListener;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v1}, Lcom/alivc/component/capture/VideoPusher;->access$100(Lcom/alivc/component/capture/VideoPusher;)J

    move-result-wide v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    div-long/2addr v2, v4

    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    .line 251
    invoke-static {v1}, Lcom/alivc/component/capture/VideoPusher;->access$200(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alivc/component/capture/VideoParam;->getCameraId()I

    move-result v4

    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v1}, Lcom/alivc/component/capture/VideoPusher;->access$400(Lcom/alivc/component/capture/VideoPusher;)I

    move-result v5

    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v1}, Lcom/alivc/component/capture/VideoPusher;->access$200(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alivc/component/capture/VideoParam;->getWidth()I

    move-result v6

    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v1}, Lcom/alivc/component/capture/VideoPusher;->access$200(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alivc/component/capture/VideoParam;->getHeight()I

    move-result v7

    const/16 v8, 0x11

    move-object v1, p1

    .line 250
    invoke-interface/range {v0 .. v8}, Lcom/alivc/component/capture/VideoPusher$VideoSourceListener;->onVideoFrame([BJIIIII)V

    goto/16 :goto_0

    .line 272
    :cond_6
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$1108(Lcom/alivc/component/capture/VideoPusher;)I

    goto :goto_1

    .line 275
    :cond_7
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alivc/component/capture/VideoPusher;->access$1102(Lcom/alivc/component/capture/VideoPusher;I)I

    goto :goto_1
.end method
