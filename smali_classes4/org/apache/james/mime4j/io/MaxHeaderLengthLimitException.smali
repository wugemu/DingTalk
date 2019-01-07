.class public Lorg/apache/james/mime4j/io/MaxHeaderLengthLimitException;
.super Lorg/apache/james/mime4j/MimeException;
.source "MaxHeaderLengthLimitException.java"


# static fields
.field private static final serialVersionUID:J = 0x7bd9732624cdd7f9L


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
