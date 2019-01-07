.class public interface abstract Lcom/alibaba/android/user/connection/idl/services/IDLSkynetSettingService;
.super Ljava/lang/Object;
.source "IDLSkynetSettingService.java"

# interfaces
.implements Lizl;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract getUserDefaultSettings(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Lfer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateAlbumCover(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method
