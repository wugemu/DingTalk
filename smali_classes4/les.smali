.class public final Lles;
.super Ljava/lang/Object;
.source "Tokeniser.java"


# static fields
.field private static final o:[C


# instance fields
.field a:Llem;

.field public b:Lorg/jsoup/parser/TokeniserState;

.field c:Lorg/jsoup/parser/Token;

.field d:Z

.field e:Ljava/lang/String;

.field f:Ljava/lang/StringBuilder;

.field public g:Ljava/lang/StringBuilder;

.field public h:Lorg/jsoup/parser/Token$g;

.field i:Lorg/jsoup/parser/Token$f;

.field j:Lorg/jsoup/parser/Token$e;

.field k:Lorg/jsoup/parser/Token$a;

.field public l:Lorg/jsoup/parser/Token$c;

.field public m:Lorg/jsoup/parser/Token$b;

.field public n:Z

.field private p:Lorg/jsoup/parser/ParseErrorList;

.field private q:Ljava/lang/String;

.field private final r:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x7

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 16
    sput-object v0, Lles;->o:[C

    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    .line 17
    return-void

    .line 13
    :array_0
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
        0x3cs
        0x26s
    .end array-data
.end method

.method constructor <init>(Llem;Lorg/jsoup/parser/ParseErrorList;)V
    .locals 3
    .param p1, "reader"    # Llem;
    .param p2, "errors"    # Lorg/jsoup/parser/ParseErrorList;

    .prologue
    const/16 v2, 0x400

    const/4 v1, 0x1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    iput-object v0, p0, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lles;->d:Z

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lles;->e:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lles;->f:Ljava/lang/StringBuilder;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lles;->g:Ljava/lang/StringBuilder;

    .line 30
    new-instance v0, Lorg/jsoup/parser/Token$f;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$f;-><init>()V

    iput-object v0, p0, Lles;->i:Lorg/jsoup/parser/Token$f;

    .line 31
    new-instance v0, Lorg/jsoup/parser/Token$e;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$e;-><init>()V

    iput-object v0, p0, Lles;->j:Lorg/jsoup/parser/Token$e;

    .line 32
    new-instance v0, Lorg/jsoup/parser/Token$a;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$a;-><init>()V

    iput-object v0, p0, Lles;->k:Lorg/jsoup/parser/Token$a;

    .line 33
    new-instance v0, Lorg/jsoup/parser/Token$c;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$c;-><init>()V

    iput-object v0, p0, Lles;->l:Lorg/jsoup/parser/Token$c;

    .line 34
    new-instance v0, Lorg/jsoup/parser/Token$b;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$b;-><init>()V

    iput-object v0, p0, Lles;->m:Lorg/jsoup/parser/Token$b;

    .line 36
    iput-boolean v1, p0, Lles;->n:Z

    .line 125
    new-array v0, v1, [C

    iput-object v0, p0, Lles;->r:[C

    .line 39
    iput-object p1, p0, Lles;->a:Llem;

    .line 40
    iput-object p2, p0, Lles;->p:Lorg/jsoup/parser/ParseErrorList;

    .line 41
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 241
    iget-object v0, p0, Lles;->p:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lles;->p:Lorg/jsoup/parser/ParseErrorList;

    new-instance v1, Lleo;

    iget-object v2, p0, Lles;->a:Llem;

    .line 7028
    iget v2, v2, Llem;->c:I

    .line 242
    const-string/jumbo v3, "Invalid character reference: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lleo;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/ParseErrorList;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Z)Lorg/jsoup/parser/Token$g;
    .locals 1
    .param p1, "start"    # Z

    .prologue
    .line 191
    if-eqz p1, :cond_0

    iget-object v0, p0, Lles;->i:Lorg/jsoup/parser/Token$f;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$f;->h()Lorg/jsoup/parser/Token$g;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lles;->h:Lorg/jsoup/parser/Token$g;

    .line 192
    iget-object v0, p0, Lles;->h:Lorg/jsoup/parser/Token$g;

    return-object v0

    .line 191
    :cond_0
    iget-object v0, p0, Lles;->j:Lorg/jsoup/parser/Token$e;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$e;->h()Lorg/jsoup/parser/Token$g;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 196
    iget-object v0, p0, Lles;->h:Lorg/jsoup/parser/Token$g;

    .line 4105
    iget-object v1, v0, Lorg/jsoup/parser/Token$g;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4107
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$g;->i()V

    .line 197
    :cond_0
    iget-object v0, p0, Lles;->h:Lorg/jsoup/parser/Token$g;

    invoke-virtual {p0, v0}, Lles;->a(Lorg/jsoup/parser/Token;)V

    .line 198
    return-void
.end method

.method public final a(C)V
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 105
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lles;->a(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 89
    iget-object v0, p0, Lles;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 90
    iput-object p1, p0, Lles;->e:Ljava/lang/String;

    .line 98
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lles;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Lles;->f:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lles;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :cond_1
    iget-object v0, p0, Lles;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final a(Lorg/jsoup/parser/Token;)V
    .locals 4
    .param p1, "token"    # Lorg/jsoup/parser/Token;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 69
    iget-boolean v2, p0, Lles;->d:Z

    const-string/jumbo v3, "There is an unread token pending!"

    .line 1063
    if-eqz v2, :cond_0

    .line 1064
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_0
    iput-object p1, p0, Lles;->c:Lorg/jsoup/parser/Token;

    .line 72
    const/4 v2, 0x1

    iput-boolean v2, p0, Lles;->d:Z

    .line 74
    iget-object v2, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    sget-object v3, Lorg/jsoup/parser/Token$TokenType;->StartTag:Lorg/jsoup/parser/Token$TokenType;

    if-ne v2, v3, :cond_2

    move-object v1, p1

    .line 75
    check-cast v1, Lorg/jsoup/parser/Token$f;

    .line 76
    .local v1, "startTag":Lorg/jsoup/parser/Token$f;
    iget-object v2, v1, Lorg/jsoup/parser/Token$f;->b:Ljava/lang/String;

    iput-object v2, p0, Lles;->q:Ljava/lang/String;

    .line 77
    iget-boolean v2, v1, Lorg/jsoup/parser/Token$f;->d:Z

    if-eqz v2, :cond_1

    .line 78
    const/4 v2, 0x0

    iput-boolean v2, p0, Lles;->n:Z

    .line 84
    .end local v1    # "startTag":Lorg/jsoup/parser/Token$f;
    :cond_1
    :goto_0
    return-void

    .line 79
    :cond_2
    iget-object v2, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    sget-object v3, Lorg/jsoup/parser/Token$TokenType;->EndTag:Lorg/jsoup/parser/Token$TokenType;

    if-ne v2, v3, :cond_1

    move-object v0, p1

    .line 80
    check-cast v0, Lorg/jsoup/parser/Token$e;

    .line 81
    .local v0, "endTag":Lorg/jsoup/parser/Token$e;
    iget-object v2, v0, Lorg/jsoup/parser/Token$e;->e:Lled;

    if-eqz v2, :cond_1

    .line 82
    const-string/jumbo v2, "Attributes incorrectly present on end tag"

    invoke-virtual {p0, v2}, Lles;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lorg/jsoup/parser/TokeniserState;)V
    .locals 1
    .param p1, "state"    # Lorg/jsoup/parser/TokeniserState;

    .prologue
    .line 117
    iget-object v0, p0, Lles;->a:Llem;

    invoke-virtual {v0}, Llem;->e()V

    .line 118
    iput-object p1, p0, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    .line 119
    return-void
.end method

.method public final a([C)V
    .locals 1
    .param p1, "chars"    # [C

    .prologue
    .line 101
    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lles;->a(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public final a(Ljava/lang/Character;Z)[C
    .locals 12
    .param p1, "additionalAllowedCharacter"    # Ljava/lang/Character;
    .param p2, "inAttribute"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 127
    iget-object v8, p0, Lles;->a:Llem;

    invoke-virtual {v8}, Llem;->a()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 128
    const/4 v1, 0x0

    .line 186
    :goto_0
    return-object v1

    .line 129
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v8

    iget-object v9, p0, Lles;->a:Llem;

    invoke-virtual {v9}, Llem;->b()C

    move-result v9

    if-ne v8, v9, :cond_1

    .line 130
    const/4 v1, 0x0

    goto :goto_0

    .line 131
    :cond_1
    iget-object v8, p0, Lles;->a:Llem;

    sget-object v9, Lles;->o:[C

    .line 1292
    invoke-virtual {v8}, Llem;->a()Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v8, Llem;->a:[C

    iget v8, v8, Llem;->c:I

    aget-char v8, v10, v8

    invoke-static {v9, v8}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v8

    if-ltz v8, :cond_2

    const/4 v8, 0x1

    .line 131
    :goto_1
    if-eqz v8, :cond_3

    .line 132
    const/4 v1, 0x0

    goto :goto_0

    .line 1292
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 134
    :cond_3
    iget-object v1, p0, Lles;->r:[C

    .line 135
    .local v1, "charRef":[C
    iget-object v8, p0, Lles;->a:Llem;

    .line 2054
    iget v9, v8, Llem;->c:I

    iput v9, v8, Llem;->d:I

    .line 136
    iget-object v8, p0, Lles;->a:Llem;

    const-string/jumbo v9, "#"

    invoke-virtual {v8, v9}, Llem;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 137
    iget-object v8, p0, Lles;->a:Llem;

    const-string/jumbo v9, "X"

    invoke-virtual {v8, v9}, Llem;->b(Ljava/lang/String;)Z

    move-result v4

    .line 138
    .local v4, "isHexMode":Z
    if-eqz v4, :cond_8

    iget-object v8, p0, Lles;->a:Llem;

    .line 2226
    iget v9, v8, Llem;->c:I

    .line 2227
    :goto_2
    iget v10, v8, Llem;->c:I

    iget v11, v8, Llem;->b:I

    if-ge v10, v11, :cond_7

    .line 2228
    iget-object v10, v8, Llem;->a:[C

    iget v11, v8, Llem;->c:I

    aget-char v10, v10, v11

    .line 2229
    const/16 v11, 0x30

    if-lt v10, v11, :cond_4

    const/16 v11, 0x39

    if-le v10, v11, :cond_6

    :cond_4
    const/16 v11, 0x41

    if-lt v10, v11, :cond_5

    const/16 v11, 0x46

    if-le v10, v11, :cond_6

    :cond_5
    const/16 v11, 0x61

    if-lt v10, v11, :cond_7

    const/16 v11, 0x66

    if-gt v10, v11, :cond_7

    .line 2230
    :cond_6
    iget v10, v8, Llem;->c:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v8, Llem;->c:I

    goto :goto_2

    .line 2234
    :cond_7
    iget v10, v8, Llem;->c:I

    sub-int/2addr v10, v9

    invoke-virtual {v8, v9, v10}, Llem;->a(II)Ljava/lang/String;

    move-result-object v7

    .line 139
    .local v7, "numRef":Ljava/lang/String;
    :goto_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_a

    .line 140
    const-string/jumbo v8, "numeric reference with no numerals"

    invoke-direct {p0, v8}, Lles;->c(Ljava/lang/String;)V

    .line 141
    iget-object v8, p0, Lles;->a:Llem;

    invoke-virtual {v8}, Llem;->f()V

    .line 142
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 138
    .end local v7    # "numRef":Ljava/lang/String;
    :cond_8
    iget-object v8, p0, Lles;->a:Llem;

    .line 2238
    iget v9, v8, Llem;->c:I

    .line 2239
    :goto_4
    iget v10, v8, Llem;->c:I

    iget v11, v8, Llem;->b:I

    if-ge v10, v11, :cond_9

    .line 2240
    iget-object v10, v8, Llem;->a:[C

    iget v11, v8, Llem;->c:I

    aget-char v10, v10, v11

    .line 2241
    const/16 v11, 0x30

    if-lt v10, v11, :cond_9

    const/16 v11, 0x39

    if-gt v10, v11, :cond_9

    .line 2242
    iget v10, v8, Llem;->c:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v8, Llem;->c:I

    goto :goto_4

    .line 2246
    :cond_9
    iget v10, v8, Llem;->c:I

    sub-int/2addr v10, v9

    invoke-virtual {v8, v9, v10}, Llem;->a(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 144
    .restart local v7    # "numRef":Ljava/lang/String;
    :cond_a
    iget-object v8, p0, Lles;->a:Llem;

    const-string/jumbo v9, ";"

    invoke-virtual {v8, v9}, Llem;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 145
    const-string/jumbo v8, "missing semicolon"

    invoke-direct {p0, v8}, Lles;->c(Ljava/lang/String;)V

    .line 146
    :cond_b
    const/4 v2, -0x1

    .line 148
    .local v2, "charval":I
    if-eqz v4, :cond_e

    const/16 v0, 0x10

    .line 149
    .local v0, "base":I
    :goto_5
    :try_start_0
    invoke-static {v7, v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 152
    :goto_6
    const/4 v8, -0x1

    if-eq v2, v8, :cond_d

    const v8, 0xd800

    if-lt v2, v8, :cond_c

    const v8, 0xdfff

    if-le v2, v8, :cond_d

    :cond_c
    const v8, 0x10ffff

    if-le v2, v8, :cond_f

    .line 153
    :cond_d
    const-string/jumbo v8, "character outside of valid range"

    invoke-direct {p0, v8}, Lles;->c(Ljava/lang/String;)V

    .line 154
    const/4 v8, 0x0

    const v9, 0xfffd

    aput-char v9, v1, v8

    goto/16 :goto_0

    .line 148
    .end local v0    # "base":I
    :cond_e
    const/16 v0, 0xa

    goto :goto_5

    .line 159
    .restart local v0    # "base":I
    :cond_f
    const/high16 v8, 0x10000

    if-ge v2, v8, :cond_10

    .line 160
    const/4 v8, 0x0

    int-to-char v9, v2

    aput-char v9, v1, v8

    goto/16 :goto_0

    .line 163
    :cond_10
    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    goto/16 :goto_0

    .line 167
    .end local v0    # "base":I
    .end local v2    # "charval":I
    .end local v4    # "isHexMode":Z
    .end local v7    # "numRef":Ljava/lang/String;
    :cond_11
    iget-object v8, p0, Lles;->a:Llem;

    .line 3206
    iget v9, v8, Llem;->c:I

    .line 3207
    :goto_7
    iget v10, v8, Llem;->c:I

    iget v11, v8, Llem;->b:I

    if-ge v10, v11, :cond_14

    .line 3208
    iget-object v10, v8, Llem;->a:[C

    iget v11, v8, Llem;->c:I

    aget-char v10, v10, v11

    .line 3209
    const/16 v11, 0x41

    if-lt v10, v11, :cond_12

    const/16 v11, 0x5a

    if-le v10, v11, :cond_13

    :cond_12
    const/16 v11, 0x61

    if-lt v10, v11, :cond_14

    const/16 v11, 0x7a

    if-gt v10, v11, :cond_14

    .line 3210
    :cond_13
    iget v10, v8, Llem;->c:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v8, Llem;->c:I

    goto :goto_7

    .line 3214
    :cond_14
    :goto_8
    invoke-virtual {v8}, Llem;->a()Z

    move-result v10

    if-nez v10, :cond_15

    .line 3215
    iget-object v10, v8, Llem;->a:[C

    iget v11, v8, Llem;->c:I

    aget-char v10, v10, v11

    .line 3216
    const/16 v11, 0x30

    if-lt v10, v11, :cond_15

    const/16 v11, 0x39

    if-gt v10, v11, :cond_15

    .line 3217
    iget v10, v8, Llem;->c:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v8, Llem;->c:I

    goto :goto_8

    .line 3222
    :cond_15
    iget v10, v8, Llem;->c:I

    sub-int/2addr v10, v9

    invoke-virtual {v8, v9, v10}, Llem;->a(II)Ljava/lang/String;

    move-result-object v6

    .line 168
    .local v6, "nameRef":Ljava/lang/String;
    iget-object v8, p0, Lles;->a:Llem;

    const/16 v9, 0x3b

    invoke-virtual {v8, v9}, Llem;->b(C)Z

    move-result v5

    .line 170
    .local v5, "looksLegit":Z
    invoke-static {v6}, Lorg/jsoup/nodes/Entities;->b(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_16

    invoke-static {v6}, Lorg/jsoup/nodes/Entities;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    if-eqz v5, :cond_18

    :cond_16
    const/4 v3, 0x1

    .line 172
    .local v3, "found":Z
    :goto_9
    if-nez v3, :cond_19

    .line 173
    iget-object v8, p0, Lles;->a:Llem;

    invoke-virtual {v8}, Llem;->f()V

    .line 174
    if-eqz v5, :cond_17

    .line 175
    const-string/jumbo v8, "invalid named referenece \'%s\'"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lles;->c(Ljava/lang/String;)V

    .line 176
    :cond_17
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 170
    .end local v3    # "found":Z
    :cond_18
    const/4 v3, 0x0

    goto :goto_9

    .line 178
    .restart local v3    # "found":Z
    :cond_19
    if-eqz p2, :cond_1c

    iget-object v8, p0, Lles;->a:Llem;

    invoke-virtual {v8}, Llem;->i()Z

    move-result v8

    if-nez v8, :cond_1a

    iget-object v8, p0, Lles;->a:Llem;

    .line 3303
    invoke-virtual {v8}, Llem;->a()Z

    move-result v9

    if-nez v9, :cond_1b

    .line 3305
    iget-object v9, v8, Llem;->a:[C

    iget v8, v8, Llem;->c:I

    aget-char v8, v9, v8

    .line 3306
    const/16 v9, 0x30

    if-lt v8, v9, :cond_1b

    const/16 v9, 0x39

    if-gt v8, v9, :cond_1b

    const/4 v8, 0x1

    .line 178
    :goto_a
    if-nez v8, :cond_1a

    iget-object v8, p0, Lles;->a:Llem;

    const/4 v9, 0x3

    new-array v9, v9, [C

    fill-array-data v9, :array_0

    invoke-virtual {v8, v9}, Llem;->c([C)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 180
    :cond_1a
    iget-object v8, p0, Lles;->a:Llem;

    invoke-virtual {v8}, Llem;->f()V

    .line 181
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 3306
    :cond_1b
    const/4 v8, 0x0

    goto :goto_a

    .line 183
    :cond_1c
    iget-object v8, p0, Lles;->a:Llem;

    const-string/jumbo v9, ";"

    invoke-virtual {v8, v9}, Llem;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1d

    .line 184
    const-string/jumbo v8, "missing semicolon"

    invoke-direct {p0, v8}, Lles;->c(Ljava/lang/String;)V

    .line 185
    :cond_1d
    const/4 v8, 0x0

    invoke-static {v6}, Lorg/jsoup/nodes/Entities;->c(Ljava/lang/String;)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Character;->charValue()C

    move-result v9

    aput-char v9, v1, v8

    goto/16 :goto_0

    .end local v3    # "found":Z
    .end local v5    # "looksLegit":Z
    .end local v6    # "nameRef":Ljava/lang/String;
    .restart local v0    # "base":I
    .restart local v2    # "charval":I
    .restart local v4    # "isHexMode":Z
    .restart local v7    # "numRef":Ljava/lang/String;
    :catch_0
    move-exception v8

    goto/16 :goto_6

    .line 178
    :array_0
    .array-data 2
        0x3ds
        0x2ds
        0x5fs
    .end array-data
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lles;->m:Lorg/jsoup/parser/Token$b;

    invoke-virtual {p0, v0}, Lles;->a(Lorg/jsoup/parser/Token;)V

    .line 206
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 246
    iget-object v0, p0, Lles;->p:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lles;->p:Lorg/jsoup/parser/ParseErrorList;

    new-instance v1, Lleo;

    iget-object v2, p0, Lles;->a:Llem;

    .line 8028
    iget v2, v2, Llem;->c:I

    .line 247
    invoke-direct {v1, v2, p1}, Lleo;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/ParseErrorList;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_0
    return-void
.end method

.method public final b(Lorg/jsoup/parser/TokeniserState;)V
    .locals 7
    .param p1, "state"    # Lorg/jsoup/parser/TokeniserState;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 231
    iget-object v0, p0, Lles;->p:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lles;->p:Lorg/jsoup/parser/ParseErrorList;

    new-instance v1, Lleo;

    iget-object v2, p0, Lles;->a:Llem;

    .line 5028
    iget v2, v2, Llem;->c:I

    .line 232
    const-string/jumbo v3, "Unexpected character \'%s\' in input state [%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lles;->a:Llem;

    invoke-virtual {v6}, Llem;->b()C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lleo;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/ParseErrorList;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lles;->l:Lorg/jsoup/parser/Token$c;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$c;->a()Lorg/jsoup/parser/Token;

    .line 210
    return-void
.end method

.method public final c(Lorg/jsoup/parser/TokeniserState;)V
    .locals 6
    .param p1, "state"    # Lorg/jsoup/parser/TokeniserState;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 236
    iget-object v0, p0, Lles;->p:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lles;->p:Lorg/jsoup/parser/ParseErrorList;

    new-instance v1, Lleo;

    iget-object v2, p0, Lles;->a:Llem;

    .line 6028
    iget v2, v2, Llem;->c:I

    .line 237
    const-string/jumbo v3, "Unexpectedly reached end of file (EOF) in input state [%s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lleo;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/ParseErrorList;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lles;->l:Lorg/jsoup/parser/Token$c;

    invoke-virtual {p0, v0}, Lles;->a(Lorg/jsoup/parser/Token;)V

    .line 214
    return-void
.end method

.method public final e()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 221
    iget-object v0, p0, Lles;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lles;->h:Lorg/jsoup/parser/Token$g;

    iget-object v0, v0, Lorg/jsoup/parser/Token$g;->b:Ljava/lang/String;

    iget-object v1, p0, Lles;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lles;->q:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 226
    const/4 v0, 0x0

    .line 227
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lles;->q:Ljava/lang/String;

    goto :goto_0
.end method
