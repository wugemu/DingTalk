.class public final Llbz;
.super Ljava/lang/Object;
.source "InlineParserImpl.java"

# interfaces
.implements Lldl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llbz$a;
    }
.end annotation


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/regex/Pattern;

.field private static final g:Ljava/util/regex/Pattern;

.field private static final h:Ljava/util/regex/Pattern;

.field private static final i:Ljava/util/regex/Pattern;

.field private static final j:Ljava/util/regex/Pattern;

.field private static final k:Ljava/util/regex/Pattern;

.field private static final l:Ljava/util/regex/Pattern;

.field private static final m:Ljava/util/regex/Pattern;

.field private static final n:Ljava/util/regex/Pattern;

.field private static final o:Ljava/util/regex/Pattern;

.field private static final p:Ljava/util/regex/Pattern;

.field private static final q:Ljava/util/regex/Pattern;

.field private static final r:Ljava/util/regex/Pattern;

.field private static final s:Ljava/util/regex/Pattern;

.field private static final t:Ljava/util/regex/Pattern;


# instance fields
.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Llda;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/lang/String;

.field d:I

.field private final u:Ljava/util/BitSet;

.field private final v:Ljava/util/BitSet;

.field private final w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Lldw;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lldd;

.field private y:Llbs;

.field private z:Llbr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 30
    const-string/jumbo v0, "^[\'!\"#\\$%&\\(\\)\\*\\+,\\-\\./:;<=>\\?@\\[\\\\\\]\\^_`\\{\\|\\}~\\p{Pc}\\p{Pd}\\p{Pe}\\p{Pf}\\p{Pi}\\p{Po}\\p{Ps}]"

    .line 31
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Llbz;->e:Ljava/util/regex/Pattern;

    .line 33
    const-string/jumbo v0, "^(?:<[A-Za-z][A-Za-z0-9-]*(?:\\s+[a-zA-Z_:][a-zA-Z0-9:._-]*(?:\\s*=\\s*(?:[^\"\'=<>`\\x00-\\x20]+|\'[^\']*\'|\"[^\"]*\"))?)*\\s*/?>|</[A-Za-z][A-Za-z0-9-]*\\s*[>]|<!---->|<!--(?:-?[^>-])(?:-?[^-])*-->|[<][?].*?[?][>]|<![A-Z]+\\s+[^>]*>|<!\\[CDATA\\[[\\s\\S]*?\\]\\]>)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Llbz;->f:Ljava/util/regex/Pattern;

    .line 35
    const-string/jumbo v0, "^(?:\"(\\\\[!\"#$%&\'()*+,./:;<=>?@\\[\\\\\\]^_`{|}~-]|[^\"\\x00])*\"|\'(\\\\[!\"#$%&\'()*+,./:;<=>?@\\[\\\\\\]^_`{|}~-]|[^\'\\x00])*\'|\\((\\\\[!\"#$%&\'()*+,./:;<=>?@\\[\\\\\\]^_`{|}~-]|[^)\\x00])*\\))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Llbz;->g:Ljava/util/regex/Pattern;

    .line 42
    const-string/jumbo v0, "^(?:[<](?:[^<> \\t\\n\\\\\\x00]|\\\\[!\"#$%&\'()*+,./:;<=>?@\\[\\\\\\]^_`{|}~-]|\\\\)*[>])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Llbz;->h:Ljava/util/regex/Pattern;

    .line 45
    const-string/jumbo v0, "^(?:[^\\\\()\\x00-\\x20]+|\\\\[!\"#$%&\'()*+,./:;<=>?@\\[\\\\\\]^_`{|}~-]|\\\\|\\(([^\\\\()\\x00-\\x20]|\\\\[!\"#$%&\'()*+,./:;<=>?@\\[\\\\\\]^_`{|}~-])*\\))*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Llbz;->i:Ljava/util/regex/Pattern;

    .line 48
    const-string/jumbo v0, "^\\[(?:[^\\\\\\[\\]]|\\\\[!\"#$%&\'()*+,./:;<=>?@\\[\\\\\\]^_`{|}~-]|\\\\){0,999}\\]"

    .line 49
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Llbz;->j:Ljava/util/regex/Pattern;

    .line 51
    const-string/jumbo v0, "^[!\"#$%&\'()*+,./:;<=>?@\\[\\\\\\]^_`{|}~-]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Llbz;->k:Ljava/util/regex/Pattern;

    .line 53
    const-string/jumbo v0, "^&(?:#x[a-f0-9]{1,8}|#[0-9]{1,8}|[a-z][a-z0-9]{1,31});"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Llbz;->l:Ljava/util/regex/Pattern;

    .line 55
    const-string/jumbo v0, "`+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Llbz;->m:Ljava/util/regex/Pattern;

    .line 57
    const-string/jumbo v0, "^`+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Llbz;->n:Ljava/util/regex/Pattern;

    .line 59
    const-string/jumbo v0, "^<([a-zA-Z0-9.!#$%&\'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*)>"

    .line 60
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Llbz;->o:Ljava/util/regex/Pattern;

    .line 62
    const-string/jumbo v0, "^<[a-zA-Z][a-zA-Z0-9.+-]{1,31}:[^<>\u0000- ]*>"

    .line 63
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Llbz;->p:Ljava/util/regex/Pattern;

    .line 65
    const-string/jumbo v0, "^ *(?:\n *)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Llbz;->q:Ljava/util/regex/Pattern;

    .line 67
    const-string/jumbo v0, "^[\\p{Zs}\t\r\n\u000c]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Llbz;->r:Ljava/util/regex/Pattern;

    .line 69
    const-string/jumbo v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Llbz;->s:Ljava/util/regex/Pattern;

    .line 71
    const-string/jumbo v0, " *$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Llbz;->t:Ljava/util/regex/Pattern;

    .line 73
    const-string/jumbo v0, "^ *(?:\n|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Llbz;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;)V
    .locals 1
    .param p1, "specialCharacters"    # Ljava/util/BitSet;
    .param p2, "delimiterCharacters"    # Ljava/util/BitSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/BitSet;",
            "Ljava/util/BitSet;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Lldw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p3, "delimiterProcessors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Lldw;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llbz;->b:Ljava/util/Map;

    .line 101
    iput-object p3, p0, Llbz;->w:Ljava/util/Map;

    .line 102
    iput-object p2, p0, Llbz;->v:Ljava/util/BitSet;

    .line 103
    iput-object p1, p0, Llbz;->u:Ljava/util/BitSet;

    .line 104
    return-void
