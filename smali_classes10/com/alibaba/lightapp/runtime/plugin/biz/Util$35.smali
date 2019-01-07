.class Lcom/alibaba/lightapp/runtime/plugin/biz/Util$35;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/ResponseReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->shareImage(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
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
    .line 4039
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$35;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$35;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$35;->val$context:Landroid/content/Context;

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
    .line 4076
    return-void
.end method

.method public onRequestFinsh(Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
    .locals 10
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "response"    # Lcom/alibaba/doraemon/request/Response;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 4042
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->isSuccess()Z

    move-result v6

    if-nez v6, :cond_2

    .line 4043
    :cond_0
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$35;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    const/4 v7, 0x6

    const-string/jumbo v8, "Download image error"

    invoke-static {v7, v8}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$35;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v8, v8, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$12300(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 4044
    const-string/jumbo v7, "lightapp"

    const-string/jumbo v8, "biz.Util"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Fetch image err "

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_1

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v8, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4068
    :goto_1
    return-void

    .line 4044
    :cond_1
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getErrorDescription()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 4048
    :cond_2
    :try_start_0
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v4

    .line 4049
    .local v4, "inputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4050
    .local v2, "fileName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/DCIM/Camera/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4051
    .local v3, "filePath":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v6}, Lhfy;->a(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4052
    invoke-static {}, Lhah;->a()Lhah;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v6, v3, v7, v8}, Lhah;->a(Ljava/lang/String;FF)Ljava/lang/String;

    move-result-object v5

    .line 4053
    .local v5, "newPath":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 4054
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4055
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$35;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$35;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v8, v6, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$35;->val$context:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    invoke-static {v7, v0, v8, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$12200(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4064
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "inputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    .end local v5    # "newPath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 4065
    .local v1, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$35;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    const/4 v7, 0x2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$35;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v8, v8, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$12600(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 4066
    const-string/jumbo v6, "lightapp"

    const-string/jumbo v7, "biz.Util"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Share image err "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4057
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "fileName":Ljava/lang/String;
    .restart local v3    # "filePath":Ljava/lang/String;
    .restart local v4    # "inputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    .restart local v5    # "newPath":Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$35;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    const/4 v7, 0x3

    const-string/jumbo v8, "Compress image error"

    invoke-static {v7, v8}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$35;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v8, v8, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$12400(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 4058
    const-string/jumbo v6, "lightapp"

    const-string/jumbo v7, "biz.Util"

    const-string/jumbo v8, "Compress image err"

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4061
    .end local v5    # "newPath":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$35;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    const/4 v7, 0x3

    const-string/jumbo v8, "Save image error"

    invoke-static {v7, v8}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$35;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v8, v8, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$12500(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 4062
    const-string/jumbo v6, "lightapp"

    const-string/jumbo v7, "biz.Util"

    const-string/jumbo v8, "Save image err"

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public onRequestStarted(Lcom/alibaba/doraemon/request/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;

    .prologue
    .line 4072
    return-void
.end method
