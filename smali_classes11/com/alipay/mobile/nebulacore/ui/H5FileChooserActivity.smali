.class public Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;
.super Lcom/alipay/mobile/nebula/activity/H5BaseActivity;
.source "H5FileChooserActivity.java"


# static fields
.field private static final REQPERMISSIONS_PERMISSIONS_REQUESTCODE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "H5FileChooserActivity"


# instance fields
.field private cameraFilePath:Ljava/lang/String;

.field private final reqPermissionsPermissions:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;-><init>()V

    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->reqPermissionsPermissions:[Ljava/lang/String;

    return-void
.end method

.method private createCamcorderIntent()Landroid/content/Intent;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private createCameraIntent()Landroid/content/Intent;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 101
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v1, "cameraIntent":Landroid/content/Intent;
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 104
    .local v2, "externalDataDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "browser-photos"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "cameraDataDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->cameraFilePath:Ljava/lang/String;

    .line 109
    const-string/jumbo v3, "output"

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->cameraFilePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 110
    return-object v1
.end method

.method private varargs createChooserIntent(Landroid/content/Context;[Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intents"    # [Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CHOOSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "chooser":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 96
    const-string/jumbo v1, "android.intent.extra.TITLE"

    sget v2, Lcom/alipay/mobile/nebula/R$string;->h5_file_chooser:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    return-object v0
.end method

.method private createDefaultOpenableIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string/jumbo v2, "*/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const/4 v2, 0x3

    new-array v2, v2, [Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->createCameraIntent()Landroid/content/Intent;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->createCamcorderIntent()Landroid/content/Intent;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 88
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->createSoundRecorderIntent()Landroid/content/Intent;

    move-result-object v4

    aput-object v4, v2, v3

    .line 87
    invoke-direct {p0, p1, v2}, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->createChooserIntent(Landroid/content/Context;[Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 89
    .local v0, "chooser":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 90
    return-object v0
.end method

.method private createSoundRecorderIntent()Landroid/content/Intent;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v7, -0x1

    .line 130
    if-ne p1, v2, :cond_3

    .line 131
    const-string/jumbo v4, "H5FileChooserActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onActivityResult intent "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    if-eqz p3, :cond_0

    if-eq p2, v7, :cond_4

    :cond_0
    const/4 v3, 0x0

    .line 134
    .local v3, "result":Landroid/net/Uri;
    :goto_0
    if-ne p2, v7, :cond_1

    .line 135
    const/4 v1, 0x0

    .line 137
    .local v1, "cameraFile":Ljava/io/File;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->cameraFilePath:Ljava/lang/String;

    if-eqz v4, :cond_5

    new-instance v1, Ljava/io/File;

    .end local v1    # "cameraFile":Ljava/io/File;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->cameraFilePath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .restart local v1    # "cameraFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 139
    .local v2, "newCameraFileCreated":Z
    :goto_1
    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    .line 140
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 143
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 149
    .end local v1    # "cameraFile":Ljava/io/File;
    .end local v2    # "newCameraFileCreated":Z
    :cond_1
    if-nez v3, :cond_2

    .line 150
    const-string/jumbo v4, "H5FileChooserActivity"

    const-string/jumbo v5, "result uri is null"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 154
    .local v0, "callbackIntent":Landroid/content/Intent;
    const-string/jumbo v4, "FILE_CHOOSER_RESULT"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string/jumbo v4, "fileUri"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 156
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v4

    .line 157
    invoke-virtual {v4, v0}, Ldq;->b(Landroid/content/Intent;)V

    .line 160
    .end local v0    # "callbackIntent":Landroid/content/Intent;
    .end local v3    # "result":Landroid/net/Uri;
    :cond_3
    const-string/jumbo v4, "H5FileChooserActivity"

    const-string/jumbo v5, "onActivityResult finish"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->finish()V

    .line 162
    return-void

    .line 133
    :cond_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 138
    .restart local v1    # "cameraFile":Ljava/io/File;
    .restart local v3    # "result":Landroid/net/Uri;
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->requestWindowFeature(I)Z

    .line 49
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->reqPermissions()V

    .line 50
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 123
    const-string/jumbo v0, "H5FileChooserActivity"

    const-string/jumbo v1, "EditAvatarModActivity onDestroy"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-super {p0}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->onDestroy()V

    .line 125
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 167
    packed-switch p1, :pswitch_data_0

    .line 184
    :goto_0
    return-void

    .line 169
    :pswitch_0
    invoke-static {p3}, Ligd;->a([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const-string/jumbo v1, "H5FileChooserActivity"

    const-string/jumbo v2, "get CAMERA permission success!"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :try_start_0
    invoke-direct {p0, p0}, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->createDefaultOpenableIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v1, "H5FileChooserActivity"

    const-string/jumbo v2, "exception detail"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 178
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->showDeniedForCamera()V

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method reqPermissions()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 53
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->reqPermissionsPermissions:[Ljava/lang/String;

    .line 54
    invoke-static {v1}, Ligd;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    const-string/jumbo v1, "H5FileChooserActivity"

    const-string/jumbo v2, "get CAMERA permission success!"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :try_start_0
    invoke-direct {p0, p0}, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->createDefaultOpenableIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v1, "H5FileChooserActivity"

    const-string/jumbo v2, "exception detail"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 63
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->reqPermissionsPermissions:[Ljava/lang/String;

    .line 1068
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1070
    array-length v5, v3

    move v1, v2

    .line 1072
    :goto_1
    if-ge v1, v5, :cond_2

    .line 1073
    aget-object v6, v3, v1

    .line 1074
    new-array v7, v8, [Ljava/lang/String;

    aput-object v6, v7, v2

    invoke-static {v7}, Ligd;->a([Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1075
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1072
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1079
    :cond_2
    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method showDeniedForCamera()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebula/R$string;->h5_choose_camera:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12c

    invoke-static {p0, v1, v2}, Lcom/alipay/mobile/nebulacore/view/H5Toast;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 71
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 72
    .local v0, "callbackIntent":Landroid/content/Intent;
    const-string/jumbo v1, "FILE_CHOOSER_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string/jumbo v1, "fileUri"

    const-string/jumbo v2, ""

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 74
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    .line 75
    invoke-virtual {v1, v0}, Ldq;->b(Landroid/content/Intent;)V

    .line 76
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->finish()V

    .line 77
    return-void
.end method