.end method

.method public static a(Ljava/util/BitSet;)Ljava/util/BitSet;
    .locals 2
    .param p0, "delimiterCharacters"    # Ljava/util/BitSet;

    .prologue
    .line 115
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 116
    .local v0, "bitSet":Ljava/util/BitSet;
    invoke-virtual {v0, p0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 117
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 118
    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 119
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 120
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 121
    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 122
    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 123
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 124
    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 125
    return-object v0
.end method

.method public static a(Ljava/util/Set;)Ljava/util/BitSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;)",
            "Ljava/util/BitSet;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "characters":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 108
    .local v0, "bitSet":Ljava/util/BitSet;
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    .line 109
    .local v1, "character":Ljava/lang/Character;
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 111
    .end local v1    # "character":Ljava/lang/Character;
    :cond_0
    return-object v0
.end method

.method public static a(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lldw;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Lldw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "delimiterProcessors":Ljava/util/List;, "Ljava/util/List<Lldw;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 130
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Lldw;>;"
    const/4 v1, 0x2

    new-array v1, v1, [Lldw;

    const/4 v2, 0x0

    new-instance v3, Llce;

    invoke-direct {v3}, Llce;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Llcg;

    invoke-direct {v3}, Llcg;-><init>()V

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Llbz;->a(Ljava/lang/Iterable;Ljava/util/Map;)V

    .line 131
    invoke-static {p0, v0}, Llbz;->a(Ljava/lang/Iterable;Ljava/util/Map;)V

    .line 132
    return-object v0
.end method

.method private a(Lldw;C)Llbz$a;
    .locals 16
    .param p1, "delimiterProcessor"    # Lldw;
    .param p2, "delimiterChar"    # C

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 736
    move-object/from16 v0, p0

    iget v13, v0, Llbz;->d:I

    .line 738
    .local v13, "startIndex":I
    const/4 v10, 0x0

    .line 739
    .local v10, "delimiterCount":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Llbz;->a()C

    move-result v14

    move/from16 v0, p2

    if-ne v14, v0, :cond_0

    .line 740
    add-int/lit8 v10, v10, 0x1

    .line 741
    move-object/from16 v0, p0

    iget v14, v0, Llbz;->d:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Llbz;->d:I

    goto :goto_0

    .line 744
    :cond_0
    if-gtz v10, :cond_1

    .line 745
    move-object/from16 v0, p0

    iput v13, v0, Llbz;->d:I

    .line 746
    const/4 v14, 0x0

    .line 777
    :goto_1
    return-object v14

    .line 749
    :cond_1
    if-nez v13, :cond_6

    const-string/jumbo v4, "\n"

    .line 752
    .local v4, "before":Ljava/lang/String;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Llbz;->a()C

    move-result v9

    .line 753
    .local v9, "charAfter":C
    if-nez v9, :cond_7

    const-string/jumbo v1, "\n"

    .line 757
    .local v1, "after":Ljava/lang/String;
    :goto_3
    sget-object v14, Llbz;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    .line 758
    .local v5, "beforeIsPunctuation":Z
    sget-object v14, Llbz;->r:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    .line 759
    .local v6, "beforeIsWhitespace":Z
    sget-object v14, Llbz;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    .line 760
    .local v2, "afterIsPunctuation":Z
    sget-object v14, Llbz;->r:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    .line 762
    .local v3, "afterIsWhitespace":Z
    if-nez v3, :cond_8

    if-eqz v2, :cond_2

    if-nez v6, :cond_2

    if-eqz v5, :cond_8

    :cond_2
    const/4 v11, 0x1

    .line 764
    .local v11, "leftFlanking":Z
    :goto_4
    if-nez v6, :cond_9

    if-eqz v5, :cond_3

    if-nez v3, :cond_3

    if-eqz v2, :cond_9

    :cond_3
    const/4 v12, 0x1

    .line 768
    .local v12, "rightFlanking":Z
    :goto_5
    const/16 v14, 0x5f

    move/from16 v0, p2

    if-ne v0, v14, :cond_c

    .line 769
    if-eqz v11, :cond_a

    if-eqz v12, :cond_4

    if-eqz v5, :cond_a

    :cond_4
    const/4 v8, 0x1

    .line 770
    .local v8, "canOpen":Z
    :goto_6
    if-eqz v12, :cond_b

    if-eqz v11, :cond_5

    if-eqz v2, :cond_b

    :cond_5
    const/4 v7, 0x1

    .line 776
    .local v7, "canClose":Z
    :goto_7
    move-object/from16 v0, p0

    iput v13, v0, Llbz;->d:I

    .line 777
    new-instance v14, Llbz$a;

    invoke-direct {v14, v10, v8, v7}, Llbz$a;-><init>(IZZ)V

    goto :goto_1

    .line 749
    .end local v1    # "after":Ljava/lang/String;
    .end local v2    # "afterIsPunctuation":Z
    .end local v3    # "afterIsWhitespace":Z
    .end local v4    # "before":Ljava/lang/String;
    .end local v5    # "beforeIsPunctuation":Z
    .end local v6    # "beforeIsWhitespace":Z
    .end local v7    # "canClose":Z
    .end local v8    # "canOpen":Z
    .end local v9    # "charAfter":C
    .end local v11    # "leftFlanking":Z
    .end local v12    # "rightFlanking":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Llbz;->c:Ljava/lang/String;

    add-int/lit8 v15, v13, -0x1

    .line 750
    invoke-virtual {v14, v15, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 754
    .restart local v4    # "before":Ljava/lang/String;
    .restart local v9    # "charAfter":C
    :cond_7
    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 762
    .restart local v1    # "after":Ljava/lang/String;
    .restart local v2    # "afterIsPunctuation":Z
    .restart local v3    # "afterIsWhitespace":Z
    .restart local v5    # "beforeIsPunctuation":Z
    .restart local v6    # "beforeIsWhitespace":Z
    :cond_8
    const/4 v11, 0x0

    goto :goto_4

    .line 764
    .restart local v11    # "leftFlanking":Z
    :cond_9
    const/4 v12, 0x0

    goto :goto_5

    .line 769
    .restart local v12    # "rightFlanking":Z
    :cond_a
    const/4 v8, 0x0

    goto :goto_6

    .line 770
    .restart local v8    # "canOpen":Z
    :cond_b
    const/4 v7, 0x0

    goto :goto_7

    .line 772
    .end local v8    # "canOpen":Z
    :cond_c
    if-eqz v11, :cond_d

    invoke-interface/range {p1 .. p1}, Lldw;->a()C

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_d

    const/4 v8, 0x1

    .line 773
    .restart local v8    # "canOpen":Z
    :goto_8
    if-eqz v12, :cond_e

    invoke-interface/range {p1 .. p1}, Lldw;->b()C

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_e

    const/4 v7, 0x1

    .restart local v7    # "canClose":Z
    :goto_9
    goto :goto_7

    .line 772
    .end local v7    # "canClose":Z
    .end local v8    # "canOpen":Z
    :cond_d
    const/4 v8, 0x0

    goto :goto_8

    .line 773
    .restart local v8    # "canOpen":Z
    :cond_e
    const/4 v7, 0x0

    goto :goto_9
.end method

.method private a(Ljava/lang/CharSequence;)Lldi;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 253
    new-instance v0, Lldi;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lldi;-><init>(Ljava/lang/String;)V

    .line 254
    .local v0, "node":Lldi;
    invoke-direct {p0, v0}, Llbz;->a(Lldd;)V

    .line 255
    return-object v0
.end method

.method private a(Ljava/lang/CharSequence;II)Lldi;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 249
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Llbz;->a(Ljava/lang/CharSequence;)Lldi;

    move-result-object v0

    return-object v0
.end method

.method private static a(CLldw;Ljava/util/Map;)V
    .locals 4
    .param p0, "delimiterChar"    # C
    .param p1, "toAdd"    # Lldw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Lldw;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Lldw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p2, "delimiterProcessors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Lldw;>;"
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lldw;

    .line 148
    .local v0, "existing":Lldw;
    if-eqz v0, :cond_0

    .line 149
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Delimiter processor conflict with delimiter char \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/Iterable;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lldw;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Lldw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "delimiterProcessors":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lldw;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Lldw;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lldw;

    .line 137
    .local v1, "delimiterProcessor":Lldw;
    invoke-interface {v1}, Lldw;->a()C

    move-result v2

    .line 138
    .local v2, "opening":C
    invoke-static {v2, v1, p1}, Llbz;->a(CLldw;Ljava/util/Map;)V

    .line 139
    invoke-interface {v1}, Lldw;->b()C

    move-result v0

    .line 140
    .local v0, "closing":C
    if-eq v2, v0, :cond_0

    .line 141
    invoke-static {v0, v1, p1}, Llbz;->a(CLldw;Ljava/util/Map;)V

    goto :goto_0

    .line 144
    .end local v0    # "closing":C
    .end local v1    # "delimiterProcessor":Lldw;
    .end local v2    # "opening":C
    :cond_1
    return-void
.end method

.method private a(Llbr;)V
    .locals 2
    .param p1, "bracket"    # Llbr;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 607
    iget-object v0, p0, Llbz;->z:Llbr;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Llbz;->z:Llbr;

    const/4 v1, 0x1

    iput-boolean v1, v0, Llbr;->g:Z

    .line 610
    :cond_0
    iput-object p1, p0, Llbz;->z:Llbr;

    .line 611
    return-void
.end method

.method private a(Llbs;)V
    .locals 16
    .param p1, "stackBottom"    # Llbs;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 782
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 785
    .local v9, "openersBottom":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Llbs;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Llbz;->y:Llbs;

    .line 786
    .local v1, "closer":Llbs;
    :goto_0
    if-eqz v1, :cond_0

    iget-object v13, v1, Llbs;->e:Llbs;

    move-object/from16 v0, p1

    if-eq v13, v0, :cond_0

    .line 787
    iget-object v1, v1, Llbs;->e:Llbs;

    goto :goto_0

    .line 790
    :cond_0
    :goto_1
    if-eqz v1, :cond_8

    .line 791
    iget-char v3, v1, Llbs;->b:C

    .line 793
    .local v3, "delimiterChar":C
    move-object/from16 v0, p0

    iget-object v13, v0, Llbz;->w:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lldw;

    .line 794
    .local v4, "delimiterProcessor":Lldw;
    iget-boolean v13, v1, Llbs;->d:Z

    if-eqz v13, :cond_1

    if-nez v4, :cond_2

    .line 795
    :cond_1
    iget-object v1, v1, Llbs;->f:Llbs;

    .line 796
    goto :goto_1

    .line 799
    :cond_2
    invoke-interface {v4}, Lldw;->a()C

    move-result v10

    .line 802
    .local v10, "openingDelimiterChar":C
    const/4 v12, 0x0

    .line 803
    .local v12, "useDelims":I
    const/4 v7, 0x0

    .line 804
    .local v7, "openerFound":Z
    const/4 v11, 0x0

    .line 805
    .local v11, "potentialOpenerFound":Z
    iget-object v6, v1, Llbs;->e:Llbs;

    .line 806
    .local v6, "opener":Llbs;
    :goto_2
    if-eqz v6, :cond_3

    move-object/from16 v0, p1

    if-eq v6, v0, :cond_3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eq v6, v13, :cond_3

    .line 807
    iget-boolean v13, v6, Llbs;->c:Z

    if-eqz v13, :cond_5

    iget-char v13, v6, Llbs;->b:C

    if-ne v13, v10, :cond_5

    .line 808
    const/4 v11, 0x1

    .line 809
    invoke-interface {v4, v6, v1}, Lldw;->a(Lldx;Lldx;)I

    move-result v12

    .line 810
    if-lez v12, :cond_5

    .line 811
    const/4 v7, 0x1

    .line 818
    :cond_3
    if-nez v7, :cond_6

    .line 819
    if-nez v11, :cond_4

    .line 827
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    iget-object v14, v1, Llbs;->e:Llbs;

    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    iget-boolean v13, v1, Llbs;->c:Z

    if-nez v13, :cond_4

    .line 13897
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Llbz;->c(Llbs;)V

    .line 834
    :cond_4
    iget-object v1, v1, Llbs;->f:Llbs;

    .line 835
    goto :goto_1

    .line 815
    :cond_5
    iget-object v6, v6, Llbs;->e:Llbs;

    goto :goto_2

    .line 838
    :cond_6
    iget-object v8, v6, Llbs;->a:Lldi;

    .line 839
    .local v8, "openerNode":Lldi;
    iget-object v2, v1, Llbs;->a:Lldi;

    .line 842
    .local v2, "closerNode":Lldi;
    iget v13, v6, Llbs;->g:I

    sub-int/2addr v13, v12

    iput v13, v6, Llbs;->g:I

    .line 843
    iget v13, v1, Llbs;->g:I

    sub-int/2addr v13, v12

    iput v13, v1, Llbs;->g:I

    .line 14020
    iget-object v13, v8, Lldi;->a:Ljava/lang/String;

    .line 845
    const/4 v14, 0x0

    .line 15020
    iget-object v15, v8, Lldi;->a:Ljava/lang/String;

    .line 846
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v15, v12

    .line 845
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 15024
    iput-object v13, v8, Lldi;->a:Ljava/lang/String;

    .line 16020
    iget-object v13, v2, Lldi;->a:Ljava/lang/String;

    .line 848
    const/4 v14, 0x0

    .line 17020
    iget-object v15, v2, Lldi;->a:Ljava/lang/String;

    .line 849
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v15, v12

    .line 848
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 17024
    iput-object v13, v2, Lldi;->a:Ljava/lang/String;

    .line 851
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v1}, Llbz;->a(Llbs;Llbs;)V

    .line 18014
    iget-object v13, v8, Lldd;->j:Lldd;

    .line 18018
    iget-object v14, v2, Lldd;->i:Lldd;

    .line 854
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Llbz;->a(Lldd;Lldd;)V

    .line 855
    invoke-interface {v4, v8, v2, v12}, Lldw;->a(Lldi;Lldi;I)V

    .line 858
    iget v13, v6, Llbs;->g:I

    if-nez v13, :cond_7

    .line 859
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Llbz;->b(Llbs;)V

    .line 862
    :cond_7
    iget v13, v1, Llbs;->g:I

    if-nez v13, :cond_0

    .line 863
    iget-object v5, v1, Llbs;->f:Llbs;

    .line 864
    .local v5, "next":Llbs;
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Llbz;->b(Llbs;)V

    .line 865
    move-object v1, v5

    goto/16 :goto_1

    .line 870
    .end local v2    # "closerNode":Lldi;
    .end local v3    # "delimiterChar":C
    .end local v4    # "delimiterProcessor":Lldw;
    .end local v5    # "next":Llbs;
    .end local v6    # "opener":Llbs;
    .end local v7    # "openerFound":Z
    .end local v8    # "openerNode":Lldi;
    .end local v10    # "openingDelimiterChar":C
    .end local v11    # "potentialOpenerFound":Z
    .end local v12    # "useDelims":I
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Llbz;->y:Llbs;

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Llbz;->y:Llbs;

    move-object/from16 v0, p1

    if-eq v13, v0, :cond_9

    .line 871
    move-object/from16 v0, p0

    iget-object v13, v0, Llbz;->y:Llbs;

    .line 18897
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Llbz;->c(Llbs;)V

    goto :goto_3

    .line 873
    :cond_9
    return-void
.end method

.method private a(Llbs;Llbs;)V
    .locals 2
    .param p1, "opener"    # Llbs;
    .param p2, "closer"    # Llbs;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 876
    iget-object v0, p2, Llbs;->e:Llbs;

    .line 877
    .local v0, "delimiter":Llbs;
    :goto_0
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 878
    iget-object v1, v0, Llbs;->e:Llbs;

    .line 19897
    .local v1, "previousDelimiter":Llbs;
    invoke-direct {p0, v0}, Llbz;->c(Llbs;)V

    .line 880
    move-object v0, v1

    .line 881
    goto :goto_0

    .line 882
    .end local v1    # "previousDelimiter":Llbs;
    :cond_0
    return-void
.end method

.method private a(Lldd;)V
    .locals 1
    .param p1, "node"    # Lldd;

    .prologue
    .line 259
    iget-object v0, p0, Llbz;->x:Lldd;

    invoke-virtual {v0, p1}, Lldd;->b(Lldd;)V

    .line 260
    return-void
.end method

.method private a(Lldd;Lldd;)V
    .locals 6
    .param p1, "fromNode"    # Lldd;
    .param p2, "toNode"    # Lldd;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 913
    const/4 v0, 0x0

    .line 914
    .local v0, "first":Lldi;
    const/4 v1, 0x0

    .line 915
    .local v1, "last":Lldi;
    const/4 v2, 0x0

    .line 917
    .local v2, "length":I
    move-object v3, p1

    .line 918
    .local v3, "node":Lldd;
    :goto_0
    if-eqz v3, :cond_2

    .line 919
    instance-of v5, v3, Lldi;

    if-eqz v5, :cond_1

    move-object v4, v3

    .line 920
    check-cast v4, Lldi;

    .line 921
    .local v4, "text":Lldi;
    if-nez v0, :cond_0

    .line 922
    move-object v0, v4

    .line 20020
    :cond_0
    iget-object v5, v4, Lldi;->a:Ljava/lang/String;

    .line 924
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    .line 925
    move-object v1, v4

    .line 932
    .end local v4    # "text":Lldi;
    :goto_1
    if-eq v3, p2, :cond_2

    .line 21014
    iget-object v3, v3, Lldd;->j:Lldd;

    .line 935
    goto :goto_0

    .line 927
    :cond_1
    invoke-static {v0, v1, v2}, Llbz;->a(Lldi;Lldi;I)V

    .line 928
    const/4 v0, 0x0

    .line 929
    const/4 v1, 0x0

    .line 930
    const/4 v2, 0x0

    goto :goto_1

    .line 938
    :cond_2
    invoke-static {v0, v1, v2}, Llbz;->a(Lldi;Lldi;I)V

    .line 939
    return-void
.end method

.method private static a(Lldi;Lldi;I)V
    .locals 6
    .param p0, "first"    # Lldi;
    .param p1, "last"    # Lldi;
    .param p2, "textLength"    # I

    .prologue
    .line 942
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-eq p0, p1, :cond_1

    .line 943
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 21020
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lldi;->a:Ljava/lang/String;

    .line 944
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22014
    iget-object v1, p0, Lldd;->j:Lldd;

    .line 23014
    .local v1, "node":Lldd;
    iget-object v3, p1, Lldd;->j:Lldd;

    .line 947
    .local v3, "stop":Lldd;
    :goto_0
    if-eq v1, v3, :cond_0

    move-object v5, v1

    .line 948
    check-cast v5, Lldi;

    .line 23020
    iget-object v5, v5, Lldi;->a:Ljava/lang/String;

    .line 948
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    move-object v4, v1

    .line 24014
    .local v4, "unlink":Lldd;
    iget-object v1, v1, Lldd;->j:Lldd;

    .line 951
    invoke-virtual {v4}, Lldd;->c()V

    goto :goto_0

    .line 953
    .end local v4    # "unlink":Lldd;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24024
    .local v0, "literal":Ljava/lang/String;
    iput-object v0, p0, Lldi;->a:Ljava/lang/String;

    .line 956
    .end local v0    # "literal":Ljava/lang/String;
    .end local v1    # "node":Lldd;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "stop":Lldd;
    :cond_1
    return-void
.end method

.method private b(Llbs;)V
    .locals 1
    .param p1, "delim"    # Llbs;

    .prologue
    .line 888
    iget-object v0, p1, Llbs;->a:Lldi;

    .line 889
    .local v0, "node":Lldi;
    invoke-virtual {v0}, Lldi;->c()V

    .line 890
    invoke-direct {p0, p1}, Llbz;->c(Llbs;)V

    .line 891
    return-void
.end method

.method private c(Llbs;)V
    .locals 2
    .param p1, "delim"    # Llbs;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 901
    iget-object v0, p1, Llbs;->e:Llbs;

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p1, Llbs;->e:Llbs;

    iget-object v1, p1, Llbs;->f:Llbs;

    iput-object v1, v0, Llbs;->f:Llbs;

    .line 904
    :cond_0
    iget-object v0, p1, Llbs;->f:Llbs;

    if-nez v0, :cond_1

    .line 906
    iget-object v0, p1, Llbs;->e:Llbs;

    iput-object v0, p0, Llbz;->y:Llbs;

    .line 910
    :goto_0
    return-void

    .line 908
    :cond_1
    iget-object v0, p1, Llbs;->f:Llbs;

    iget-object v1, p1, Llbs;->e:Llbs;

    iput-object v1, v0, Llbs;->e:Llbs;

    goto :goto_0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Llbz;->z:Llbr;

    iget-object v0, v0, Llbr;->d:Llbr;

    iput-object v0, p0, Llbz;->z:Llbr;

    .line 615
    return-void
.end method

.method private g()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 713
    iget v0, p0, Llbz;->d:I

    .line 714
    .local v0, "begin":I
    iget-object v2, p0, Llbz;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 715
    .local v1, "length":I
    :goto_0
    iget v2, p0, Llbz;->d:I

    if-eq v2, v1, :cond_0

    .line 716
    iget-object v2, p0, Llbz;->u:Ljava/util/BitSet;

    iget-object v3, p0, Llbz;->c:Ljava/lang/String;

    iget v4, p0, Llbz;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 719
    iget v2, p0, Llbz;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Llbz;->d:I

    goto :goto_0

    .line 721
    :cond_0
    iget v2, p0, Llbz;->d:I

    if-eq v0, v2, :cond_1

    .line 722
    iget-object v2, p0, Llbz;->c:Ljava/lang/String;

    iget v3, p0, Llbz;->d:I

    invoke-direct {p0, v2, v0, v3}, Llbz;->a(Ljava/lang/CharSequence;II)Lldi;

    .line 723
    const/4 v2, 0x1

    .line 725
    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method a()C
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 341
    iget v0, p0, Llbz;->d:I

    iget-object v1, p0, Llbz;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 342
    iget-object v0, p0, Llbz;->c:Ljava/lang/String;

    iget v1, p0, Llbz;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 344
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 5
    .param p1, "re"    # Ljava/util/regex/Pattern;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 323
    iget v3, p0, Llbz;->d:I

    iget-object v4, p0, Llbz;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-object v2

    .line 326
    :cond_1
    iget-object v3, p0, Llbz;->c:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 327
    .local v1, "matcher":Ljava/util/regex/Matcher;
    iget v3, p0, Llbz;->d:I

    iget-object v4, p0, Llbz;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 328
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    .line 329
    .local v0, "m":Z
    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    iput v2, p0, Llbz;->d:I

    .line 331
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lldd;)V
    .locals 11
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "block"    # Lldd;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 158
    iput-object p2, p0, Llbz;->x:Lldd;

    .line 159
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llbz;->c:Ljava/lang/String;

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Llbz;->d:I

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Llbz;->y:Llbs;

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Llbz;->z:Llbr;

    .line 1269
    :cond_0
    invoke-virtual {p0}, Llbz;->a()C

    move-result v7

    .line 1270
    if-nez v7, :cond_1

    .line 1271
    const/4 v6, 0x0

    .line 167
    .local v6, "moreToParse":Z
    :goto_0
    if-nez v6, :cond_0

    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Llbz;->a(Llbs;)V

    .line 13022
    iget-object v0, p2, Lldd;->g:Lldd;

    .line 13026
    iget-object v1, p2, Lldd;->h:Lldd;

    .line 170
    invoke-direct {p0, v0, v1}, Llbz;->a(Lldd;Lldd;)V

    .line 171
    return-void

    .line 1273
    .end local v6    # "moreToParse":Z
    :cond_1
    sparse-switch v7, :sswitch_data_0

    .line 1299
    iget-object v0, p0, Llbz;->v:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    .line 1300
    if-eqz v0, :cond_21

    .line 1301
    iget-object v0, p0, Llbz;->w:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lldw;

    .line 12433
    invoke-direct {p0, v0, v7}, Llbz;->a(Lldw;C)Llbz$a;

    move-result-object v2

    .line 12434
    if-nez v2, :cond_1f

    .line 12435
    const/4 v0, 0x0

    .line 1308
    :goto_1
    if-nez v0, :cond_2

    .line 1309
    iget v0, p0, Llbz;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llbz;->d:I

    .line 1312
    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 1313
    invoke-direct {p0, v0}, Llbz;->a(Ljava/lang/CharSequence;)Lldi;

    .line 1316
    :cond_2
    const/4 v6, 0x1

    goto :goto_0

    .line 1360
    :sswitch_0
    iget v0, p0, Llbz;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llbz;->d:I

    .line 1362
    iget-object v0, p0, Llbz;->x:Lldd;

    .line 2026
    iget-object v1, v0, Lldd;->h:Lldd;

    .line 1365
    if-eqz v1, :cond_6

    instance-of v0, v1, Lldi;

    if-eqz v0, :cond_6

    move-object v0, v1

    check-cast v0, Lldi;

    .line 3020
    iget-object v0, v0, Lldi;->a:Ljava/lang/String;

    .line 1365
    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1366
    check-cast v1, Lldi;

    .line 4020
    iget-object v2, v1, Lldi;->a:Ljava/lang/String;

    .line 1368
    sget-object v0, Llbz;->t:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1369
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    sub-int v0, v3, v0

    .line 1370
    :goto_2
    if-lez v0, :cond_3

    .line 1371
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 4024
    iput-object v2, v1, Lldi;->a:Ljava/lang/String;

    .line 1373
    :cond_3
    const/4 v1, 0x2

    if-lt v0, v1, :cond_5

    new-instance v0, Llcu;

    invoke-direct {v0}, Llcu;-><init>()V

    :goto_3
    invoke-direct {p0, v0}, Llbz;->a(Lldd;)V

    .line 1379
    :goto_4
    invoke-virtual {p0}, Llbz;->a()C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_7

    .line 1380
    iget v0, p0, Llbz;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llbz;->d:I

    goto :goto_4

    .line 1369
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 1373
    :cond_5
    new-instance v0, Lldg;

    invoke-direct {v0}, Lldg;-><init>()V

    goto :goto_3

    .line 1375
    :cond_6
    new-instance v0, Lldg;

    invoke-direct {v0}, Lldg;-><init>()V

    invoke-direct {p0, v0}, Llbz;->a(Lldd;)V

    goto :goto_4

    .line 1382
    :cond_7
    const/4 v0, 0x1

    .line 1276
    goto/16 :goto_1

    .line 4390
    :sswitch_1
    iget v0, p0, Llbz;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llbz;->d:I

    .line 4391
    invoke-virtual {p0}, Llbz;->a()C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    .line 4392
    new-instance v0, Llcu;

    invoke-direct {v0}, Llcu;-><init>()V

    invoke-direct {p0, v0}, Llbz;->a(Lldd;)V

    .line 4393
    iget v0, p0, Llbz;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llbz;->d:I

    .line 4400
    :goto_5
    const/4 v0, 0x1

    .line 1279
    goto/16 :goto_1

    .line 4394
    :cond_8
    iget v0, p0, Llbz;->d:I

    iget-object v1, p0, Llbz;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_9

    sget-object v0, Llbz;->k:Ljava/util/regex/Pattern;

    iget-object v1, p0, Llbz;->c:Ljava/lang/String;

    iget v2, p0, Llbz;->d:I

    iget v3, p0, Llbz;->d:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4395
    iget-object v0, p0, Llbz;->c:Ljava/lang/String;

    iget v1, p0, Llbz;->d:I

    iget v2, p0, Llbz;->d:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Llbz;->a(Ljava/lang/CharSequence;II)Lldi;

    .line 4396
    iget v0, p0, Llbz;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llbz;->d:I

    goto :goto_5

    .line 4398
    :cond_9
    const-string/jumbo v0, "\\"

    invoke-direct {p0, v0}, Llbz;->a(Ljava/lang/CharSequence;)Lldi;

    goto :goto_5

    .line 4407
    :sswitch_2
    sget-object v0, Llbz;->n:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Llbz;->a(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 4408
    if-nez v0, :cond_a

    .line 4409
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 4411
    :cond_a
    iget v1, p0, Llbz;->d:I

    .line 4413
    :cond_b
    sget-object v2, Llbz;->m:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v2}, Llbz;->a(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 4414
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4415
    new-instance v2, Llcq;

    invoke-direct {v2}, Llcq;-><init>()V

    .line 4416
    iget-object v3, p0, Llbz;->c:Ljava/lang/String;

    iget v4, p0, Llbz;->d:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, v4, v0

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4417
    sget-object v1, Llbz;->s:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5024
    iput-object v0, v2, Llcq;->a:Ljava/lang/String;

    .line 4419
    invoke-direct {p0, v2}, Llbz;->a(Lldd;)V

    .line 4420
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 4424
    :cond_c
    iput v1, p0, Llbz;->d:I

    .line 4425
    invoke-direct {p0, v0}, Llbz;->a(Ljava/lang/CharSequence;)Lldi;

    .line 4426
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 5457
    :sswitch_3
    iget v2, p0, Llbz;->d:I

    .line 5458
    iget v0, p0, Llbz;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llbz;->d:I

    .line 5460
    const-string/jumbo v0, "["

    invoke-direct {p0, v0}, Llbz;->a(Ljava/lang/CharSequence;)Lldi;

    move-result-object v1

    .line 5463
    iget-object v3, p0, Llbz;->z:Llbr;

    iget-object v4, p0, Llbz;->y:Llbs;

    .line 6035
    new-instance v0, Llbr;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Llbr;-><init>(Lldi;ILlbr;Llbs;Z)V

    .line 5463
    invoke-direct {p0, v0}, Llbz;->a(Llbr;)V

    .line 5465
    const/4 v0, 0x1

    .line 1285
    goto/16 :goto_1

    .line 6473
    :sswitch_4
    iget v0, p0, Llbz;->d:I

    .line 6474
    iget v1, p0, Llbz;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Llbz;->d:I

    .line 6475
    invoke-virtual {p0}, Llbz;->a()C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_d

    .line 6476
    iget v1, p0, Llbz;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Llbz;->d:I

    .line 6478
    const-string/jumbo v1, "!["

    invoke-direct {p0, v1}, Llbz;->a(Ljava/lang/CharSequence;)Lldi;

    move-result-object v1

    .line 6481
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Llbz;->z:Llbr;

    iget-object v4, p0, Llbz;->y:Llbs;

    .line 7039
    new-instance v0, Llbr;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Llbr;-><init>(Lldi;ILlbr;Llbs;Z)V

    .line 6481
    invoke-direct {p0, v0}, Llbz;->a(Llbr;)V

    .line 6485
    :goto_6
    const/4 v0, 0x1

    .line 1288
    goto/16 :goto_1

    .line 6483
    :cond_d
    const-string/jumbo v0, "!"

    invoke-direct {p0, v0}, Llbz;->a(Ljava/lang/CharSequence;)Lldi;

    goto :goto_6

    .line 7493
    :sswitch_5
    iget v0, p0, Llbz;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llbz;->d:I

    .line 7494
    iget v4, p0, Llbz;->d:I

    .line 7497
    iget-object v5, p0, Llbz;->z:Llbr;

    .line 7498
    if-nez v5, :cond_e

    .line 7500
    const-string/jumbo v0, "]"

    invoke-direct {p0, v0}, Llbz;->a(Ljava/lang/CharSequence;)Lldi;

    .line 7501
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 7504
    :cond_e
    iget-boolean v0, v5, Llbr;->f:Z

    if-nez v0, :cond_f

    .line 7506
    const-string/jumbo v0, "]"

    invoke-direct {p0, v0}, Llbz;->a(Ljava/lang/CharSequence;)Lldi;

    .line 7507
    invoke-direct {p0}, Llbz;->f()V

    .line 7508
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 7513
    :cond_f
    const/4 v3, 0x0

    .line 7514
    const/4 v0, 0x0

    .line 7515
    const/4 v1, 0x0

    .line 7518
    invoke-virtual {p0}, Llbz;->a()C

    move-result v2

    const/16 v8, 0x28

    if-ne v2, v8, :cond_23

    .line 7519
    iget v2, p0, Llbz;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Llbz;->d:I

    .line 7520
    invoke-virtual {p0}, Llbz;->b()Z

    .line 7521
    invoke-virtual {p0}, Llbz;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 7522
    invoke-virtual {p0}, Llbz;->b()Z

    .line 7524
    sget-object v2, Llbz;->s:Ljava/util/regex/Pattern;

    iget-object v8, p0, Llbz;->c:Ljava/lang/String;

    iget v9, p0, Llbz;->d:I

    add-int/lit8 v9, v9, -0x1

    iget v10, p0, Llbz;->d:I

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 7525
    invoke-virtual {p0}, Llbz;->d()Ljava/lang/String;

    move-result-object v0

    .line 7526
    invoke-virtual {p0}, Llbz;->b()Z

    .line 7528
    :cond_10
    invoke-virtual {p0}, Llbz;->a()C

    move-result v2

    const/16 v8, 0x29

    if-ne v2, v8, :cond_12

    .line 7529
    iget v1, p0, Llbz;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Llbz;->d:I

    .line 7530
    const/4 v1, 0x1

    move-object v2, v0

    .line 7538
    :goto_7
    if-nez v1, :cond_22

    .line 7541
    iget v8, p0, Llbz;->d:I

    .line 7542
    invoke-virtual {p0}, Llbz;->e()I

    move-result v9

    .line 7543
    const/4 v0, 0x0

    .line 7544
    const/4 v10, 0x2

    if-le v9, v10, :cond_13

    .line 7545
    iget-object v0, p0, Llbz;->c:Ljava/lang/String;

    add-int/2addr v9, v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 7553
    :cond_11
    :goto_8
    if-eqz v0, :cond_22

    .line 7554
    iget-object v8, p0, Llbz;->b:Ljava/util/Map;

    invoke-static {v0}, Llci;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llda;

    .line 7555
    if-eqz v0, :cond_22

    .line 8042
    iget-object v2, v0, Llda;->a:Ljava/lang/String;

    .line 8050
    iget-object v1, v0, Llda;->b:Ljava/lang/String;

    .line 7558
    const/4 v0, 0x1

    .line 7563
    :goto_9
    if-eqz v0, :cond_18

    .line 7565
    iget-boolean v0, v5, Llbr;->c:Z

    if-eqz v0, :cond_14

    new-instance v0, Llcy;

    invoke-direct {v0, v2, v1}, Llcy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7567
    :goto_a
    iget-object v1, v5, Llbr;->a:Lldi;

    .line 9014
    iget-object v1, v1, Lldd;->j:Lldd;

    .line 7568
    :goto_b
    if-eqz v1, :cond_15

    .line 10014
    iget-object v2, v1, Lldd;->j:Lldd;

    .line 7570
    invoke-virtual {v0, v1}, Lldd;->b(Lldd;)V

    move-object v1, v2

    .line 7572
    goto :goto_b

    .line 7532
    :cond_12
    iput v4, p0, Llbz;->d:I

    move-object v2, v0

    goto :goto_7

    .line 7546
    :cond_13
    iget-boolean v8, v5, Llbr;->g:Z

    if-nez v8, :cond_11

    .line 7550
    iget-object v0, p0, Llbz;->c:Ljava/lang/String;

    iget v8, v5, Llbr;->b:I

    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 7565
    :cond_14
    new-instance v0, Llda;

    invoke-direct {v0, v2, v1}, Llda;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 7573
    :cond_15
    invoke-direct {p0, v0}, Llbz;->a(Lldd;)V

    .line 7576
    iget-object v1, v5, Llbr;->e:Llbs;

    invoke-direct {p0, v1}, Llbz;->a(Llbs;)V

    .line 10022
    iget-object v1, v0, Lldd;->g:Lldd;

    .line 10026
    iget-object v0, v0, Lldd;->h:Lldd;

    .line 7577
    invoke-direct {p0, v1, v0}, Llbz;->a(Lldd;Lldd;)V

    .line 7579
    iget-object v0, v5, Llbr;->a:Lldi;

    invoke-virtual {v0}, Lldi;->c()V

    .line 7580
    invoke-direct {p0}, Llbz;->f()V

    .line 7583
    iget-boolean v0, v5, Llbr;->c:Z

    if-nez v0, :cond_17

    .line 7584
    iget-object v0, p0, Llbz;->z:Llbr;

    .line 7585
    :goto_c
    if-eqz v0, :cond_17

    .line 7586
    iget-boolean v1, v0, Llbr;->c:Z

    if-nez v1, :cond_16

    .line 7588
    const/4 v1, 0x0

    iput-boolean v1, v0, Llbr;->f:Z

    .line 7590
    :cond_16
    iget-object v0, v0, Llbr;->d:Llbr;

    goto :goto_c

    .line 7594
    :cond_17
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 7598
    :cond_18
    const-string/jumbo v0, "]"

    invoke-direct {p0, v0}, Llbz;->a(Ljava/lang/CharSequence;)Lldi;

    .line 7599
    invoke-direct {p0}, Llbz;->f()V

    .line 7601
    iput v4, p0, Llbz;->d:I

    .line 7602
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 10664
    :sswitch_6
    sget-object v0, Llbz;->o:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Llbz;->a(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 10665
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 10666
    new-instance v1, Llda;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mailto:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Llda;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10667
    new-instance v2, Lldi;

    invoke-direct {v2, v0}, Lldi;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Llda;->b(Lldd;)V

    .line 10668
    invoke-direct {p0, v1}, Llbz;->a(Lldd;)V

    .line 10669
    const/4 v0, 0x1

    .line 1293
    :goto_d
    if-nez v0, :cond_19

    .line 10685
    sget-object v0, Llbz;->f:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Llbz;->a(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 10686
    if-eqz v0, :cond_1c

    .line 10687
    new-instance v1, Llcx;

    invoke-direct {v1}, Llcx;-><init>()V

    .line 11022
    iput-object v0, v1, Llcx;->a:Ljava/lang/String;

    .line 10689
    invoke-direct {p0, v1}, Llbz;->a(Lldd;)V

    .line 10690
    const/4 v0, 0x1

    .line 1293
    :goto_e
    if-eqz v0, :cond_1d

    :cond_19
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 10670
    :cond_1a
    sget-object v0, Llbz;->p:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Llbz;->a(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 10671
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 10672
    new-instance v1, Llda;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Llda;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10673
    new-instance v2, Lldi;

    invoke-direct {v2, v0}, Lldi;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Llda;->b(Lldd;)V

    .line 10674
    invoke-direct {p0, v1}, Llbz;->a(Lldd;)V

    .line 10675
    const/4 v0, 0x1

    goto :goto_d

    .line 10677
    :cond_1b
    const/4 v0, 0x0

    goto :goto_d

    .line 10692
    :cond_1c
    const/4 v0, 0x0

    goto :goto_e

    .line 1293
    :cond_1d
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 11701
    :sswitch_7
    sget-object v0, Llbz;->l:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Llbz;->a(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 11702
    invoke-static {v0}, Llcj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Llbz;->a(Ljava/lang/CharSequence;)Lldi;

    .line 11703
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 11705
    :cond_1e
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 12437
    :cond_1f
    iget v8, v2, Llbz$a;->a:I

    .line 12438
    iget v0, p0, Llbz;->d:I

    .line 12440
    iget v1, p0, Llbz;->d:I

    add-int/2addr v1, v8

    iput v1, p0, Llbz;->d:I

    .line 12441
    iget-object v1, p0, Llbz;->c:Ljava/lang/String;

    iget v3, p0, Llbz;->d:I

    invoke-direct {p0, v1, v0, v3}, Llbz;->a(Ljava/lang/CharSequence;II)Lldi;

    move-result-object v1

    .line 12444
    new-instance v0, Llbs;

    iget-boolean v3, v2, Llbz$a;->c:Z

    iget-boolean v4, v2, Llbz$a;->b:Z

    iget-object v5, p0, Llbz;->y:Llbs;

    move v2, v7

    invoke-direct/range {v0 .. v5}, Llbs;-><init>(Lldi;CZZLlbs;)V

    iput-object v0, p0, Llbz;->y:Llbs;

    .line 12445
    iget-object v0, p0, Llbz;->y:Llbs;

    iput v8, v0, Llbs;->g:I

    .line 12446
    iget-object v0, p0, Llbz;->y:Llbs;

    iget-object v0, v0, Llbs;->e:Llbs;

    if-eqz v0, :cond_20

    .line 12447
    iget-object v0, p0, Llbz;->y:Llbs;

    iget-object v0, v0, Llbs;->e:Llbs;

    iget-object v1, p0, Llbz;->y:Llbs;

    iput-object v1, v0, Llbs;->f:Llbs;

    .line 12450
    :cond_20
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1304
    :cond_21
    invoke-direct {p0}, Llbz;->g()Z

    move-result v0

    goto/16 :goto_1

    :cond_22
    move v0, v1

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_9

    :cond_23
    move-object v2, v0

    goto/16 :goto_7

    .line 1273
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x21 -> :sswitch_4
        0x26 -> :sswitch_7
        0x3c -> :sswitch_6
        0x5b -> :sswitch_3
        0x5c -> :sswitch_1
        0x5d -> :sswitch_5
        0x60 -> :sswitch_2
    .end sparse-switch
.end method

.method b()Z
    .locals 1

    .prologue
    .line 352
    sget-object v0, Llbz;->q:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Llbz;->a(Ljava/util/regex/Pattern;)Ljava/lang/String;

    .line 353
    const/4 v0, 0x1

    return v0
.end method

.method c()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 621
    sget-object v1, Llbz;->h:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v1}, Llbz;->a(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 622
    .local v0, "res":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 623
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 624
    const-string/jumbo v1, ""

    .line 633
    :goto_0
    return-object v1

    .line 626
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llci;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 629
    :cond_1
    sget-object v1, Llbz;->i:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v1}, Llbz;->a(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 630
    if-eqz v0, :cond_2

    .line 631
    invoke-static {v0}, Llci;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 633
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method d()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 642
    sget-object v1, Llbz;->g:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v1}, Llbz;->a(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, "title":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 645
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llci;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 647
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method e()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 655
    sget-object v1, Llbz;->j:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v1}, Llbz;->a(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 656
    .local v0, "m":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0
.end method
