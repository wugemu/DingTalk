.class Lcom/alibaba/lightapp/runtime/plugin/biz/Util$39;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/ResponseReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->saveImage(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/lightapp/runtime/ActionRequest;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 4233
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$39;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$39;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$39;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChange(Lcom/alibaba/doraemon/request/Request;JJ)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "l"    # J
    .param p4, "l1"    # J

    .prologue
    .line 4270
    return-void
.end method

.method public onRequestFinsh(Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
    .locals 8
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "response"    # Lcom/alibaba/doraemon/request/Response;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 4236
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_2

    .line 4237
    :cond_0
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$39;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    const/4 v5, 0x6

    const-string/jumbo v6, "Download image error"

    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$39;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v6, v6, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$13500(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 4238
    const-string/jumbo v5, "lightapp"

    const-string/jumbo v6, "biz.Util"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Fetch image err "

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_1

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4262
    :goto_1
    return-void

    .line 4238
    :cond_1
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getErrorDescription()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 4242
    :cond_2
    :try_start_0
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v3

    .line 4243
    .local v3, "inputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4244
    .local v1, "fileName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/DCIM/Camera/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4245
    .local v2, "filePath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lhfy;->a(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4246
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$39;->val$context:Landroid/content/Context;

    const-string/jumbo v5, "image/jpeg"

    invoke-static {v4, v2, v5}, Lcnx;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4247
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    new-instance v5, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$39$1;

    invoke-direct {v5, p0, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$39$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util$39;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 4253
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$39;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$39;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$13600(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4258
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "inputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :catch_0
    move-exception v0

    .line 4259
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$39;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    const/4 v5, 0x2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$39;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v6, v6, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$13800(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 4260
    const-string/jumbo v4, "lightapp"

    const-string/jumbo v5, "biz.Util"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Save image err "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4255
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "fileName":Ljava/lang/String;
    .restart local v2    # "filePath":Ljava/lang/String;
    .restart local v3    # "inputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$39;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    const/4 v5, 0x3

    const-string/jumbo v6, "Save image error"

    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$39;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v6, v6, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$13700(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 4256
    const-string/jumbo v4, "lightapp"

    const-string/jumbo v5, "biz.Util"

    const-string/jumbo v6, "Save image err "

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public onRequestStarted(Lcom/alibaba/doraemon/request/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;

    .prologue
    .line 4266
    return-void
.end method
