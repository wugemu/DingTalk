.class final Lcom/taobao/weex/utils/TypefaceUtil$1;
.super Ljava/lang/Object;
.source "TypefaceUtil.java"

# interfaces
.implements Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/utils/TypefaceUtil;->downloadFontByNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fontFamily:Ljava/lang/String;

.field final synthetic val$fullPath:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/taobao/weex/utils/TypefaceUtil$1;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/taobao/weex/utils/TypefaceUtil$1;->val$fullPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/utils/TypefaceUtil$1;->val$fontFamily:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHeadersReceived(ILjava/util/Map;)V
    .locals 0
    .param p1, "statusCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    return-void
.end method

.method public final onHttpFinish(Lcom/taobao/weex/common/WXResponse;)V
    .locals 6
    .param p1, "response"    # Lcom/taobao/weex/common/WXResponse;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 195
    const/4 v2, 0x0

    .line 196
    .local v2, "statusCode":I
    iget-object v3, p1, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 198
    :try_start_0
    iget-object v3, p1, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 205
    :cond_0
    :goto_0
    const/16 v3, 0xc8

    if-lt v2, v3, :cond_4

    const/16 v3, 0x12b

    if-gt v2, v3, :cond_4

    iget-object v3, p1, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    if-eqz v3, :cond_4

    .line 206
    iget-object v3, p0, Lcom/taobao/weex/utils/TypefaceUtil$1;->val$fullPath:Ljava/lang/String;

    iget-object v4, p1, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/taobao/weex/utils/WXFileUtils;->saveFile(Ljava/lang/String;[BLandroid/content/Context;)Z

    move-result v1

    .line 207
    .local v1, "result":Z
    if-eqz v1, :cond_3

    .line 208
    iget-object v3, p0, Lcom/taobao/weex/utils/TypefaceUtil$1;->val$fullPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/weex/utils/TypefaceUtil$1;->val$fontFamily:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/taobao/weex/utils/TypefaceUtil;->access$000(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 218
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 219
    invoke-static {}, Lcom/taobao/weex/utils/TypefaceUtil;->access$100()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/weex/utils/TypefaceUtil$1;->val$fontFamily:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/utils/FontDO;

    .line 220
    .local v0, "fontDO":Lcom/taobao/weex/utils/FontDO;
    if-eqz v0, :cond_2

    .line 221
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/taobao/weex/utils/FontDO;->setState(I)V

    .line 224
    .end local v0    # "fontDO":Lcom/taobao/weex/utils/FontDO;
    :cond_2
    return-void

    .line 200
    .end local v1    # "result":Z
    :catch_0
    move-exception v3

    const/4 v2, 0x0

    .line 201
    const-string/jumbo v3, "TypefaceUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "IWXHttpAdapter onHttpFinish statusCode:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    .restart local v1    # "result":Z
    :cond_3
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 211
    const-string/jumbo v3, "TypefaceUtil"

    const-string/jumbo v4, "downloadFontByNetwork() onHttpFinish success, but save file failed."

    invoke-static {v3, v4}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 215
    .end local v1    # "result":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "result":Z
    goto :goto_1
.end method

.method public final onHttpResponseProgress(I)V
    .locals 0
    .param p1, "loadedLength"    # I

    .prologue
    .line 191
    return-void
.end method

.method public final onHttpStart()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 173
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const-string/jumbo v0, "TypefaceUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "downloadFontByNetwork begin url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/weex/utils/TypefaceUtil$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_0
    return-void
.end method

.method public final onHttpUploadProgress(I)V
    .locals 0
    .param p1, "uploadProgress"    # I

    .prologue
    .line 186
    return-void
.end method
