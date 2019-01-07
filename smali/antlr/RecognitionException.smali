.class public Lantlr/RecognitionException;
.super Lantlr/ANTLRException;
.source "RecognitionException.java"


# instance fields
.field public column:I

.field public fileName:Ljava/lang/String;

.field public line:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 16
    const-string/jumbo v0, "parsing error"

    invoke-direct {p0, v0}, Lantlr/ANTLRException;-><init>(Ljava/lang/String;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lantlr/RecognitionException;->fileName:Ljava/lang/String;

    .line 18
    iput v1, p0, Lantlr/RecognitionException;->line:I

    .line 19
    iput v1, p0, Lantlr/RecognitionException;->column:I

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 27
    invoke-direct {p0, p1}, Lantlr/ANTLRException;-><init>(Ljava/lang/String;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lantlr/RecognitionException;->fileName:Ljava/lang/String;

    .line 29
    iput v1, p0, Lantlr/RecognitionException;->line:I

    .line 30
    iput v1, p0, Lantlr/RecognitionException;->column:I

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lantlr/ANTLRException;-><init>(Ljava/lang/String;)V

    .line 44
    iput-object p2, p0, Lantlr/RecognitionException;->fileName:Ljava/lang/String;

    .line 45
    iput p3, p0, Lantlr/RecognitionException;->line:I

    .line 46
    iput p4, p0, Lantlr/RecognitionException;->column:I

    .line 47
    return-void
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lantlr/RecognitionException;->column:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lantlr/RecognitionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lantlr/RecognitionException;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLine()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lantlr/RecognitionException;->line:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lnm;->a()Lnm;

    move-result-object v1

    iget-object v2, p0, Lantlr/RecognitionException;->fileName:Ljava/lang/String;

    iget v3, p0, Lantlr/RecognitionException;->line:I

    iget v4, p0, Lantlr/RecognitionException;->column:I

    invoke-virtual {v1, v2, v3, v4}, Lnm;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/RecognitionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
