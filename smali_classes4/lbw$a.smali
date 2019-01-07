.class public final Llbw$a;
.super Lldp;
.source "HeadingParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llbw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lldp;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lldv;Lldu;)Lldt;
    .locals 12
    .param p1, "state"    # Lldv;
    .param p2, "matchedBlockParser"    # Lldu;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x0

    .line 45
    invoke-interface {p1}, Lldv;->e()I

    move-result v9

    const/4 v10, 0x4

    if-lt v9, v10, :cond_0

    move-object v7, v8

    .line 71
    :goto_0
    return-object v7

    .line 48
    :cond_0
    invoke-interface {p1}, Lldv;->a()Ljava/lang/CharSequence;

    move-result-object v2

    .line 49
    .local v2, "line":Ljava/lang/CharSequence;
    invoke-interface {p1}, Lldv;->c()I

    move-result v5

    .line 50
    .local v5, "nextNonSpace":I
    invoke-interface {p2}, Lldu;->b()Ljava/lang/CharSequence;

    move-result-object v6

    .line 52
    .local v6, "paragraph":Ljava/lang/CharSequence;
    invoke-static {}, Llbw;->d()Ljava/util/regex/Pattern;

    move-result-object v9

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-interface {v2, v5, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 54
    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int v4, v5, v8

    .line 55
    .local v4, "newOffset":I
    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    .line 57
    .local v1, "level":I
    invoke-static {}, Llbw;->e()Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-interface {v2, v4, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "content":Ljava/lang/String;
    new-array v7, v7, [Lldr;

    new-instance v8, Llbw;

    invoke-direct {v8, v1, v0}, Llbw;-><init>(ILjava/lang/String;)V

    aput-object v8, v7, v11

    invoke-static {v7}, Lldt;->a([Lldr;)Lldt;

    move-result-object v7

    .line 59
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Lldt;->a(I)Lldt;

    move-result-object v7

    goto :goto_0

    .line 61
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "level":I
    .end local v4    # "newOffset":I
    :cond_1
    if-eqz v6, :cond_3

    .line 62
    invoke-static {}, Llbw;->f()Ljava/util/regex/Pattern;

    move-result-object v9

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-interface {v2, v5, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 65
    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x3d

    if-ne v8, v9, :cond_2

    move v1, v7

    .line 66
    .restart local v1    # "level":I
    :goto_1
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .restart local v0    # "content":Ljava/lang/String;
    new-array v7, v7, [Lldr;

    new-instance v8, Llbw;

    invoke-direct {v8, v1, v0}, Llbw;-><init>(ILjava/lang/String;)V

    aput-object v8, v7, v11

    invoke-static {v7}, Lldt;->a([Lldr;)Lldt;

    move-result-object v7

    .line 68
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Lldt;->a(I)Lldt;

    move-result-object v7

    .line 69
    invoke-virtual {v7}, Lldt;->a()Lldt;

    move-result-object v7

    goto/16 :goto_0

    .line 65
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "level":I
    :cond_2
    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    move-object v7, v8

    .line 71
    goto/16 :goto_0
.end method
