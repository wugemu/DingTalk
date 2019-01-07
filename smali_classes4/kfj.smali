.class public final Lkfj;
.super Lno;
.source "EncodingParser.java"


# static fields
.field public static final g:[Ljava/lang/String;

.field public static final h:Lob;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 92
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "<0>"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "EOF"

    aput-object v2, v0, v1

    const-string/jumbo v1, "<2>"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string/jumbo v2, "NULL_TREE_LOOKAHEAD"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "META_CONTENT_TYPE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "XML_ENCODING_DECL"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "IDENTIFIER"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "SPACING"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "NEWLINE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "SPACE"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "DIGIT"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "LETTER"

    aput-object v2, v0, v1

    sput-object v0, Lkfj;->g:[Ljava/lang/String;

    .line 111
    new-instance v0, Lob;

    .line 3108
    new-array v1, v3, [J

    fill-array-data v1, :array_0

    .line 111
    invoke-direct {v0, v1}, Lob;-><init>([J)V

    sput-object v0, Lkfj;->h:Lob;

    return-void

    .line 3108
    nop

    :array_0
    .array-data 8
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Lnv;)V
    .locals 1
    .param p1, "lexer"    # Lnv;

    .prologue
    .line 37
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lkfj;-><init>(Lnv;I)V

    .line 38
    return-void
.end method

.method private constructor <init>(Lnv;I)V
    .locals 1
    .param p1, "lexer"    # Lnv;
    .param p2, "k"    # I

    .prologue
    .line 32
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lno;-><init>(Lnv;I)V

    .line 33
    sget-object v0, Lkfj;->g:[Ljava/lang/String;

    iput-object v0, p0, Lkfj;->c:[Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 50
    const/4 v0, 0x0

    .line 53
    .local v0, "charset":Ljava/lang/String;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v4}, Lkfj;->a(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 79
    :pswitch_0
    new-instance v4, Lantlr/NoViableAltException;

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lkfj;->b(I)Lns;

    move-result-object v5

    .line 1170
    const/4 v6, 0x0

    .line 79
    invoke-direct {v4, v5, v6}, Lantlr/NoViableAltException;-><init>(Lns;Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :catch_0
    move-exception v1

    .line 1288
    .local v1, "ex":Lantlr/RecognitionException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p0}, Lkfj;->a()V

    .line 86
    sget-object v4, Lkfj;->h:Lob;

    .line 2151
    :goto_0
    invoke-virtual {p0, v7}, Lnq;->a(I)I

    move-result v5

    if-eq v5, v7, :cond_0

    invoke-virtual {p0, v7}, Lnq;->a(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lob;->a(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2152
    invoke-virtual {p0}, Lnq;->a()V

    goto :goto_0

    .line 57
    .end local v1    # "ex":Lantlr/RecognitionException;
    :pswitch_1
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {p0, v4}, Lkfj;->b(I)Lns;

    move-result-object v2

    .line 58
    .local v2, "token1":Lns;
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lkfj;->c(I)V

    .line 60
    invoke-virtual {v2}, Lns;->b()Ljava/lang/String;

    move-result-object v0

    .line 88
    .end local v2    # "token1":Lns;
    :cond_0
    :goto_1
    return-object v0

    .line 66
    :pswitch_2
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lkfj;->b(I)Lns;

    move-result-object v3

    .line 67
    .local v3, "token2":Lns;
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lkfj;->c(I)V

    .line 69
    invoke-virtual {v3}, Lns;->b()Ljava/lang/String;
    :try_end_1
    .catch Lantlr/RecognitionException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 70
    goto :goto_1

    .line 74
    .end local v3    # "token2":Lns;
    :pswitch_3
    const/4 v0, 0x0

    .line 75
    goto :goto_1

    .line 53
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
