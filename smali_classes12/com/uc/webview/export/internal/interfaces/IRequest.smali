.class public interface abstract Lcom/uc/webview/export/internal/interfaces/IRequest;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Reflection;
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract getEventHandler()Lcom/uc/webview/export/internal/interfaces/EventHandler;
.end method

.method public abstract getHeaders()Ljava/util/Map;
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

.method public abstract getIsUCProxy()Z
.end method

.method public abstract getLoadtype()I
.end method

.method public abstract getMethod()Ljava/lang/String;
.end method

.method public abstract getRequestType()I
.end method

.method public abstract getUCHeaders()Ljava/util/Map;
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

.method public abstract getUploadDataMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract getUploadFileMap()Ljava/util/Map;
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

.method public abstract getUploadFileTotalLen()J
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract handleSslErrorResponse(Z)V
.end method

.method public abstract setEventHandler(Lcom/uc/webview/export/internal/interfaces/EventHandler;)V
.end method

.method public abstract waitUntilComplete(I)V
.end method
