.class public final Llbv$a;
.super Lldp;
.source "FencedCodeBlockParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llbv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lldp;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lldv;Lldu;)Lldt;
    .locals 9
    .param p1, "state"    # Lldv;
    .param p2, "matchedBlockParser"    # Lldu;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 79
    invoke-interface {p1}, Lldv;->c()I

    move-result v5

    .line 80
    .local v5, "nextNonSpace":I
    invoke-interface {p1}, Lldv;->a()Ljava/lang/CharSequence;

    move-result-object v3

    .line 82
    .local v3, "line":Ljava/lang/CharSequence;
    invoke-interface {p1}, Lldv;->e()I

    move-result v6

    const/4 v7, 0x4

    if-ge v6, v7, :cond_0

    invoke-static {}, Llbv;->d()Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-interface {v3, v5, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 83
    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    .line 84
    .local v2, "fenceLength":I
    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 85
    .local v1, "fenceChar":C
    new-instance v0, Llbv;

    invoke-interface {p1}, Lldv;->e()I

    move-result v6

    invoke-direct {v0, v1, v2, v6}, Llbv;-><init>(CII)V

    .line 86
    .local v0, "blockParser":Llbv;
    const/4 v6, 0x1

    new-array v6, v6, [Lldr;

    aput-object v0, v6, v8

    invoke-static {v6}, Lldt;->a([Lldr;)Lldt;

    move-result-object v6

    add-int v7, v5, v2

    invoke-virtual {v6, v7}, Lldt;->a(I)Lldt;

    move-result-object v6

    .line 88
    .end local v0    # "blockParser":Llbv;
    .end local v1    # "fenceChar":C
    .end local v2    # "fenceLength":I
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    :goto_0
    return-object v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method
