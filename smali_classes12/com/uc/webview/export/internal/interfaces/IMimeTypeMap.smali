.class public interface abstract Lcom/uc/webview/export/internal/interfaces/IMimeTypeMap;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Interface;
.end annotation


# virtual methods
.method public abstract getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getFileExtensionFromUrlEx(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract hasExtension(Ljava/lang/String;)Z
.end method

.method public abstract hasMimeType(Ljava/lang/String;)Z
.end method
