.class public interface abstract Lcom/alipay/mobile/nebula/process/H5IpcServer;
.super Ljava/lang/Object;
.source "H5IpcServer.java"


# virtual methods
.method public abstract containDevAppId(Ljava/lang/String;)Z
.end method

.method public abstract containPreferAppId(Ljava/lang/String;)Z
.end method

.method public abstract decodeToPath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract downloadApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract encodeToLocalId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAudioPathById(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getBooleanConfig(Ljava/lang/String;Z)Z
.end method

.method public abstract getConfig(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDevNbsv(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getExtern_token()Ljava/lang/String;
.end method

.method public abstract getLoginId()Ljava/lang/String;
.end method

.method public abstract getNick()Ljava/lang/String;
.end method

.method public abstract getPreferVersion(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getStringConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTinyProcessUseConfigList()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUserAvatar()Ljava/lang/String;
.end method

.method public abstract getUserId()Ljava/lang/String;
.end method

.method public abstract getVideoPathById(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract hasAccessToDebug(Ljava/lang/String;)Z
.end method

.method public abstract isDownloading(Ljava/lang/String;)Z
.end method

.method public abstract isLogin()Z
.end method

.method public abstract killTinyOpenMainUrl(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract process(Landroid/net/Uri;)I
.end method

.method public abstract removeApiPermission(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract removeAppConfigByte(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract removeDevApp(Ljava/lang/String;)V
.end method

.method public abstract setStringConfig(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract syncScanBitmapFromPath(Ljava/lang/String;)Ljava/lang/String;
.end method
