.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1$1;
.super Ljava/lang/Object;
.source "MiniUploadPlugin.java"

# interfaces
.implements Lhna$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1;->run()V
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
        "Lhmy$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhmy;

.field final synthetic b:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1;Lhmy;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1$1;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1$1;->a:Lhmy;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1$1;->b:Lcom/alibaba/fastjson/JSONObject;

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
    .line 121
    const-string/jumbo v0, "MiniUploadPlugin"

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1$1;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1$1;->a:Lhmy;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method

.method public final a(I)V
    .locals 3
    .param p1, "percentage"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 150
    const-string/jumbo v0, "MiniUploadPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onProgress "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
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
    .line 155
    const-string/jumbo v1, "MiniUploadPlugin"

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

    .line 157
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1$1;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1;->b:Liny;

    if-eqz v1, :cond_1

    .line 158
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 159
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "error"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    if-eqz p2, :cond_0

    .line 161
    const-string/jumbo v1, "errorMessage"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1$1;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1;->b:Liny;

    invoke-interface {v1, v0}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 166
    .end local v0    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1$1;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1$1;->a:Lhmy;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 118
    check-cast p1, Lhmy$a;

    .line 1127
    if-nez p1, :cond_0

    .line 1128
    const-string/jumbo v0, "MiniUploadPlugin"

    const-string/jumbo v1, "onSuccess but result is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    :goto_0
    return-void

    .line 1132
    :cond_0
    const-string/jumbo v1, "MiniUploadPlugin"

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "onSuccess"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lhmy$a;->a:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    const/4 v0, 0x2

    iget-object v3, p1, Lhmy$a;->b:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1$1;->b:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1$1;->b:Lcom/alibaba/fastjson/JSONObject;

    .line 1134
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v2, v3

    .line 1132
    invoke-static {v2}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1$1;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1;->b:Liny;

    if-eqz v0, :cond_1

    .line 1137
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1138
    const-string/jumbo v1, "statusCode"

    iget v2, p1, Lhmy$a;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    const-string/jumbo v1, "data"

    iget-object v2, p1, Lhmy$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    const-string/jumbo v1, "header"

    iget-object v2, p1, Lhmy$a;->c:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    const-string/jumbo v1, "success"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1$1;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1;->b:Liny;

    invoke-interface {v1, v0}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 1145
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1$1;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1$1;->a:Lhmy;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1134
    :cond_2
    const-string/jumbo v0, "null"

    goto :goto_1
.end method
