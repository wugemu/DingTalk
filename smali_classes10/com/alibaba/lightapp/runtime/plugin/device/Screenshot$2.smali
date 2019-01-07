.class Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$2;
.super Ljava/lang/Object;
.source "Screenshot.java"

# interfaces
.implements Lifv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->doUploadImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lifv",
        "<",
        "Lifx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(ILjava/lang/String;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 218
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->access$700(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;)V

    .line 220
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string/jumbo v0, "lightapp"

    sget-object v1, Lcom/alibaba/lightapp/runtime/Plugin;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "ScreenShotDetector doUploadFile error "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 222
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 221
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public onProgress(JJI)V
    .locals 0
    .param p1, "l"    # J
    .param p3, "l1"    # J
    .param p5, "i"    # I

    .prologue
    .line 189
    return-void
.end method

.method public onSuccess(Lifx;)V
    .locals 6
    .param p1, "uploadResponse"    # Lifx;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 193
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->access$700(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;)V

    .line 195
    const/4 v2, 0x0

    .line 197
    .local v2, "mediaId":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1026
    iget-object v2, p1, Lifx;->a:Ljava/lang/String;

    .line 201
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 202
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 204
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "screenshotId"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;

    const-string/jumbo v4, "screenshot"

    invoke-static {v3, v4, v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;->access$800(Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 206
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 209
    const-string/jumbo v3, "lightapp"

    sget-object v4, Lcom/alibaba/lightapp/runtime/Plugin;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 212
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    const-string/jumbo v3, "lightapp"

    sget-object v4, Lcom/alibaba/lightapp/runtime/Plugin;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "ScreenShotDetector doUploadFile mediaId is null"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 185
    check-cast p1, Lifx;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/device/Screenshot$2;->onSuccess(Lifx;)V

    return-void
.end method
