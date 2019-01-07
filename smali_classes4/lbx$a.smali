.class public final Llbx$a;
.super Lldp;
.source "HtmlBlockParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llbx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lldp;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lldv;Lldu;)Lldt;
    .locals 11
    .param p1, "state"    # Lldv;
    .param p2, "matchedBlockParser"    # Lldu;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v10, 0x7

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 109
    invoke-interface {p1}, Lldv;->c()I

    move-result v4

    .line 110
    .local v4, "nextNonSpace":I
    invoke-interface {p1}, Lldv;->a()Ljava/lang/CharSequence;

    move-result-object v2

    .line 112
    .local v2, "line":Ljava/lang/CharSequence;
    invoke-interface {p1}, Lldv;->e()I

    move-result v6

    const/4 v7, 0x4

    if-ge v6, v7, :cond_2

    invoke-interface {v2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x3c

    if-ne v6, v7, :cond_2

    .line 113
    const/4 v0, 0x1

    .local v0, "blockType":I
    :goto_0
    if-gt v0, v10, :cond_2

    .line 115
    if-ne v0, v10, :cond_0

    invoke-interface {p2}, Lldu;->a()Lldr;

    move-result-object v6

    invoke-interface {v6}, Lldr;->b()Llcn;

    move-result-object v6

    instance-of v6, v6, Lldf;

    if-nez v6, :cond_1

    .line 118
    :cond_0
    invoke-static {}, Llbx;->d()[[Ljava/util/regex/Pattern;

    move-result-object v6

    aget-object v6, v6, v0

    aget-object v5, v6, v8

    .line 119
    .local v5, "opener":Ljava/util/regex/Pattern;
    invoke-static {}, Llbx;->d()[[Ljava/util/regex/Pattern;

    move-result-object v6

    aget-object v6, v6, v0

    aget-object v1, v6, v9

    .line 120
    .local v1, "closer":Ljava/util/regex/Pattern;
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface {v2, v4, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    .line 121
    .local v3, "matches":Z
    if-eqz v3, :cond_1

    .line 122
    new-array v6, v9, [Lldr;

    new-instance v7, Llbx;

    invoke-direct {v7, v1, v8}, Llbx;-><init>(Ljava/util/regex/Pattern;B)V

    aput-object v7, v6, v8

    invoke-static {v6}, Lldt;->a([Lldr;)Lldt;

    move-result-object v6

    invoke-interface {p1}, Lldv;->b()I

    move-result v7

    invoke-virtual {v6, v7}, Lldt;->a(I)Lldt;

    move-result-object v6

    .line 126
    .end local v0    # "blockType":I
    .end local v1    # "closer":Ljava/util/regex/Pattern;
    .end local v3    # "matches":Z
    .end local v5    # "opener":Ljava/util/regex/Pattern;
    :goto_1
    return-object v6

    .line 113
    .restart local v0    # "blockType":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    .end local v0    # "blockType":I
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method
