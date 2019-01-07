.class Lcom/alibaba/lightapp/runtime/plugin/device/Audio$1;
.super Ljava/lang/Object;
.source "Audio.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/ResponseReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->download(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

.field final synthetic val$mediaId:Ljava/lang/String;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$1;->val$mediaId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

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
    .line 116
    return-void
.end method

.method public onRequestFinsh(Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
    .locals 7
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "response"    # Lcom/alibaba/doraemon/request/Response;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x3

    .line 81
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 82
    const/4 v2, 0x0

    .line 84
    .local v2, "iStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :try_start_0
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v2

    .line 85
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)Ljava/io/File;

    move-result-object v0

    .line 86
    .local v0, "audioFile":Ljava/io/File;
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-static {v4, v2, v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$100(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Ljava/io/InputStream;Ljava/io/File;)V

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "localPath":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$200(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$1;->val$mediaId:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$1;->val$mediaId:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$300(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v6, v6, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$400(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    if-eqz v2, :cond_0

    .line 96
    :try_start_1
    invoke-virtual {v2}, Lcom/alibaba/doraemon/request/RequestInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    .end local v0    # "audioFile":Ljava/io/File;
    .end local v2    # "iStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    .end local v3    # "localPath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 97
    .restart local v0    # "audioFile":Ljava/io/File;
    .restart local v2    # "iStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    .restart local v3    # "localPath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 90
    .end local v0    # "audioFile":Ljava/io/File;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "localPath":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    const/4 v5, 0x3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v6, v6, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$500(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    if-eqz v2, :cond_0

    .line 96
    :try_start_3
    invoke-virtual {v2}, Lcom/alibaba/doraemon/request/RequestInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 97
    :catch_2
    move-exception v1

    .line 98
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 94
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_1

    .line 96
    :try_start_4
    invoke-virtual {v2}, Lcom/alibaba/doraemon/request/RequestInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 99
    :cond_1
    :goto_1
    throw v4

    .line 97
    :catch_3
    move-exception v1

    .line 98
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 104
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "iStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :cond_2
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    const-string/jumbo v5, "download error"

    invoke-static {v6, v5}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v6, v6, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$600(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRequestStarted(Lcom/alibaba/doraemon/request/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;

    .prologue
    .line 111
    return-void
.end method
