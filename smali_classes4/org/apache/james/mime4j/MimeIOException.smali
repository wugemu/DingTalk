.class public Lorg/apache/james/mime4j/MimeIOException;
.super Ljava/io/IOException;
.source "MimeIOException.java"


# static fields
.field private static final serialVersionUID:J = 0x4ad9f6dd674625f1L


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/MimeException;)V
    .locals 1
    .param p1, "cause"    # Lorg/apache/james/mime4j/MimeException;

    .prologue
    .line 43
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/MimeIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 45
    return-void

    .line 43
    :cond_0
    invoke-virtual {p1}, Lorg/apache/james/mime4j/MimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lorg/apache/james/mime4j/MimeIOException;->getCause()Lorg/apache/james/mime4j/MimeException;

    move-result-object v0

    return-object v0
.end method

.method public getCause()Lorg/apache/james/mime4j/MimeException;
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/MimeException;

    return-object v0
.end method
