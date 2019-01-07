.class public Lantlr/TokenStreamRecognitionException;
.super Lantlr/TokenStreamException;
.source "TokenStreamRecognitionException.java"


# instance fields
.field public recog:Lantlr/RecognitionException;


# direct methods
.method public constructor <init>(Lantlr/RecognitionException;)V
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p1}, Lantlr/RecognitionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lantlr/TokenStreamException;-><init>(Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lantlr/TokenStreamRecognitionException;->recog:Lantlr/RecognitionException;

    .line 20
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lantlr/TokenStreamRecognitionException;->recog:Lantlr/RecognitionException;

    invoke-virtual {v0}, Lantlr/RecognitionException;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
