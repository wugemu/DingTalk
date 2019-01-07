.class Lcom/alibaba/lightapp/runtime/plugin/device/Video$4$1;
.super Ljava/lang/Object;
.source "Video.java"

# interfaces
.implements Lifw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/device/Video$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Video$4;

.field final synthetic val$duration:I

.field final synthetic val$videoRecordUrl:Ljava/lang/String;

.field final synthetic val$videoSize:J


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/device/Video$4;Ljava/lang/String;IJ)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/device/Video$4;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$4$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Video$4;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$4$1;->val$videoRecordUrl:Ljava/lang/String;

    iput p3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$4$1;->val$duration:I

    iput-wide p4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$4$1;->val$videoSize:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUploadFail(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "errorDesc"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 322
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$4$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Video$4;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Video;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$4$1;->val$videoRecordUrl:Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$4$1;->val$duration:I

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$4$1;->val$videoSize:J

    invoke-static/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/device/Video;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 323
    return-void
.end method

.method public onUploadFinished(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 310
    const-string/jumbo v2, ""

    .line 312
    .local v2, "remoteUrl":Ljava/lang/String;
    :try_start_0
    invoke-static {p2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 317
    :goto_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$4$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Video$4;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Video;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$4$1;->val$videoRecordUrl:Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$4$1;->val$duration:I

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$4$1;->val$videoSize:J

    invoke-static/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/device/Video;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 318
    return-void

    .line 313
    :catch_0
    move-exception v6

    .line 314
    .local v6, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    const-string/jumbo v0, "lightapp"

    sget-object v1, Lcom/alibaba/lightapp/runtime/Plugin;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "MediaIdEncodingException "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v6}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {v6}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateUploadProgress(Ljava/lang/String;III)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "totalSize"    # I
    .param p3, "uploadSize"    # I
    .param p4, "progress"    # I

    .prologue
    .line 306
    return-void
.end method
