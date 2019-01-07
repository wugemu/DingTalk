.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$4$1;
.super Ljava/lang/Object;
.source "MiniappVideoPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$4;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$4;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$4;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$4$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$4;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$4$1;->a:Landroid/content/Intent;

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
    const/4 v10, 0x0

    .line 342
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$4$1;->a:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 343
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 345
    :try_start_0
    const-string/jumbo v6, "com.workapp.choose.pictire.from.album.results"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 346
    .local v3, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 347
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .line 348
    .local v2, "photoPickResult":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    iget-object v5, v2, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->originUrl:Ljava/lang/String;

    .line 350
    .local v5, "videoFilePath":Ljava/lang/String;
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 351
    .local v4, "retObj":Lcom/alibaba/fastjson/JSONObject;
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$4$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$4;

    iget-object v6, v6, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$4;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;

    invoke-static {v6, v5, v4}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 352
    const-string/jumbo v6, "tempFilePath"

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$4$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$4;

    iget-object v7, v7, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$4;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;

    invoke-static {v7, v5}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string/jumbo v6, "size"

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lhcs;->b(Ljava/io/File;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$4$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$4;

    iget-object v6, v6, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$4;->a:Liny;

    invoke-interface {v6, v4}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    .end local v2    # "photoPickResult":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    .end local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    .end local v4    # "retObj":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "videoFilePath":Ljava/lang/String;
    :goto_0
    return-void

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 359
    const-string/jumbo v6, "MiniappVideoPlugin"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "choose video error: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lhmv;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$4$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$4;

    iget-object v6, v6, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$4;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$4$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$4;

    iget-object v7, v7, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$4;->a:Liny;

    const/4 v8, 0x3

    invoke-static {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;Liny;I)V

    goto :goto_0
.end method
