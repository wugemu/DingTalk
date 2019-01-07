.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$1;
.super Ljava/lang/Object;
.source "MiniappVideoPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Liny;

.field final synthetic d:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;Ljava/lang/String;Landroid/app/Activity;Liny;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$1;->d:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$1;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$1;->c:Liny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    invoke-static {}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a()Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$1;->a:Ljava/lang/String;

    invoke-static {v7}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "localId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a()Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;

    move-result-object v3

    .line 119
    .local v3, "res":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    if-eqz v3, :cond_2

    iget-object v7, v3, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->filePath:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, v3, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->fileType:Ljava/lang/String;

    sget-object v10, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;->VIDEO:Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;

    .line 120
    invoke-virtual {v10}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;->getExtName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 121
    iget-object v1, v3, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->filePath:Ljava/lang/String;

    .line 124
    .local v1, "filePath":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 125
    .local v8, "videoTime":J
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v10, "yyyyMMdd-HHmmss"

    invoke-direct {v7, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "videoDate":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$1;->b:Landroid/app/Activity;

    invoke-static {v7}, Lhcs;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, ".mp4"

    aput-object v12, v10, v11

    .line 127
    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .local v5, "videoFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 129
    .local v6, "videoPath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v5}, Lhcs;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 130
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$1;->b:Landroid/app/Activity;

    invoke-static {v7, v6}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 131
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$1;->c:Liny;

    invoke-interface {v7}, Liny;->sendSuccess()V

    .line 149
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v4    # "videoDate":Ljava/lang/String;
    .end local v5    # "videoFile":Ljava/io/File;
    .end local v6    # "videoPath":Ljava/lang/String;
    .end local v8    # "videoTime":J
    :goto_0
    return-void

    .line 133
    .restart local v1    # "filePath":Ljava/lang/String;
    .restart local v4    # "videoDate":Ljava/lang/String;
    .restart local v5    # "videoFile":Ljava/io/File;
    .restart local v6    # "videoPath":Ljava/lang/String;
    .restart local v8    # "videoTime":J
    :cond_0
    const-string/jumbo v7, "MiniappVideoPlugin"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "insert into album error"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "videoPath:"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v6, v10, v11

    invoke-static {v7, v10}, Lhmv;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$1;->d:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$1;->c:Liny;

    const/16 v11, 0xd

    invoke-static {v7, v10, v11}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;Liny;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    .end local v4    # "videoDate":Ljava/lang/String;
    .end local v5    # "videoFile":Ljava/io/File;
    .end local v6    # "videoPath":Ljava/lang/String;
    .end local v8    # "videoTime":J
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 143
    const-string/jumbo v7, "MiniappVideoPlugin"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "save video error: "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Lhmv;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$1;->d:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$1;->c:Liny;

    const/4 v11, 0x3

    invoke-static {v7, v10, v11}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;Liny;I)V

    goto :goto_0

    .line 137
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v4    # "videoDate":Ljava/lang/String;
    .restart local v5    # "videoFile":Ljava/io/File;
    .restart local v6    # "videoPath":Ljava/lang/String;
    .restart local v8    # "videoTime":J
    :cond_1
    :try_start_1
    const-string/jumbo v7, "MiniappVideoPlugin"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "copy video file error"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "origin file path:"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v1, v10, v11

    const/4 v11, 0x3

    const-string/jumbo v12, "copy to:"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    aput-object v6, v10, v11

    invoke-static {v7, v10}, Lhmv;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$1;->d:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$1;->c:Liny;

    const/16 v11, 0xd

    invoke-static {v7, v10, v11}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;Liny;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 147
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v4    # "videoDate":Ljava/lang/String;
    .end local v5    # "videoFile":Ljava/io/File;
    .end local v6    # "videoPath":Ljava/lang/String;
    .end local v8    # "videoTime":J
    :cond_2
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$1;->d:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$1;->c:Liny;

    const/16 v11, 0xc

    invoke-static {v7, v10, v11}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;Liny;I)V

    goto :goto_0
.end method
