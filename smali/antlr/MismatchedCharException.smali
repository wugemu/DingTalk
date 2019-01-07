.class public Lantlr/MismatchedCharException;
.super Lantlr/RecognitionException;
.source "MismatchedCharException.java"


# static fields
.field public static final CHAR:I = 0x1

.field public static final NOT_CHAR:I = 0x2

.field public static final NOT_RANGE:I = 0x4

.field public static final NOT_SET:I = 0x6

.field public static final RANGE:I = 0x3

.field public static final SET:I = 0x5


# instance fields
.field public expecting:I

.field public foundChar:I

.field public mismatchType:I

.field public scanner:Lantlr/CharScanner;

.field public set:Lob;

.field public upper:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "Mismatched char"

    invoke-direct {p0, v0}, Lantlr/RecognitionException;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(CCCZLantlr/CharScanner;)V
    .locals 4

    .prologue
    .line 48
    const-string/jumbo v0, "Mismatched char"

    .line 1136
    const/4 v1, 0x0

    .line 48
    invoke-virtual {p5}, Lantlr/CharScanner;->e()I

    move-result v2

    invoke-virtual {p5}, Lantlr/CharScanner;->c()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 49
    if-eqz p4, :cond_0

    const/4 v0, 0x4

    :goto_0
    iput v0, p0, Lantlr/MismatchedCharException;->mismatchType:I

    .line 50
    iput p1, p0, Lantlr/MismatchedCharException;->foundChar:I

    .line 51
    iput p2, p0, Lantlr/MismatchedCharException;->expecting:I

    .line 52
    iput p3, p0, Lantlr/MismatchedCharException;->upper:I

    .line 53
    iput-object p5, p0, Lantlr/MismatchedCharException;->scanner:Lantlr/CharScanner;

    .line 54
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public constructor <init>(CCZLantlr/CharScanner;)V
    .locals 4

    .prologue
    .line 58
    const-string/jumbo v0, "Mismatched char"

    .line 2136
    const/4 v1, 0x0

    .line 58
    invoke-virtual {p4}, Lantlr/CharScanner;->e()I

    move-result v2

    invoke-virtual {p4}, Lantlr/CharScanner;->c()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 59
    if-eqz p3, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lantlr/MismatchedCharException;->mismatchType:I

    .line 60
    iput p1, p0, Lantlr/MismatchedCharException;->foundChar:I

    .line 61
    iput p2, p0, Lantlr/MismatchedCharException;->expecting:I

    .line 62
    iput-object p4, p0, Lantlr/MismatchedCharException;->scanner:Lantlr/CharScanner;

    .line 63
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(CLob;ZLantlr/CharScanner;)V
    .locals 4

    .prologue
    .line 67
    const-string/jumbo v0, "Mismatched char"

    .line 3136
    const/4 v1, 0x0

    .line 67
    invoke-virtual {p4}, Lantlr/CharScanner;->e()I

    move-result v2

    invoke-virtual {p4}, Lantlr/CharScanner;->c()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 68
    if-eqz p3, :cond_0

    const/4 v0, 0x6

    :goto_0
    iput v0, p0, Lantlr/MismatchedCharException;->mismatchType:I

    .line 69
    iput p1, p0, Lantlr/MismatchedCharException;->foundChar:I

    .line 70
    iput-object p2, p0, Lantlr/MismatchedCharException;->set:Lob;

    .line 71
    iput-object p4, p0, Lantlr/MismatchedCharException;->scanner:Lantlr/CharScanner;

    .line 72
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private appendCharName(Ljava/lang/StringBuffer;I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/16 v1, 0x27

    .line 124
    sparse-switch p2, :sswitch_data_0

    .line 139
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 140
    int-to-char v0, p2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 141
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 144
    :goto_0
    return-void

    .line 127
    :sswitch_0
    const-string/jumbo v0, "\'<EOF>\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 130
    :sswitch_1
    const-string/jumbo v0, "\'\\n\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 133
    :sswitch_2
    const-string/jumbo v0, "\'\\r\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 136
    :sswitch_3
    const-string/jumbo v0, "\'\\t\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 124
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0xa -> :sswitch_1
        0xd -> :sswitch_2
        0xffff -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 78
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 80
    iget v0, p0, Lantlr/MismatchedCharException;->mismatchType:I

    packed-switch v0, :pswitch_data_0

    .line 113
    invoke-super {p0}, Lantlr/RecognitionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 82
    :pswitch_0
    const-string/jumbo v0, "expecting "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lantlr/MismatchedCharException;->expecting:I

    invoke-direct {p0, v1, v0}, Lantlr/MismatchedCharException;->appendCharName(Ljava/lang/StringBuffer;I)V

    .line 83
    const-string/jumbo v0, ", found "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lantlr/MismatchedCharException;->foundChar:I

    invoke-direct {p0, v1, v0}, Lantlr/MismatchedCharException;->appendCharName(Ljava/lang/StringBuffer;I)V

    goto :goto_0

    .line 86
    :pswitch_1
    const-string/jumbo v0, "expecting anything but \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    iget v0, p0, Lantlr/MismatchedCharException;->expecting:I

    invoke-direct {p0, v1, v0}, Lantlr/MismatchedCharException;->appendCharName(Ljava/lang/StringBuffer;I)V

    .line 88
    const-string/jumbo v0, "\'; got it anyway"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 92
    :pswitch_2
    const-string/jumbo v0, "expecting token "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    iget v0, p0, Lantlr/MismatchedCharException;->mismatchType:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 94
    const-string/jumbo v0, "NOT "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    :cond_0
    const-string/jumbo v0, "in range: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    iget v0, p0, Lantlr/MismatchedCharException;->expecting:I

    invoke-direct {p0, v1, v0}, Lantlr/MismatchedCharException;->appendCharName(Ljava/lang/StringBuffer;I)V

    .line 97
    const-string/jumbo v0, ".."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    iget v0, p0, Lantlr/MismatchedCharException;->upper:I

    invoke-direct {p0, v1, v0}, Lantlr/MismatchedCharException;->appendCharName(Ljava/lang/StringBuffer;I)V

    .line 99
    const-string/jumbo v0, ", found "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    iget v0, p0, Lantlr/MismatchedCharException;->foundChar:I

    invoke-direct {p0, v1, v0}, Lantlr/MismatchedCharException;->appendCharName(Ljava/lang/StringBuffer;I)V

    goto :goto_0

    .line 104
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v0, "expecting "

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lantlr/MismatchedCharException;->mismatchType:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_1

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

    .line 105
    iget-object v0, p0, Lantlr/MismatchedCharException;->set:Lob;

    invoke-virtual {v0}, Lob;->a()[I

    move-result-object v2

    .line 106
    const/4 v0, 0x0

    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 107
    aget v3, v2, v0

    invoke-direct {p0, v1, v3}, Lantlr/MismatchedCharException;->appendCharName(Ljava/lang/StringBuffer;I)V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 104
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1

    .line 109
    :cond_2
    const-string/jumbo v0, "), found "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    iget v0, p0, Lantlr/MismatchedCharException;->foundChar:I

    invoke-direct {p0, v1, v0}, Lantlr/MismatchedCharException;->appendCharName(Ljava/lang/StringBuffer;I)V

    goto/16 :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
