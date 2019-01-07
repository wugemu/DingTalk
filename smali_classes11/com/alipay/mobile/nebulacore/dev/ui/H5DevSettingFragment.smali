.class public Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;
.super Landroid/app/Fragment;
.source "H5DevSettingFragment.java"


# static fields
.field private static final H5_DEV_APPID_INPUT:Ljava/lang/String; = "h5_dev_appid_input"

.field public static final TAG:Ljava/lang/String; = "H5DevSettingFragment"

.field private static final UPLOADAPPLOG_COMPLETE:I = 0xa


# instance fields
.field private buttonDoApp:Landroid/widget/Button;

.field private buttonH5Rpc:Landroid/widget/Button;

.field private configEdit:Landroid/widget/Button;

.field private copyDb:Landroid/widget/Button;

.field private editAppId:Landroid/widget/EditText;

.field private getConfig:Landroid/widget/Button;

.field private getDbConfig:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private offline:Landroid/widget/Button;

.field private perfTool:Landroid/widget/Button;

.field private testCase:Landroid/widget/Button;

.field private uploadApplog:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 354
    new-instance v0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$12;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$12;-><init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->getInputAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->updateApp()V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->openPage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->editAppId:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->uploadApplog:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static copyDataBaseToSD()Ljava/io/File;
    .locals 9

    .prologue
    .line 368
    const-string/jumbo v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 369
    const/4 v8, 0x0

    .line 399
    .local v0, "dbFile":Ljava/io/File;
    .local v1, "inChannel":Ljava/nio/channels/FileChannel;
    .local v6, "outChannel":Ljava/nio/channels/FileChannel;
    .local v8, "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v8

    .line 371
    .end local v0    # "dbFile":Ljava/io/File;
    .end local v1    # "inChannel":Ljava/nio/channels/FileChannel;
    .end local v6    # "outChannel":Ljava/nio/channels/FileChannel;
    .end local v8    # "file":Ljava/io/File;
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "nebula_app"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 372
    .restart local v0    # "dbFile":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "nebula_app.db"

    invoke-direct {v8, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 374
    .restart local v8    # "file":Ljava/io/File;
    const/4 v1, 0x0

    .restart local v1    # "inChannel":Ljava/nio/channels/FileChannel;
    const/4 v6, 0x0

    .line 377
    .restart local v6    # "outChannel":Ljava/nio/channels/FileChannel;
    :try_start_0
    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/io/File;)Z

    .line 378
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 379
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 380
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 381
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    if-eqz v1, :cond_2

    .line 388
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 391
    :cond_2
    if-eqz v6, :cond_0

    .line 392
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 395
    :catch_0
    move-exception v7

    .line 396
    .local v7, "e":Ljava/io/IOException;
    const-string/jumbo v2, "H5DevSettingFragment"

    invoke-static {v2, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 382
    .end local v7    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 383
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v2, "H5DevSettingFragment"

    const-string/jumbo v3, "copy dataBase to SD error."

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 387
    if-eqz v1, :cond_3

    .line 388
    :try_start_3
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 391
    :cond_3
    if-eqz v6, :cond_0

    .line 392
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 395
    :catch_2
    move-exception v7

    .line 396
    .local v7, "e":Ljava/io/IOException;
    const-string/jumbo v2, "H5DevSettingFragment"

    invoke-static {v2, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 386
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 387
    if-eqz v1, :cond_4

    .line 388
    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 391
    :cond_4
    if-eqz v6, :cond_5

    .line 392
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 397
    :cond_5
    :goto_1
    throw v2

    .line 395
    :catch_3
    move-exception v7

    .line 396
    .restart local v7    # "e":Ljava/io/IOException;
    const-string/jumbo v3, "H5DevSettingFragment"

    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private getInputAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->editAppId:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initClick()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->buttonDoApp:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$1;-><init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->buttonH5Rpc:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$2;-><init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->getConfig:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$3;-><init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->getDbConfig:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$4;-><init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->perfTool:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$5;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$5;-><init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->configEdit:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$6;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$6;-><init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->offline:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$7;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$7;-><init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->copyDb:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$8;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$8;-><init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->testCase:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$9;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$9;-><init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->uploadApplog:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$10;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$10;-><init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .prologue
    .line 87
    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_edit_appId:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->editAppId:Landroid/widget/EditText;

    .line 88
    const-string/jumbo v5, "h5_dev_appid_input"

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getStringConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, "inputAppId":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->editAppId:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 90
    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_rpc:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->buttonH5Rpc:Landroid/widget/Button;

    .line 91
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "appcenter_pre"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getConfigBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 92
    .local v0, "appCenterPreOpen":Z
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getGWFURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "gwfUrl":Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 94
    .local v1, "gwfUri":Landroid/net/Uri;
    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_dev_info_view:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 95
    .local v3, "infoView":Landroid/widget/TextView;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " \u9884\u53d1\u5c55\u53f0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v0, :cond_0

    const-string/jumbo v5, "\u5f00"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n\u7f51\u5173: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 97
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 95
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_do_app:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->buttonDoApp:Landroid/widget/Button;

    .line 99
    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_get_config:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->getConfig:Landroid/widget/Button;

    .line 100
    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_app_config:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->getDbConfig:Landroid/widget/Button;

    .line 101
    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_perf_tool:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->perfTool:Landroid/widget/Button;

    .line 102
    sget v5, Lcom/alipay/mobile/nebula/R$id;->config_edit:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->configEdit:Landroid/widget/Button;

    .line 103
    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_offline:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->offline:Landroid/widget/Button;

    .line 104
    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_copyDB:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->copyDb:Landroid/widget/Button;

    .line 105
    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_test_case:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->testCase:Landroid/widget/Button;

    .line 106
    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_bugme_ext_uploadapplog_nebulaApp_debug:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->uploadApplog:Landroid/widget/Button;

    .line 107
    return-void

    .line 95
    :cond_0
    const-string/jumbo v5, "\u5173"

    goto :goto_0
.end method

.method private openPage(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 404
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v2

    .line 405
    .local v2, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v2, :cond_0

    .line 406
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 407
    .local v3, "param":Landroid/os/Bundle;
    const-string/jumbo v4, "url"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    new-instance v1, Linz;

    invoke-direct {v1}, Linz;-><init>()V

    .line 1043
    .local v1, "h5Bundle":Linz;
    iput-object v3, v1, Linz;->b:Landroid/os/Bundle;

    .line 410
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Lcom/alipay/mobile/h5container/service/H5Service;->startPage(Linn;Linz;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    .end local v1    # "h5Bundle":Linz;
    .end local v2    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .end local v3    # "param":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "H5DevSettingFragment"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateApp()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 296
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 297
    .local v0, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v0, :cond_0

    .line 298
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 299
    .local v1, "progressDialog":Landroid/app/ProgressDialog;
    const-string/jumbo v2, "request..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 300
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 302
    const-string/jumbo v2, "URGENT"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11;

    invoke-direct {v3, p0, v1, v0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11;-><init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;Landroid/app/ProgressDialog;Lcom/alipay/mobile/nebula/provider/H5AppProvider;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 352
    .end local v1    # "progressDialog":Landroid/app/ProgressDialog;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 79
    sget v1, Lcom/alipay/mobile/nebula/R$layout;->h5_dev_setting_layout:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->initView(Landroid/view/View;)V

    .line 81
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->initClick()V

    .line 82
    return-object v0
.end method

.method public onPause()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 115
    const-string/jumbo v0, "h5_dev_appid_input"

    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->getInputAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->setStringConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 117
    return-void
.end method
