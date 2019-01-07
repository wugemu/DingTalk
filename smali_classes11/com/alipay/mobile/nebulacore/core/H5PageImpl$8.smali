.class Lcom/alipay/mobile/nebulacore/core/H5PageImpl$8;
.super Ljava/lang/Object;
.source "H5PageImpl.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->checkDslErrorAndExit(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

.field final synthetic val$exitTabScene:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .prologue
    .line 865
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$8;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    iput-boolean p2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$8;->val$exitTabScene:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 865
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$8;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 868
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$8;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->access$602(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Z)Z

    .line 869
    const-string/jumbo v2, "H5PageImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "check dsl result : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 872
    .local v0, "dslObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v0, :cond_0

    :try_start_0
    const-string/jumbo v2, "isDSLError"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "true"

    const-string/jumbo v3, "isDSLError"

    .line 873
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 874
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$8;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v3, "dslErrorLog"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$8;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    iget-boolean v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$8;->val$exitTabScene:Z

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->doExitPage(Z)Z

    .line 880
    return-void

    .line 876
    :catch_0
    move-exception v1

    .line 877
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "H5PageImpl"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
