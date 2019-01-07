.class public Lantlr/MismatchedTokenException;
.super Lantlr/RecognitionException;
.source "MismatchedTokenException.java"


# static fields
.field public static final NOT_RANGE:I = 0x4

.field public static final NOT_SET:I = 0x6

.field public static final NOT_TOKEN:I = 0x2

.field public static final RANGE:I = 0x3

.field public static final SET:I = 0x5

.field public static final TOKEN:I = 0x1


# instance fields
.field public expecting:I

.field public mismatchType:I

.field public node:Lny;

.field public set:Lob;

.field public token:Lns;

.field tokenNames:[Ljava/lang/String;

.field tokenText:Ljava/lang/String;

.field public upper:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 44
    const-string/jumbo v0, "Mismatched Token: expecting any AST node"

    const-string/jumbo v1, "<AST>"

    invoke-direct {p0, v0, v1, v2, v2}, Lantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lns;IIZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 95
    const-string/jumbo v0, "Mismatched Token"

    invoke-virtual {p2}, Lns;->a()I

    move-result v1

    invoke-virtual {p2}, Lns;->c()I

    move-result v2

    invoke-direct {p0, v0, p6, v1, v2}, Lantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lantlr/MismatchedTokenException;->tokenNames:[Ljava/lang/String;

    .line 97
    iput-object p2, p0, Lantlr/MismatchedTokenException;->token:Lns;

    .line 98
    invoke-virtual {p2}, Lns;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    .line 99
    if-eqz p5, :cond_0

    const/4 v0, 0x4

    :goto_0
    iput v0, p0, Lantlr/MismatchedTokenException;->mismatchType:I

    .line 100
    iput p3, p0, Lantlr/MismatchedTokenException;->expecting:I

    .line 101
    iput p4, p0, Lantlr/MismatchedTokenException;->upper:I

    .line 102
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public constructor <init>([Ljava/lang/String;Lns;IZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 106
    const-string/jumbo v0, "Mismatched Token"

    invoke-virtual {p2}, Lns;->a()I

    move-result v1

    invoke-virtual {p2}, Lns;->c()I

    move-result v2

    invoke-direct {p0, v0, p5, v1, v2}, Lantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    .line 107
    iput-object p1, p0, Lantlr/MismatchedTokenException;->tokenNames:[Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lantlr/MismatchedTokenException;->token:Lns;

    .line 109
    invoke-virtual {p2}, Lns;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    .line 110
    if-eqz p4, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lantlr/MismatchedTokenException;->mismatchType:I

    .line 111
    iput p3, p0, Lantlr/MismatchedTokenException;->expecting:I

    .line 112
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>([Ljava/lang/String;Lns;Lob;ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 116
    const-string/jumbo v0, "Mismatched Token"

    invoke-virtual {p2}, Lns;->a()I

    move-result v1

    invoke-virtual {p2}, Lns;->c()I

    move-result v2

    invoke-direct {p0, v0, p5, v1, v2}, Lantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    .line 117
    iput-object p1, p0, Lantlr/MismatchedTokenException;->tokenNames:[Ljava/lang/String;

    .line 118
    iput-object p2, p0, Lantlr/MismatchedTokenException;->token:Lns;

    .line 119
    invoke-virtual {p2}, Lns;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    .line 120
    if-eqz p4, :cond_0

    const/4 v0, 0x6

    :goto_0
    iput v0, p0, Lantlr/MismatchedTokenException;->mismatchType:I

    .line 121
    iput-object p3, p0, Lantlr/MismatchedTokenException;->set:Lob;

    .line 122
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public constructor <init>([Ljava/lang/String;Lny;IIZ)V
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 49
    const-string/jumbo v2, "Mismatched Token"

    const-string/jumbo v3, "<AST>"

    if-nez p2, :cond_0

    move v1, v0

    :goto_0
    if-nez p2, :cond_1

    :goto_1
    invoke-direct {p0, v2, v3, v1, v0}, Lantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lantlr/MismatchedTokenException;->tokenNames:[Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lantlr/MismatchedTokenException;->node:Lny;

    .line 52
    if-nez p2, :cond_2

    .line 53
    const-string/jumbo v0, "<empty tree>"

    iput-object v0, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    .line 58
    :goto_2
    if-eqz p5, :cond_3

    const/4 v0, 0x4

    :goto_3
    iput v0, p0, Lantlr/MismatchedTokenException;->mismatchType:I

    .line 59
    iput p3, p0, Lantlr/MismatchedTokenException;->expecting:I

    .line 60
    iput p4, p0, Lantlr/MismatchedTokenException;->upper:I

    .line 61
    return-void

    .line 49
    :cond_0
    invoke-interface {p2}, Lny;->getLine()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lny;->getColumn()I

    move-result v0

    goto :goto_1

    .line 56
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    goto :goto_2

    .line 58
    :cond_3
    const/4 v0, 0x3

    goto :goto_3
.end method

.method public constructor <init>([Ljava/lang/String;Lny;IZ)V
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 65
    const-string/jumbo v2, "Mismatched Token"

    const-string/jumbo v3, "<AST>"

    if-nez p2, :cond_0

    move v1, v0

    :goto_0
    if-nez p2, :cond_1

    :goto_1
    invoke-direct {p0, v2, v3, v1, v0}, Lantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lantlr/MismatchedTokenException;->tokenNames:[Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lantlr/MismatchedTokenException;->node:Lny;

    .line 68
    if-nez p2, :cond_2

    .line 69
    const-string/jumbo v0, "<empty tree>"

    iput-object v0, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    .line 74
    :goto_2
    if-eqz p4, :cond_3

    const/4 v0, 0x2

    :goto_3
    iput v0, p0, Lantlr/MismatchedTokenException;->mismatchType:I

    .line 75
    iput p3, p0, Lantlr/MismatchedTokenException;->expecting:I

    .line 76
    return-void

    .line 65
    :cond_0
    invoke-interface {p2}, Lny;->getLine()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lny;->getColumn()I

    move-result v0

    goto :goto_1

    .line 72
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    goto :goto_2

    .line 74
    :cond_3
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public constructor <init>([Ljava/lang/String;Lny;Lob;Z)V
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 80
    const-string/jumbo v2, "Mismatched Token"

    const-string/jumbo v3, "<AST>"

    if-nez p2, :cond_0

    move v1, v0

    :goto_0
    if-nez p2, :cond_1

    :goto_1
    invoke-direct {p0, v2, v3, v1, v0}, Lantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lantlr/MismatchedTokenException;->tokenNames:[Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lantlr/MismatchedTokenException;->node:Lny;

    .line 83
    if-nez p2, :cond_2

    .line 84
    const-string/jumbo v0, "<empty tree>"

    iput-object v0, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    .line 89
    :goto_2
    if-eqz p4, :cond_3

    const/4 v0, 0x6

    :goto_3
    iput v0, p0, Lantlr/MismatchedTokenException;->mismatchType:I

    .line 90
    iput-object p3, p0, Lantlr/MismatchedTokenException;->set:Lob;

    .line 91
    return-void

    .line 80
    :cond_0
    invoke-interface {p2}, Lny;->getLine()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lny;->getColumn()I

    move-result v0

    goto :goto_1

    .line 87
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    goto :goto_2

    .line 89
    :cond_3
    const/4 v0, 0x5

    goto :goto_3
.end method

.method private tokenName(I)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 163
    const-string/jumbo v0, "<Set of tokens>"

    .line 169
    :goto_0
    return-object v0

    .line 165
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lantlr/MismatchedTokenException;->tokenNames:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_2

    .line 166
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_2
    iget-object v0, p0, Lantlr/MismatchedTokenException;->tokenNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 128
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 130
    iget v0, p0, Lantlr/MismatchedTokenException;->mismatchType:I

    packed-switch v0, :pswitch_data_0

    .line 154
    invoke-super {p0}, Lantlr/RecognitionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 132
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "expecting "

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lantlr/MismatchedTokenException;->expecting:I

    invoke-direct {p0, v2}, Lantlr/MismatchedTokenException;->tokenName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, ", found \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 135
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "expecting anything but "

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lantlr/MismatchedTokenException;->expecting:I

    invoke-direct {p0, v2}, Lantlr/MismatchedTokenException;->tokenName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "; got it anyway"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 138
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "expecting token in range: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lantlr/MismatchedTokenException;->expecting:I

    invoke-direct {p0, v2}, Lantlr/MismatchedTokenException;->tokenName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, ".."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Lantlr/MismatchedTokenException;->upper:I

    invoke-direct {p0, v2}, Lantlr/MismatchedTokenException;->tokenName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, ", found \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 141
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "expecting token NOT in range: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lantlr/MismatchedTokenException;->expecting:I

    invoke-direct {p0, v2}, Lantlr/MismatchedTokenException;->tokenName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, ".."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Lantlr/MismatchedTokenException;->upper:I

    invoke-direct {p0, v2}, Lantlr/MismatchedTokenException;->tokenName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, ", found \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 145
    :pswitch_4
    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v0, "expecting "

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lantlr/MismatchedTokenException;->mismatchType:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    const-string/jumbo v0, "NOT "

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "one of ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    iget-object v0, p0, Lantlr/MismatchedTokenException;->set:Lob;

    invoke-virtual {v0}, Lob;->a()[I

    move-result-object v2

    .line 147
    const/4 v0, 0x0

    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 148
    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    aget v3, v2, v0

    invoke-direct {p0, v3}, Lantlr/MismatchedTokenException;->tokenName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 145
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_1

    .line 151
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "), found \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
