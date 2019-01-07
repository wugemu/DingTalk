.class public interface abstract Lcom/uc/webview/export/internal/interfaces/EventHandler;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Reflection;
.end annotation


# virtual methods
.method public abstract certificate(Landroid/net/http/SslCertificate;)V
.end method

.method public abstract data([BI)V
.end method

.method public abstract endData()V
.end method

.method public abstract error(ILjava/lang/String;)V
.end method

.method public abstract getNetworkEngin()I
.end method

.method public abstract getResourceType()I
.end method

.method public abstract handleSslErrorRequest(Landroid/net/http/SslError;)Z
.end method

.method public abstract headers(Ljava/lang/Object;)V
.end method

.method public abstract headers(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract isSynchronous()Z
.end method

.method public abstract setNetworkEngin(I)V
.end method

.method public abstract setRequest(Lcom/uc/webview/export/internal/interfaces/IRequest;)V
.end method

.method public abstract setResourceType(I)V
.end method

.method public abstract status(IIILjava/lang/String;)V
.end method
