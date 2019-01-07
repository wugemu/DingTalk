.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin$2;
.super Ljava/lang/Object;
.source "MiniDownloadPlugin.java"

# interfaces
.implements Lhna$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhna$a",
        "<",
        "Lhmx$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhmx;

.field final synthetic b:Liny;

.field final synthetic c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;Lhmx;Liny;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin$2;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin$2;->a:Lhmx;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin$2;->b:Liny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 102
    const-string/jumbo v0, "MiniDownloadPlugin"

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin$2;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin$2;->a:Lhmx;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public final a(I)V
    .locals 3
    .param p1, "percentage"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 125
    const-string/jumbo v0, "MiniDownloadPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onProgress "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 130
    const-string/jumbo v1, "MiniDownloadPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onError "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin$2;->b:Liny;

    if-eqz v1, :cond_1

    .line 133
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 134
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "error"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    if-eqz p2, :cond_0

    .line 136
    const-string/jumbo v1, "errorMessage"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin$2;->b:Liny;

    invoke-interface {v1, v0}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 141
    .end local v0    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin$2;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin$2;->a:Lhmx;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 142
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 99
    check-cast p1, Lhmx$a;

    .line 1108
    if-eqz p1, :cond_0

    iget-object v0, p1, Lhmx$a;->a:Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;

    if-nez v0, :cond_1

    .line 1109
    :cond_0
    const-string/jumbo v0, "MiniDownloadPlugin"

    const-string/jumbo v1, "onSuccess but result is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    :goto_0
    return-void

    .line 1113
    :cond_1
    const-string/jumbo v0, "MiniDownloadPlugin"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "onSuccess"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p1, Lhmx$a;->a:Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->localId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin$2;->b:Liny;

    if-eqz v0, :cond_2

    .line 1116
    invoke-static {}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a()Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;

    iget-object v0, p1, Lhmx$a;->a:Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a(Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;)Ljava/lang/String;

    move-result-object v0

    .line 1117
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin$2;->b:Liny;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin$2;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;

    invoke-static {v2, v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-interface {v1, v0}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 1120
    :cond_2
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin$2;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin$2;->a:Lhmx;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
