.class public Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
.super Ljava/lang/Object;
.source "H5DownloadRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final ALIPAY:Ljava/lang/String; = "alipay"

.field public static final AUTO_LOGIN:Ljava/lang/String; = "auto_login"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final DOWNLOAD:Ljava/lang/String; = "downloads"

.field public static final FULL_RPC_SCENE:Ljava/lang/String; = "full_rpc_scene"

.field public static final NET_CHANGE:Ljava/lang/String; = "net_change"

.field public static final SYNC_SCENE:Ljava/lang/String; = "sync_scene"

.field private static final TAG:Ljava/lang/String; = "H5DownloadRequest"

.field public static final USER_LEAVE_HINT_SCENE:Ljava/lang/String; = "user_leave_hint_scene"

.field public static final nebulaDownload:Ljava/lang/String; = "nebulaDownload"

.field public static final nebulaH5App:Ljava/lang/String; = "nebulaH5App"

.field private static sLastDestPath:Ljava/lang/String;


# instance fields
.field private appId:Ljava/lang/String;

.field private autoInstall:Z

.field private autoLaunch:Z

.field private description:Ljava/lang/String;

.field private downloadUrl:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private needProgress:Z

.field private scene:Ljava/lang/String;

.field private showRunningNotification:Z

.field private targetFileName:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->sLastDestPath:Ljava/lang/String;

    .line 299
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest$1;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->targetFileName:Ljava/lang/String;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->needProgress:Z

    .line 92
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->targetFileName:Ljava/lang/String;

    .line 84
    iput-boolean v1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->needProgress:Z

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->downloadUrl:Ljava/lang/String;

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->title:Ljava/lang/String;

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->description:Ljava/lang/String;

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->showRunningNotification:Z

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->appId:Ljava/lang/String;

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->fileName:Ljava/lang/String;

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->targetFileName:Ljava/lang/String;

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->autoInstall:Z

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->needProgress:Z

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->autoLaunch:Z

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->version:Ljava/lang/String;

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->scene:Ljava/lang/String;

    .line 276
    return-void

    :cond_0
    move v0, v2

    .line 267
    goto :goto_0

    :cond_1
    move v0, v2

    .line 271
    goto :goto_1

    :cond_2
    move v0, v2

    .line 272
    goto :goto_2

    :cond_3
    move v1, v2

    .line 273
    goto :goto_3
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest$1;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static getAlipayAmrDownloadPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 208
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "alipay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 209
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "nebulaDownload"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "downloads"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "destPath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->sLastDestPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 218
    const-string/jumbo v1, "H5DownloadRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " H5FileUtil mkdirs : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->mkdirs(Ljava/lang/String;Z)Z

    .line 221
    :cond_1
    return-object v0

    .line 215
    .end local v0    # "destPath":Ljava/lang/String;
    :catch_0
    move-exception v1

    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->sLastDestPath:Ljava/lang/String;

    .restart local v0    # "destPath":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getDefaultDownloadDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 200
    invoke-static {p0}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getAlipayAmrDownloadPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOldDownloadDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 241
    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/util/H5ZExternalFile;

    const-string/jumbo v2, "nebulaH5App"

    const-string/jumbo v3, "downloads"

    invoke-direct {v1, p0, v2, v3}, Lcom/alipay/mobile/nebula/appcenter/util/H5ZExternalFile;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .local v1, "h5ZExternalFile":Lcom/alipay/mobile/nebula/appcenter/util/H5ZExternalFile;
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/util/H5ZExternalFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "downloadDir":Ljava/lang/String;
    const-string/jumbo v2, "H5DownloadRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "downloadDir:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/util/H5ZExternalFile;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/util/H5ZExternalFile;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 247
    const-string/jumbo v2, "H5DownloadRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "path not exist but fail to create: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .end local v0    # "downloadDir":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 250
    .restart local v0    # "downloadDir":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/util/H5ZExternalFile;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 251
    const-string/jumbo v2, "H5DownloadRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " dir exist,but not directory."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getScene()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->scene:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->targetFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoInstall()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->autoInstall:Z

    return v0
.end method

.method public isAutoLaunch()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->autoLaunch:Z

    return v0
.end method

.method public isFromPreDownload()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 228
    const-string/jumbo v0, "full_rpc_scene"

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->scene:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "sync_scene"

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->scene:Ljava/lang/String;

    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "user_leave_hint_scene"

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->scene:Ljava/lang/String;

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "auto_login"

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->scene:Ljava/lang/String;

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "net_change"

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->scene:Ljava/lang/String;

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 228
    goto :goto_0
.end method

.method public isNeedProgress()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->needProgress:Z

    return v0
.end method

.method public isShowRunningNotification()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->showRunningNotification:Z

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->appId:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setAutoInstall(Z)V
    .locals 0
    .param p1, "autoInstall"    # Z

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->autoInstall:Z

    .line 167
    return-void
.end method

.method public setAutoLaunch(Z)V
    .locals 0
    .param p1, "autoLaunch"    # Z

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->autoLaunch:Z

    .line 183
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->description:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->downloadUrl:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->fileName:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setNeedProgress(Z)V
    .locals 0
    .param p1, "needProgress"    # Z

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->needProgress:Z

    .line 175
    return-void
.end method

.method public setScene(Ljava/lang/String;)V
    .locals 0
    .param p1, "scene"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->scene:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setShowRunningNotification(Z)V
    .locals 0
    .param p1, "showRunningNotification"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->showRunningNotification:Z

    .line 142
    return-void
.end method

.method public setTargetFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetFileName"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->targetFileName:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->title:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->version:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 285
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->showRunningNotification:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->targetFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->autoInstall:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->needProgress:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->autoLaunch:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->scene:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    return-void

    :cond_0
    move v0, v2

    .line 288
    goto :goto_0

    :cond_1
    move v0, v2

    .line 292
    goto :goto_1

    :cond_2
    move v0, v2

    .line 293
    goto :goto_2

    :cond_3
    move v1, v2

    .line 294
    goto :goto_3
.end method
