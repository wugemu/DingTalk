.class Lcom/alibaba/lightapp/runtime/plugin/biz/Util$27;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

.field final synthetic val$data:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 3312
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$27;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$27;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3315
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$27;->val$data:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Landroid/os/Bundle;)Ldco;

    move-result-object v10

    .line 3316
    .local v10, "videoRecordResult":Ldco;
    if-nez v10, :cond_1

    .line 3317
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$27;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    const/4 v2, 0x3

    const-string/jumbo v3, "Unknown error"

    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$27;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$8100(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$8200(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 3372
    :cond_0
    :goto_0
    return-void

    .line 3320
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$27;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$8300(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v7

    .line 3321
    .local v7, "cacheDir":Ljava/io/File;
    if-nez v7, :cond_2

    .line 3322
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$27;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$8400(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    .line 3324
    :cond_2
    new-instance v8, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "videoRecordTemp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3325
    .local v8, "dir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3326
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 3328
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "videoRecordTemp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3329
    .local v0, "videoRecordUrl":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 3330
    iget-object v1, v10, Ldco;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3331
    new-instance v9, Ljava/io/File;

    iget-object v1, v10, Ldco;->a:Ljava/lang/String;

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3332
    .local v9, "tempVideo":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3333
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v1}, Lhcs;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3334
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 3336
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$27;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .line 3338
    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$8500(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$27;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .line 3340
    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$8600(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$27;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .line 3341
    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$8700(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Ljava/lang/String;

    move-result-object v4

    const v5, 0xea60

    new-instance v6, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$27$1;

    invoke-direct {v6, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$27$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util$27;)V

    .line 3336
    invoke-static/range {v0 .. v6}, Lcot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;ILcot$a;)V

    goto/16 :goto_0
.end method
