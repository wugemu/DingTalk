.class public Lorg/apache/james/mime4j/io/MaxHeaderLimitException;
.super Lorg/apache/james/mime4j/MimeException;
.source "MaxHeaderLimitException.java"


# static fields
.field private static final serialVersionUID:J = 0x1de5804864f14e11L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method
