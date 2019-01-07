.class public interface abstract Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;
.super Ljava/lang/Object;
.source "H5AppCenterPresetProvider.java"


# virtual methods
.method public abstract getCommonResourceAppList()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEnableDegradeApp()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getH5PresetPkg()Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;
.end method

.method public abstract getPresetAppInfo()Ljava/io/InputStream;
.end method

.method public abstract getPresetAppInfoObject()Ljava/io/InputStream;
.end method

.method public abstract getTinyCommonApp()Ljava/lang/String;
.end method
