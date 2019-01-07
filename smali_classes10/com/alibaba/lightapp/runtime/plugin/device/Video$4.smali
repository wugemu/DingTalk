.class Lcom/alibaba/lightapp/runtime/plugin/device/Video$4;
.super Ljava/lang/Object;
.source "Video.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/device/Video;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Video;

.field final synthetic val$data:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/device/Video;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Video;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Video;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$4;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$4;->val$data:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "tempVideoPath"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 276
    .local v18, "tempVideoPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$4;->val$data:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "tempCoverPath"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 277
    .local v16, "tempCoverPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$4;->val$data:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "videoWidth"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$4;->val$data:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "videoHeight"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$4;->val$data:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "videoDuration"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 280
    .local v5, "duration":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Video;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/Video;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v14

    .line 281
    .local v14, "cacheDir":Ljava/io/File;
    if-nez v14, :cond_0

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Video;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/Video;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v14

    .line 284
    :cond_0
    new-instance v15, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "videoRecordTemp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    .local v15, "dir":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 286
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    .line 288
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "videoRecordTemp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".mp4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 289
    .local v4, "videoRecordUrl":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "videoRecordTemp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 290
    .local v20, "videoPicUrl":Ljava/lang/String;
    if-eqz v14, :cond_2

    .line 291
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 292
    new-instance v17, Ljava/io/File;

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    .local v17, "tempVideo":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 294
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lhcs;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 295
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 296
    .local v6, "videoSize":J
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Video;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->access$900(Lcom/alibaba/lightapp/runtime/plugin/device/Video;)V

    .line 299
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v19, "videoPic":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-static {v0, v2}, Lhcs;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 300
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    .line 301
    invoke-static {}, Lify;->a()Lify;

    move-result-object v8

    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/device/Video$4$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/lightapp/runtime/plugin/device/Video$4$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Video$4;Ljava/lang/String;IJ)V

    move-object/from16 v0, v20

    invoke-virtual {v8, v0, v2}, Lify;->a(Ljava/lang/String;Lifw;)V

    .line 335
    .end local v6    # "videoSize":J
    .end local v17    # "tempVideo":Ljava/io/File;
    .end local v19    # "videoPic":Ljava/io/File;
    :cond_2
    :goto_0
    return-void

    .line 328
    .restart local v6    # "videoSize":J
    .restart local v17    # "tempVideo":Ljava/io/File;
    :cond_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Video$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Video;

    const/4 v10, 0x0

    move-object v9, v4

    move v11, v5

    move-wide v12, v6

    invoke-static/range {v8 .. v13}, Lcom/alibaba/lightapp/runtime/plugin/device/Video;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/device/Video;Ljava/lang/String;Ljava/lang/String;IJ)V

    goto :goto_0
.end method
