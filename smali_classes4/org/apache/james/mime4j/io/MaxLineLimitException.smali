.class public Lorg/apache/james/mime4j/io/MaxLineLimitException;
.super Ljava/io/IOException;
.source "MaxLineLimitException.java"


# static fields
.field private static final serialVersionUID:J = 0x19c1ca7eb42b098aL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method
