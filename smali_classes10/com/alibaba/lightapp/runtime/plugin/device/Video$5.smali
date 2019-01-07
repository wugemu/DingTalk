.class Lcom/alibaba/lightapp/runtime/plugin/device/Video$5;
.super Ljava/lang/Object;
.source "Video.java"

# interfaces
.implements Lifw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/device/Video;->uploadVideo(Ljava/lang/String;Ljava/lang/String;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Video;

.field final synthetic val$duration:I

.field final synthetic val$videoRecordUrl:Ljava/lang/String;

.field final synthetic val$videoSize:J


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/device/Video;Ljava/lang/String;IJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Video;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Video;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$5;->val$videoRecordUrl:Ljava/lang/String;

    iput p3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$5;->val$duration:I

    iput-wide p4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$5;->val$videoSize:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUploadFail(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "errorDesc"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 369
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Video;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->access$1100(Lcom/alibaba/lightapp/runtime/plugin/device/Video;)V

    .line 370
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Video;

    const/4 v1, 0x3

    invoke-static {v1, p3}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Video;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->access$1200(Lcom/alibaba/lightapp/runtime/plugin/device/Video;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->access$1500(Lcom/alibaba/lightapp/runtime/plugin/device/Video;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method public onUploadFinished(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 351
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Video;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->access$1100(Lcom/alibaba/lightapp/runtime/plugin/device/Video;)V

    .line 352
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Video;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/Video;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$5;->val$videoRecordUrl:Ljava/lang/String;

    invoke-static {v2, p2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 355
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "mediaId"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    const-string/jumbo v2, "duration"

    iget v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$5;->val$duration:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 357
    const-string/jumbo v2, "videoThumbUrl"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$5;->val$videoRecordUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    const-string/jumbo v2, "videoSize"

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$5;->val$videoSize:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :goto_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Video;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Video;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->access$1200(Lcom/alibaba/lightapp/runtime/plugin/device/Video;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->access$1400(Lcom/alibaba/lightapp/runtime/plugin/device/Video;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 365
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 361
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Video;

    const/4 v3, 0x3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Video;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->access$1200(Lcom/alibaba/lightapp/runtime/plugin/device/Video;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->access$1300(Lcom/alibaba/lightapp/runtime/plugin/device/Video;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateUploadProgress(Ljava/lang/String;III)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "totalSize"    # I
    .param p3, "uploadSize"    # I
    .param p4, "progress"    # I

    .prologue
    .line 347
    return-void
.end method
