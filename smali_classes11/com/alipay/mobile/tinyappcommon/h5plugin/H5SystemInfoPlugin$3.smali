.class Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$3;
.super Ljava/lang/Object;
.source "H5SystemInfoPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

.field final synthetic val$context:Liny;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;Liny;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$3;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$3;->val$context:Liny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, "density":F
    const/4 v5, 0x0

    .line 241
    .local v5, "width":I
    :try_start_0
    iget-object v6, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$3;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    .line 242
    invoke-static {v6}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->access$000(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)Ljava/lang/ref/WeakReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 243
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    if-eqz v1, :cond_0

    .line 244
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 245
    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    div-float/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 248
    :cond_0
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 249
    .local v3, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v6, "model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string/jumbo v6, "pixelRatio"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string/jumbo v6, "windowWidth"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string/jumbo v6, "windowHeight"

    iget-object v7, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$3;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    iget-object v8, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$3;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    invoke-static {v8}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->access$500(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)Liop;

    move-result-object v8

    invoke-virtual {v7, v8, v0, v1}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->getHeight(Liop;FLandroid/util/DisplayMetrics;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    if-eqz v1, :cond_1

    .line 255
    const-string/jumbo v6, "screenWidth"

    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string/jumbo v6, "screenHeight"

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_1
    const-string/jumbo v6, "system"

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string/jumbo v6, "platform"

    const-string/jumbo v7, "Android"

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string/jumbo v6, "apiLevel"

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string/jumbo v6, "storage"

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->getInternalMemorySize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string/jumbo v6, "currentBattery"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$3;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    invoke-static {v8}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->access$900(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string/jumbo v6, "brand"

    sget-object v7, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v6, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$3;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    invoke-static {v6}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->access$500(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)Liop;

    move-result-object v6

    if-nez v6, :cond_2

    .line 270
    const-string/jumbo v6, "transparentTitle"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :goto_0
    iget-object v6, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$3;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    invoke-virtual {v6, v3}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->appendSystemInfo(Lcom/alibaba/fastjson/JSONObject;)V

    .line 281
    iget-object v6, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$3;->val$context:Liny;

    invoke-interface {v6, v3}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 286
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :goto_1
    return-void

    .line 272
    .restart local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v3    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    iget-object v6, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$3;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    invoke-static {v6}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->access$500(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)Liop;

    move-result-object v6

    invoke-interface {v6}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "transparentTitle"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, "trans":Ljava/lang/String;
    const-string/jumbo v6, "auto"

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "always"

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "custom"

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 274
    :cond_3
    const-string/jumbo v6, "transparentTitle"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 282
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "trans":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 283
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "H5SystemInfoPlugin"

    const-string/jumbo v7, "exception detail: "

    invoke-static {v6, v7, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 284
    iget-object v6, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$3;->val$context:Liny;

    const/16 v7, 0x69

    const-string/jumbo v8, "\u83b7\u53d6\u7cfb\u7edf\u4fe1\u606f\u5931\u8d25"

    invoke-interface {v6, v7, v8}, Liny;->sendError(ILjava/lang/String;)V

    goto :goto_1

    .line 276
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v3    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .restart local v4    # "trans":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string/jumbo v6, "transparentTitle"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
