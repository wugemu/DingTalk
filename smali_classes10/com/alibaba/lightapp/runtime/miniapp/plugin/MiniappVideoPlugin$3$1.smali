.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$3$1;
.super Ljava/lang/Object;
.source "MiniappVideoPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$3;->onGetResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$3;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$3;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$3;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$3;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$3$1;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 302
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$3$1;->a:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 303
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 304
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Landroid/os/Bundle;)Ldco;

    move-result-object v4

    .line 305
    .local v4, "videoRecordResult":Ldco;
    if-eqz v4, :cond_0

    .line 306
    iget-object v3, v4, Ldco;->a:Ljava/lang/String;

    .line 308
    .local v3, "tempVideoPath":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 309
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v5, "tempFilePath"

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$3;

    iget-object v6, v6, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$3;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;

    invoke-static {v6, v3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string/jumbo v5, "duration"

    iget v6, v4, Ldco;->e:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string/jumbo v5, "size"

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lhcs;->b(Ljava/io/File;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string/jumbo v5, "height"

    iget v6, v4, Ldco;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string/jumbo v5, "width"

    iget v6, v4, Ldco;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$3;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$3;->a:Liny;

    invoke-interface {v5, v2}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "tempVideoPath":Ljava/lang/String;
    .end local v4    # "videoRecordResult":Ldco;
    :goto_0
    return-void

    .line 316
    .restart local v3    # "tempVideoPath":Ljava/lang/String;
    .restart local v4    # "videoRecordResult":Ldco;
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 318
    const-string/jumbo v5, "MiniappVideoPlugin"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "record video file error: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lhmv;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v3    # "tempVideoPath":Ljava/lang/String;
    .end local v4    # "videoRecordResult":Ldco;
    :cond_0
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$3;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$3;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$3;

    iget-object v6, v6, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$3;->a:Liny;

    const/4 v7, 0x3

    invoke-static {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;Liny;I)V

    goto :goto_0
.end method
