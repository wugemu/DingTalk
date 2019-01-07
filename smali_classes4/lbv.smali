.class public final Llbv;
.super Lldo;
.source "FencedCodeBlockParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llbv$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;


# instance fields
.field private final c:Llct;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string/jumbo v0, "^`{3,}(?!.*`)|^~{3,}(?!.*~)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Llbv;->a:Ljava/util/regex/Pattern;

    .line 15
    const-string/jumbo v0, "^(?:`{3,}|~{3,})(?= *$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Llbv;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(CII)V
    .locals 1
    .param p1, "fenceChar"    # C
    .param p2, "fenceLength"    # I
    .param p3, "fenceIndent"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Lldo;-><init>()V

    .line 17
    new-instance v0, Llct;

    invoke-direct {v0}, Llct;-><init>()V

    iput-object v0, p0, Llbv;->c:Llct;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Llbv;->e:Ljava/lang/StringBuilder;

    .line 23
    iget-object v0, p0, Llbv;->c:Llct;

    .line 1022
    iput-char p1, v0, Llct;->a:C

    .line 24
    iget-object v0, p0, Llbv;->c:Llct;

    .line 1030
    iput p2, v0, Llct;->b:I

    .line 25
    iget-object v0, p0, Llbv;->c:Llct;

    .line 1038
    iput p3, v0, Llct;->c:I

    .line 26
    return-void
.end method

.method static synthetic d()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Llbv;->a:Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method public final a(Lldv;)Lldq;
    .locals 11
    .param p1, "state"    # Lldv;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v10, -0x1

    .line 35
    invoke-interface {p1}, Lldv;->c()I

    move-result v5

    .line 36
    .local v5, "nextNonSpace":I
    invoke-interface {p1}, Lldv;->b()I

    move-result v4

    .line 37
    .local v4, "newIndex":I
    invoke-interface {p1}, Lldv;->a()Ljava/lang/CharSequence;

    move-result-object v1

    .line 38
    .local v1, "line":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 39
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-interface {p1}, Lldv;->e()I

    move-result v8

    const/4 v9, 0x3

    if-gt v8, v9, :cond_0

    .line 40
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v5, v8, :cond_0

    .line 41
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    iget-object v9, p0, Llbv;->c:Llct;

    .line 2018
    iget-char v9, v9, Llct;->a:C

    .line 41
    if-ne v8, v9, :cond_0

    sget-object v8, Llbv;->b:Ljava/util/regex/Pattern;

    .line 42
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-interface {v1, v5, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 43
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_0

    move v3, v7

    .line 44
    .local v3, "matches":Z
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v8, p0, Llbv;->c:Llct;

    .line 2026
    iget v8, v8, Llct;->b:I

    .line 44
    if-lt v6, v8, :cond_1

    .line 3026
    new-instance v6, Llbo;

    invoke-direct {v6, v10, v10, v7}, Llbo;-><init>(IIZ)V

    .line 55
    :goto_1
    return-object v6

    .end local v3    # "matches":Z
    :cond_0
    move v3, v6

    .line 43
    goto :goto_0

    .line 49
    .restart local v3    # "matches":Z
    :cond_1
    iget-object v6, p0, Llbv;->c:Llct;

    .line 3034
    iget v0, v6, Llct;->c:I

    .line 50
    .local v0, "i":I
    :goto_2
    if-lez v0, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v4, v6, :cond_2

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_2

    .line 51
    add-int/lit8 v4, v4, 0x1

    .line 52
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 55
    :cond_2
    invoke-static {v4}, Lldq;->a(I)Lldq;

    move-result-object v6

    goto :goto_1
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "line"    # Ljava/lang/CharSequence;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 60
    iget-object v0, p0, Llbv;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 61
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llbv;->d:Ljava/lang/String;

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Llbv;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v0, p0, Llbv;->e:Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final b()Llcn;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Llbv;->c:Llct;

    return-object v0
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 71
    iget-object v0, p0, Llbv;->c:Llct;

    iget-object v1, p0, Llbv;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llci;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3049
    iput-object v1, v0, Llct;->d:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Llbv;->c:Llct;

    iget-object v1, p0, Llbv;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3057
    iput-object v1, v0, Llct;->e:Ljava/lang/String;

    .line 73
    return-void
.end method
