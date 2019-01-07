.class public Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
.super Lorg/apache/james/mime4j/dom/field/ParseException;
.source "ParseException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public currentToken:Lorg/apache/james/mime4j/field/datetime/parser/Token;

.field protected eol:Ljava/lang/String;

.field public expectedTokenSequences:[[I

.field protected specialConstructor:Z

.field public tokenImage:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    const-string/jumbo v0, "Cannot parse field"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/dom/field/ParseException;-><init>(Ljava/lang/String;)V

    .line 168
    const-string/jumbo v0, "line.separator"

    const-string/jumbo v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->eol:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->specialConstructor:Z

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/dom/field/ParseException;-><init>(Ljava/lang/String;)V

    .line 168
    const-string/jumbo v0, "line.separator"

    const-string/jumbo v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->eol:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->specialConstructor:Z

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/dom/field/ParseException;-><init>(Ljava/lang/Throwable;)V

    .line 168
    const-string/jumbo v0, "line.separator"

    const-string/jumbo v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->eol:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->specialConstructor:Z

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/datetime/parser/Token;[[I[Ljava/lang/String;)V
    .locals 2
    .param p1, "currentTokenVal"    # Lorg/apache/james/mime4j/field/datetime/parser/Token;
    .param p2, "expectedTokenSequencesVal"    # [[I
    .param p3, "tokenImageVal"    # [Ljava/lang/String;

    .prologue
    .line 55
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/dom/field/ParseException;-><init>(Ljava/lang/String;)V

    .line 168
    const-string/jumbo v0, "line.separator"

    const-string/jumbo v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->eol:Ljava/lang/String;

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->specialConstructor:Z

    .line 57
    iput-object p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->currentToken:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 58
    iput-object p2, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->expectedTokenSequences:[[I

    .line 59
    iput-object p3, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->tokenImage:[Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method protected add_escapes(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "str"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 176
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 178
    .local v2, "retval":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 179
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 208
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "ch":C
    const/16 v4, 0x20

    if-lt v0, v4, :cond_0

    const/16 v4, 0x7e

    if-le v0, v4, :cond_1

    .line 209
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "0000"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x10

    invoke-static {v0, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, "s":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\\u"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    .end local v0    # "ch":C
    .end local v3    # "s":Ljava/lang/String;
    :goto_1
    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    :sswitch_1
    const-string/jumbo v4, "\\b"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 187
    :sswitch_2
    const-string/jumbo v4, "\\t"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 190
    :sswitch_3
    const-string/jumbo v4, "\\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 193
    :sswitch_4
    const-string/jumbo v4, "\\f"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 196
    :sswitch_5
    const-string/jumbo v4, "\\r"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 199
    :sswitch_6
    const-string/jumbo v4, "\\\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 202
    :sswitch_7
    const-string/jumbo v4, "\\\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 205
    :sswitch_8
    const-string/jumbo v4, "\\\\"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 212
    .restart local v0    # "ch":C
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 217
    .end local v0    # "ch":C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 179
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x9 -> :sswitch_2
        0xa -> :sswitch_3
        0xc -> :sswitch_4
        0xd -> :sswitch_5
        0x22 -> :sswitch_6
        0x27 -> :sswitch_7
        0x5c -> :sswitch_8
    .end sparse-switch
.end method

.method public getMessage()Ljava/lang/String;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 126
    iget-boolean v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->specialConstructor:Z

    if-nez v6, :cond_0

    .line 127
    invoke-super {p0}, Lorg/apache/james/mime4j/dom/field/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 162
    :goto_0
    return-object v4

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 130
    .local v0, "expected":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 131
    .local v3, "maxSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->expectedTokenSequences:[[I

    array-length v6, v6

    if-ge v1, v6, :cond_4

    .line 132
    iget-object v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->expectedTokenSequences:[[I

    aget-object v6, v6, v1

    array-length v6, v6

    if-ge v3, v6, :cond_1

    .line 133
    iget-object v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->expectedTokenSequences:[[I

    aget-object v6, v6, v1

    array-length v3, v6

    .line 135
    :cond_1
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    iget-object v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->expectedTokenSequences:[[I

    aget-object v6, v6, v1

    array-length v6, v6

    if-ge v2, v6, :cond_2

    .line 136
    iget-object v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->tokenImage:[Ljava/lang/String;

    iget-object v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->expectedTokenSequences:[[I

    aget-object v7, v7, v1

    aget v7, v7, v2

    aget-object v6, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 138
    :cond_2
    iget-object v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->expectedTokenSequences:[[I

    aget-object v6, v6, v1

    iget-object v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->expectedTokenSequences:[[I

    aget-object v7, v7, v1

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    if-eqz v6, :cond_3

    .line 139
    const-string/jumbo v6, "..."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    :cond_3
    iget-object v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->eol:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string/jumbo v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 143
    .end local v2    # "j":I
    :cond_4
    const-string/jumbo v4, "Encountered \""

    .line 144
    .local v4, "retval":Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->currentToken:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v5, v6, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 145
    .local v5, "tok":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_6

    .line 146
    if-eqz v1, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 147
    :cond_5
    iget v6, v5, Lorg/apache/james/mime4j/field/datetime/parser/Token;->kind:I

    if-nez v6, :cond_7

    .line 148
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->tokenImage:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 154
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\" at line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->currentToken:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v7, v7, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iget v7, v7, Lorg/apache/james/mime4j/field/datetime/parser/Token;->beginLine:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->currentToken:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v7, v7, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iget v7, v7, Lorg/apache/james/mime4j/field/datetime/parser/Token;->beginColumn:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 155
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->eol:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 156
    iget-object v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->expectedTokenSequences:[[I

    array-length v6, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    .line 157
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "Was expecting:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->eol:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 161
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 162
    goto/16 :goto_0

    .line 151
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lorg/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->add_escapes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 152
    iget-object v5, v5, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 159
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "Was expecting one of:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->eol:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4
.end method
