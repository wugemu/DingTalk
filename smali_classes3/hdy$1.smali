.class public final Lhdy$1;
.super Ljava/lang/Object;
.source "FileChooserDelegate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhdy;


# direct methods
.method public constructor <init>(Lhdy;)V
    .locals 0
    .param p1, "this$0"    # Lhdy;

    .prologue
    .line 153
    iput-object p1, p0, Lhdy$1;->a:Lhdy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 16
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 157
    const-string/jumbo v10, "H5"

    const/4 v11, 0x0

    invoke-static {}, Lhdy;->e()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string/jumbo v15, " onChoose File which=>"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v10, v11, v12, v13}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v10, v0, Lhdy$1;->a:Lhdy;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lhdy;->a(Lhdy;Z)Z

    .line 160
    if-nez p2, :cond_1

    .line 161
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 162
    .local v3, "intent":Landroid/os/Bundle;
    const-string/jumbo v10, "album_single"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 163
    const-string/jumbo v10, "album_need_crop"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 164
    const-string/jumbo v10, "album_choose_num"

    const/16 v11, 0x9

    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 165
    const-string/jumbo v10, "album_need_pre_compress"

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 166
    const-string/jumbo v10, "send_origin_picture"

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 167
    const-string/jumbo v10, "album_need_pre_decode"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 168
    const-string/jumbo v10, "completed_back_to_target_action"

    const-string/jumbo v11, "lightapp.runtime.webview.action.CHOOSE_PHOTO"

    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lhdy$1;->a:Lhdy;

    invoke-static {v11}, Lhdy;->a(Lhdy;)Landroid/app/Activity;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lhdy$1;->a:Lhdy;

    invoke-static {v12}, Lhdy;->a(Lhdy;)Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12, v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 200
    .end local v3    # "intent":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    const/4 v10, 0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_2

    .line 172
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v4

    .line 173
    .local v4, "mainModuleInterface":Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;
    move-object/from16 v0, p0

    iget-object v10, v0, Lhdy$1;->a:Lhdy;

    invoke-static {v10}, Lhdy;->a(Lhdy;)Landroid/app/Activity;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lhdy$1;->a:Lhdy;

    invoke-static {v11}, Lhdy;->a(Lhdy;)Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "lightapp.runtime.webview.action.CHOOSE_FILE"

    const/16 v13, 0x9

    invoke-virtual {v4, v10, v11, v12, v13}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 175
    .end local v4    # "mainModuleInterface":Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;
    :cond_2
    const/4 v10, 0x2

    move/from16 v0, p2

    if-ne v0, v10, :cond_0

    .line 176
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    .line 177
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/Object;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    .line 178
    invoke-virtual {v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    const-string/jumbo v11, ".mp4"

    .line 180
    invoke-virtual {v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 181
    .local v9, "videoPath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v7, "videoFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_3

    .line 184
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    :cond_3
    :goto_1
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v10, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .local v8, "videoIntent":Landroid/content/Intent;
    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 194
    .local v5, "outputUrl":Landroid/net/Uri;
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x18

    if-lt v10, v11, :cond_4

    .line 195
    move-object/from16 v0, p0

    iget-object v10, v0, Lhdy$1;->a:Lhdy;

    invoke-static {v10}, Lhdy;->a(Lhdy;)Landroid/app/Activity;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lhdy$1;->a:Lhdy;

    invoke-static {v11}, Lhdy;->a(Lhdy;)Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lhcs;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v7}, Landroid/support/v4/content/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 197
    :cond_4
    const-string/jumbo v10, "output"

    invoke-virtual {v8, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 198
    move-object/from16 v0, p0

    iget-object v10, v0, Lhdy$1;->a:Lhdy;

    invoke-static {v10}, Lhdy;->a(Lhdy;)Landroid/app/Activity;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v10, v8, v11}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 185
    .end local v5    # "outputUrl":Landroid/net/Uri;
    .end local v8    # "videoIntent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 186
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 187
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 188
    .local v6, "t":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
