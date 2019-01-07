.class Lcom/alipay/mobile/nebulacore/core/H5PageImpl$3;
.super Ljava/lang/Object;
.source "H5PageImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/H5PageImpl;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$3;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 301
    const-string/jumbo v4, "0"

    .line 302
    .local v4, "walletMem":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$3;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->access$100(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$3;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->access$100(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$3;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->access$100(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lioq;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 307
    .local v3, "totalMem":Ljava/lang/String;
    invoke-static {}, Lioq;->a()Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, "recordUrls":Ljava/lang/String;
    const-string/jumbo v5, "H5PageImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "H5PAGE_INDEX create "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$3;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v7}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->access$200(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " walletMem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " urls "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " totalRam "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$3;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->access$200(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)I

    move-result v5

    const/16 v6, 0x8

    if-le v5, v6, :cond_0

    .line 311
    const-string/jumbo v5, "H5PageImpl"

    const-string/jumbo v6, "H5PAGE_INDEX > 8 send monitor"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 313
    .local v1, "monitorInfo":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v5, "urls"

    invoke-virtual {v1, v5, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string/jumbo v5, "usedMemory"

    invoke-virtual {v1, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string/jumbo v5, "totalMemory"

    invoke-virtual {v1, v5, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$3;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v6, "H5_VC_OverLimit"

    invoke-virtual {v5, v6, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 318
    .end local v1    # "monitorInfo":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "recordUrls":Ljava/lang/String;
    .end local v3    # "totalMem":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "H5PageImpl"

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
