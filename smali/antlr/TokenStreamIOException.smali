.class public Lantlr/TokenStreamIOException;
.super Lantlr/TokenStreamException;
.source "TokenStreamIOException.java"


# instance fields
.field public io:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lantlr/TokenStreamException;-><init>(Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lantlr/TokenStreamIOException;->io:Ljava/io/IOException;

    .line 25
    return-void
.end method
