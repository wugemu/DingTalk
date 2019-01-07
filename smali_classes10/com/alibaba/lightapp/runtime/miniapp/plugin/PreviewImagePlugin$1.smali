.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin$1;
.super Ljava/lang/Object;
.source "PreviewImagePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/h5container/api/H5Event;

.field final synthetic b:Liny;

.field final synthetic c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin;Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin$1;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin$1;->b:Liny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    .line 1121
    iget-object v7, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 44
    .local v7, "params":Lcom/alibaba/fastjson/JSONObject;
    if-nez v7, :cond_0

    .line 45
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin$1$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin$1;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 70
    :goto_0
    return-void

    .line 54
    :cond_0
    :try_start_0
    const-string/jumbo v0, "images"

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 55
    .local v4, "images":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 56
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin$1$2;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin$1$2;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin$1;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    .end local v4    # "images":Lcom/alibaba/fastjson/JSONArray;
    :catch_0
    move-exception v6

    .line 67
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 64
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v4    # "images":Lcom/alibaba/fastjson/JSONArray;
    :cond_2
    :try_start_1
    const-string/jumbo v0, "init"

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v3

    .line 65
    .local v3, "current":I
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin$1;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin$1;->b:Liny;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin;Lcom/alipay/mobile/h5container/api/H5Event;Liny;ILcom/alibaba/fastjson/JSONArray;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
