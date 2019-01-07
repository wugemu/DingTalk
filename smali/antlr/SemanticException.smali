.class public Lantlr/SemanticException;
.super Lantlr/RecognitionException;
.source "SemanticException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lantlr/RecognitionException;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 17
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lantlr/SemanticException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 22
    return-void
.end method
