.class public interface abstract Lcom/alibaba/alimei/sdk/api/SettingApi;
.super Ljava/lang/Object;
.source "SettingApi.java"


# static fields
.field public static final NEVER:I = 0x2

.field public static final WIFI_AND_MOBILE_NET:I = 0x1

.field public static final WIFI_ONLY:I


# virtual methods
.method public abstract getAutoDownloadMailDetailStatus()I
.end method

.method public abstract getCopySendMail2Sent()Z
.end method

.method public abstract getFolderSync2Server(I)Z
.end method

.method public abstract getSelectedFolderByType(I)Ljava/lang/String;
.end method

.method public abstract getShownType()I
.end method

.method public abstract querySenderMail(Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract selectFolderAsType(Ljava/lang/String;ILxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setAutoDownloadMailDetail(ILxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setCopySendMail2Sent(ZLxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setFolderSync2Server(IZLxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setSenderMail(Ljava/lang/String;Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setShownType(ILxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showAdvanceSetting()Z
.end method
