.class final Lcom/alipay/mobile/nebula/log/H5Logger$1;
.super Ljava/lang/Object;
.source "H5Logger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/log/H5Logger;->performanceLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$param1:Ljava/lang/String;

.field final synthetic val$param2:Ljava/lang/String;

.field final synthetic val$param3:Ljava/lang/String;

.field final synthetic val$params4:Ljava/lang/String;

.field final synthetic val$seedID:Ljava/lang/String;

.field final synthetic val$ucId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/alipay/mobile/nebula/log/H5Logger$1;->val$seedID:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/nebula/log/H5Logger$1;->val$ucId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebula/log/H5Logger$1;->val$param1:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebula/log/H5Logger$1;->val$param2:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/nebula/log/H5Logger$1;->val$param3:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/mobile/nebula/log/H5Logger$1;->val$params4:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 97
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 99
    .local v8, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v8, :cond_1

    .line 101
    const-string/jumbo v0, "h5_log_blackList"

    invoke-interface {v8, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 102
    .local v10, "value":Ljava/lang/String;
    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v9

    .line 103
    .local v9, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v9, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5Logger$1;->val$seedID:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    const-string/jumbo v0, "H5Logger"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "h5_log_blackList contain "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebula/log/H5Logger$1;->val$seedID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .end local v8    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v9    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v10    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 109
    .restart local v8    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebula/log/H5Logger$1;->val$seedID:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebula/log/H5Logger$1;->val$ucId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebula/log/H5Logger$1;->val$param1:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/nebula/log/H5Logger$1;->val$param2:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/nebula/log/H5Logger$1;->val$param3:Ljava/lang/String;

    iget-object v6, p0, Lcom/alipay/mobile/nebula/log/H5Logger$1;->val$params4:Ljava/lang/String;

    sget-object v7, Lcom/alipay/mobile/nebula/log/H5Logger;->bizScenario:Ljava/lang/String;

    invoke-interface/range {v0 .. v7}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->performanceLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
