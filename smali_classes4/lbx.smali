.class public final Llbx;
.super Lldo;
.source "HtmlBlockParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llbx$a;
    }
.end annotation


# static fields
.field private static final a:[[Ljava/util/regex/Pattern;


# instance fields
.field private final b:Llcw;

.field private final c:Ljava/util/regex/Pattern;

.field private d:Z

.field private e:Llbn;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 13
    const/16 v0, 0x8

    new-array v0, v0, [[Ljava/util/regex/Pattern;

    new-array v1, v4, [Ljava/util/regex/Pattern;

    aput-object v7, v1, v5

    aput-object v7, v1, v6

    aput-object v1, v0, v5

    new-array v1, v4, [Ljava/util/regex/Pattern;

    const-string/jumbo v2, "^<(?:script|pre|style)(?:\\s|>|$)"

    .line 16
    invoke-static {v2, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v1, v5

    const-string/jumbo v2, "</(?:script|pre|style)>"

    .line 17
    invoke-static {v2, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v4, [Ljava/util/regex/Pattern;

    const-string/jumbo v2, "^<!--"

    .line 20
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v1, v5

    const-string/jumbo v2, "-->"

    .line 21
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    const/4 v1, 0x3

    new-array v2, v4, [Ljava/util/regex/Pattern;

    const-string/jumbo v3, "^<[?]"

    .line 24
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    aput-object v3, v2, v5

    const-string/jumbo v3, "\\?>"

    .line 25
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v4, [Ljava/util/regex/Pattern;

    const-string/jumbo v3, "^<![A-Z]"

    .line 28
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    aput-object v3, v2, v5

    const-string/jumbo v3, ">"

    .line 29
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v4, [Ljava/util/regex/Pattern;

    const-string/jumbo v3, "^<!\\[CDATA\\["

    .line 32
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    aput-object v3, v2, v5

    const-string/jumbo v3, "\\]\\]>"

    .line 33
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [Ljava/util/regex/Pattern;

    const-string/jumbo v3, "^</?(?:address|article|aside|base|basefont|blockquote|body|caption|center|col|colgroup|dd|details|dialog|dir|div|dl|dt|fieldset|figcaption|figure|footer|form|frame|frameset|h1|h2|h3|h4|h5|h6|head|header|hr|html|iframe|legend|li|link|main|menu|menuitem|meta|nav|noframes|ol|optgroup|option|p|param|section|source|summary|table|tbody|td|tfoot|th|thead|title|tr|track|ul)(?:\\s|[/]?[>]|$)"

    .line 36
    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v7, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [Ljava/util/regex/Pattern;

    const-string/jumbo v3, "^(?:<[A-Za-z][A-Za-z0-9-]*(?:\\s+[a-zA-Z_:][a-zA-Z0-9:._-]*(?:\\s*=\\s*(?:[^\"\'=<>`\\x00-\\x20]+|\'[^\']*\'|\"[^\"]*\"))?)*\\s*/?>|</[A-Za-z][A-Za-z0-9-]*\\s*[>])\\s*$"

    .line 56
    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v7, v2, v6

    aput-object v2, v0, v1

    sput-object v0, Llbx;->a:[[Ljava/util/regex/Pattern;

    .line 13
    return-void
.end method

.method private constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 1
    .param p1, "closingPattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 67
    invoke-direct {p0}, Lldo;-><init>()V

    .line 61
    new-instance v0, Llcw;

    invoke-direct {v0}, Llcw;-><init>()V

    iput-object v0, p0, Llbx;->b:Llcw;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Llbx;->d:Z

    .line 65
    new-instance v0, Llbn;

    invoke-direct {v0}, Llbn;-><init>()V

    iput-object v0, p0, Llbx;->e:Llbn;

    .line 68
    iput-object p1, p0, Llbx;->c:Ljava/util/regex/Pattern;

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/regex/Pattern;B)V
    .locals 0
    .param p1, "x0"    # Ljava/util/regex/Pattern;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Llbx;-><init>(Ljava/util/regex/Pattern;)V

    return-void
.end method

.method static synthetic d()[[Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Llbx;->a:[[Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method public final a(Lldv;)Lldq;
    .locals 2
    .param p1, "state"    # Lldv;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 78
    iget-boolean v1, p0, Llbx;->d:Z

    if-eqz v1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-object v0

    .line 83
    :cond_1
    invoke-interface {p1}, Lldv;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Llbx;->c:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_0

    .line 86
    :cond_2
    invoke-interface {p1}, Lldv;->b()I

    move-result v0

    invoke-static {v0}, Lldq;->a(I)Lldq;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "line"    # Ljava/lang/CharSequence;

    .prologue
    .line 92
    iget-object v0, p0, Llbx;->e:Llbn;

    invoke-virtual {v0, p1}, Llbn;->a(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Llbx;->c:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llbx;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Llbx;->d:Z

    .line 97
    :cond_0
    return-void
.end method

.method public final b()Llcn;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Llbx;->b:Llcw;

    return-object v0
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 101
    iget-object v0, p0, Llbx;->b:Llcw;

    iget-object v1, p0, Llbx;->e:Llbn;

    .line 1026
    iget-object v1, v1, Llbn;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2022
    iput-object v1, v0, Llcw;->a:Ljava/lang/String;

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Llbx;->e:Llbn;

    .line 103
    return-void
.end method
