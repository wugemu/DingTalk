.class public Llen;
.super Llet;
.source "HtmlTreeBuilder.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field static final synthetic k:Z

.field private static final s:[Ljava/lang/String;

.field private static final t:[Ljava/lang/String;

.field private static final u:[Ljava/lang/String;

.field private static final v:[Ljava/lang/String;

.field private static final w:[Ljava/lang/String;

.field private static final x:[Ljava/lang/String;

.field private static final y:[Ljava/lang/String;


# instance fields
.field private A:Lleh;

.field private B:Lorg/jsoup/parser/Token$e;

.field private C:[Ljava/lang/String;

.field public b:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public c:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public d:Lleh;

.field public e:Llei;

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lleh;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Z

.field public i:Z

.field public j:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 14
    const-class v0, Llen;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Llen;->k:Z

    .line 16
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v3, "script"

    aput-object v3, v0, v2

    const-string/jumbo v3, "style"

    aput-object v3, v0, v1

    sput-object v0, Llen;->s:[Ljava/lang/String;

    .line 17
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "applet"

    aput-object v3, v0, v2

    const-string/jumbo v3, "caption"

    aput-object v3, v0, v1

    const-string/jumbo v3, "html"

    aput-object v3, v0, v5

    const-string/jumbo v3, "table"

    aput-object v3, v0, v6

    const-string/jumbo v3, "td"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string/jumbo v4, "th"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "marquee"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "object"

    aput-object v4, v0, v3

    sput-object v0, Llen;->a:[Ljava/lang/String;

    .line 18
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v3, "ol"

    aput-object v3, v0, v2

    const-string/jumbo v3, "ul"

    aput-object v3, v0, v1

    sput-object v0, Llen;->t:[Ljava/lang/String;

    .line 19
    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v3, "button"

    aput-object v3, v0, v2

    sput-object v0, Llen;->u:[Ljava/lang/String;

    .line 20
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v3, "html"

    aput-object v3, v0, v2

    const-string/jumbo v3, "table"

    aput-object v3, v0, v1

    sput-object v0, Llen;->v:[Ljava/lang/String;

    .line 21
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v3, "optgroup"

    aput-object v3, v0, v2

    const-string/jumbo v3, "option"

    aput-object v3, v0, v1

    sput-object v0, Llen;->w:[Ljava/lang/String;

    .line 22
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "dd"

    aput-object v3, v0, v2

    const-string/jumbo v3, "dt"

    aput-object v3, v0, v1

    const-string/jumbo v3, "li"

    aput-object v3, v0, v5

    const-string/jumbo v3, "option"

    aput-object v3, v0, v6

    const-string/jumbo v3, "optgroup"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string/jumbo v4, "p"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "rp"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "rt"

    aput-object v4, v0, v3

    sput-object v0, Llen;->x:[Ljava/lang/String;

    .line 23
    const/16 v0, 0x4f

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "address"

    aput-object v3, v0, v2

    const-string/jumbo v2, "applet"

    aput-object v2, v0, v1

    const-string/jumbo v1, "area"

    aput-object v1, v0, v5

    const-string/jumbo v1, "article"

    aput-object v1, v0, v6

    const-string/jumbo v1, "aside"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "base"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "basefont"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "bgsound"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "blockquote"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "body"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "br"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "button"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "caption"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "center"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "col"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "colgroup"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "command"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "dd"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "details"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "dir"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "div"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "dl"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "dt"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "embed"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "fieldset"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "figcaption"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "figure"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "footer"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "form"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "frame"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "frameset"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "h1"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "h2"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "h3"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "h4"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "h5"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "h6"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "head"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "header"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "hgroup"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v2, "hr"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string/jumbo v2, "html"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string/jumbo v2, "iframe"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string/jumbo v2, "img"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string/jumbo v2, "input"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string/jumbo v2, "isindex"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string/jumbo v2, "li"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string/jumbo v2, "link"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string/jumbo v2, "listing"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string/jumbo v2, "marquee"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string/jumbo v2, "menu"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string/jumbo v2, "meta"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string/jumbo v2, "nav"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string/jumbo v2, "noembed"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string/jumbo v2, "noframes"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string/jumbo v2, "noscript"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string/jumbo v2, "object"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string/jumbo v2, "ol"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string/jumbo v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string/jumbo v2, "param"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string/jumbo v2, "plaintext"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string/jumbo v2, "pre"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string/jumbo v2, "script"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string/jumbo v2, "section"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string/jumbo v2, "select"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string/jumbo v2, "style"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string/jumbo v2, "summary"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string/jumbo v2, "table"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string/jumbo v2, "tbody"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string/jumbo v2, "td"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string/jumbo v2, "textarea"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string/jumbo v2, "tfoot"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string/jumbo v2, "th"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string/jumbo v2, "thead"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string/jumbo v2, "tr"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string/jumbo v2, "ul"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string/jumbo v2, "wbr"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string/jumbo v2, "xmp"

    aput-object v2, v0, v1

    sput-object v0, Llen;->y:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 14
    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Llet;-><init>()V

    .line 35
    iput-boolean v2, p0, Llen;->z:Z

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llen;->f:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llen;->g:Ljava/util/List;

    .line 41
    new-instance v0, Lorg/jsoup/parser/Token$e;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$e;-><init>()V

    iput-object v0, p0, Llen;->B:Lorg/jsoup/parser/Token$e;

    .line 43
    iput-boolean v1, p0, Llen;->h:Z

    .line 44
    iput-boolean v2, p0, Llen;->i:Z

    .line 45
    iput-boolean v2, p0, Llen;->j:Z

    .line 432
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Llen;->C:[Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static a(Ljava/util/ArrayList;Lleh;Lleh;)V
    .locals 2
    .param p1, "out"    # Lleh;
    .param p2, "in"    # Lleh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lleh;",
            ">;",
            "Lleh;",
            "Lleh;",
            ")V"
        }
    .end annotation

    .prologue
    .line 377
    .local p0, "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lleh;>;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 378
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lleb;->a(Z)V

    .line 379
    invoke-virtual {p0, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 380
    return-void

    .line 378
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "extras"    # [Ljava/lang/String;

    .prologue
    .line 463
    sget-object v0, Llen;->a:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Llen;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "baseTypes"    # [Ljava/lang/String;
    .param p3, "extraTypes"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 435
    iget-object v0, p0, Llen;->C:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 436
    iget-object v0, p0, Llen;->C:[Ljava/lang/String;

    invoke-direct {p0, v0, p2, p3}, Llen;->a([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/util/ArrayList;Lleh;)Z
    .locals 3
    .param p1, "element"    # Lleh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lleh;",
            ">;",
            "Lleh;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lleh;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "pos":I
    :goto_0
    if-ltz v1, :cond_1

    .line 275
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lleh;

    .line 276
    .local v0, "next":Lleh;
    if-ne v0, p1, :cond_0

    .line 277
    const/4 v2, 0x1

    .line 280
    .end local v0    # "next":Lleh;
    :goto_1
    return v2

    .line 274
    .restart local v0    # "next":Lleh;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 280
    .end local v0    # "next":Lleh;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private a([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "targetNames"    # [Ljava/lang/String;
    .param p2, "baseTypes"    # [Ljava/lang/String;
    .param p3, "extraTypes"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 440
    iget-object v4, p0, Llen;->o:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "pos":I
    :goto_0
    if-ltz v2, :cond_3

    .line 441
    iget-object v4, p0, Llen;->o:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lleh;

    .line 442
    .local v0, "el":Lleh;
    invoke-virtual {v0}, Lleh;->a()Ljava/lang/String;

    move-result-object v1

    .line 443
    .local v1, "elName":Ljava/lang/String;
    invoke-static {v1, p1}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 444
    const/4 v3, 0x1

    .line 451
    .end local v0    # "el":Lleh;
    .end local v1    # "elName":Ljava/lang/String;
    :cond_0
    :goto_1
    return v3

    .line 445
    .restart local v0    # "el":Lleh;
    .restart local v1    # "elName":Ljava/lang/String;
    :cond_1
    invoke-static {v1, p2}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 447
    if-eqz p3, :cond_2

    invoke-static {v1, p3}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 440
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 450
    .end local v0    # "el":Lleh;
    .end local v1    # "elName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "Should not be reachable"

    invoke-static {v4}, Lleb;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private b(Llej;)V
    .locals 1
    .param p1, "node"    # Llej;

    .prologue
    .line 242
    iget-object v0, p0, Llen;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 243
    iget-object v0, p0, Llen;->n:Lorg/jsoup/nodes/Document;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Document;->a(Llej;)Lleh;

    .line 250
    :goto_0
    instance-of v0, p1, Lleh;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lleh;

    .line 17087
    iget-object v0, v0, Lleh;->c:Lleq;

    .line 17164
    iget-boolean v0, v0, Lleq;->h:Z

    .line 250
    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Llen;->e:Llei;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Llen;->e:Llei;

    check-cast p1, Lleh;

    .line 18045
    .end local p1    # "node":Llej;
    iget-object v0, v0, Llei;->a:Lorg/jsoup/select/Elements;

    invoke-virtual {v0, p1}, Lorg/jsoup/select/Elements;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_0
    return-void

    .line 16502
    .restart local p1    # "node":Llej;
    :cond_1
    iget-boolean v0, p0, Llen;->i:Z

    .line 244
    if-eqz v0, :cond_2

    .line 245
    invoke-virtual {p0, p1}, Llen;->a(Llej;)V

    goto :goto_0

    .line 247
    :cond_2
    invoke-virtual {p0}, Llen;->p()Lleh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lleh;->a(Llej;)Lleh;

    goto :goto_0
.end method

.method private varargs c([Ljava/lang/String;)V
    .locals 4
    .param p1, "nodeNames"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 346
    iget-object v2, p0, Llen;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "pos":I
    :goto_0
    if-ltz v1, :cond_0

    .line 347
    iget-object v2, p0, Llen;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lleh;

    .line 348
    .local v0, "next":Lleh;
    invoke-virtual {v0}, Lleh;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lleh;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 351
    iget-object v2, p0, Llen;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 346
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 353
    .end local v0    # "next":Lleh;
    :cond_0
    return-void
.end method

.method public static f(Lleh;)Z
    .locals 2
    .param p0, "el"    # Lleh;

    .prologue
    .line 551
    invoke-virtual {p0}, Lleh;->a()Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, "name":Ljava/lang/String;
    sget-object v1, Llen;->y:[Ljava/lang/String;

    invoke-static {v0, v1}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private i(Lleh;)V
    .locals 1
    .param p1, "el"    # Lleh;

    .prologue
    .line 194
    invoke-direct {p0, p1}, Llen;->b(Llej;)V

    .line 195
    iget-object v0, p0, Llen;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;Lleh;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;)Ljava/util/List;
    .locals 10
    .param p1, "inputFragment"    # Ljava/lang/String;
    .param p2, "context"    # Lleh;
    .param p3, "baseUri"    # Ljava/lang/String;
    .param p4, "errors"    # Lorg/jsoup/parser/ParseErrorList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lleh;",
            "Ljava/lang/String;",
            "Lorg/jsoup/parser/ParseErrorList;",
            ")",
            "Ljava/util/List",
            "<",
            "Llej;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 58
    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState;->Initial:Lorg/jsoup/parser/HtmlTreeBuilderState;

    iput-object v5, p0, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 59
    invoke-virtual {p0, p1, p3, p4}, Llen;->b(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;)V

    .line 60
    iput-object p2, p0, Llen;->A:Lleh;

    .line 61
    iput-boolean v7, p0, Llen;->j:Z

    .line 62
    const/4 v4, 0x0

    .line 64
    .local v4, "root":Lleh;
    if-eqz p2, :cond_2

    .line 65
    invoke-virtual {p2}, Lleh;->t()Lorg/jsoup/nodes/Document;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 66
    iget-object v5, p0, Llen;->n:Lorg/jsoup/nodes/Document;

    invoke-virtual {p2}, Lleh;->t()Lorg/jsoup/nodes/Document;

    move-result-object v6

    .line 1558
    iget-object v6, v6, Lorg/jsoup/nodes/Document;->b:Lorg/jsoup/nodes/Document$QuirksMode;

    .line 1562
    iput-object v6, v5, Lorg/jsoup/nodes/Document;->b:Lorg/jsoup/nodes/Document$QuirksMode;

    .line 69
    :cond_0
    invoke-virtual {p2}, Lleh;->f()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "contextTag":Ljava/lang/String;
    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "title"

    aput-object v6, v5, v8

    const-string/jumbo v6, "textarea"

    aput-object v6, v5, v7

    invoke-static {v1, v5}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 71
    iget-object v5, p0, Llen;->m:Lles;

    sget-object v6, Lorg/jsoup/parser/TokeniserState;->Rcdata:Lorg/jsoup/parser/TokeniserState;

    .line 2113
    iput-object v6, v5, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    .line 83
    :goto_0
    new-instance v4, Lleh;

    .end local v4    # "root":Lleh;
    const-string/jumbo v5, "html"

    invoke-static {v5}, Lleq;->a(Ljava/lang/String;)Lleq;

    move-result-object v5

    invoke-direct {v4, v5, p3}, Lleh;-><init>(Lleq;Ljava/lang/String;)V

    .line 84
    .restart local v4    # "root":Lleh;
    iget-object v5, p0, Llen;->n:Lorg/jsoup/nodes/Document;

    invoke-virtual {v5, v4}, Lorg/jsoup/nodes/Document;->a(Llej;)Lleh;

    .line 85
    iget-object v5, p0, Llen;->o:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {p0}, Llen;->i()V

    .line 90
    invoke-virtual {p2}, Lleh;->g()Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 91
    .local v0, "contextChain":Lorg/jsoup/select/Elements;
    invoke-virtual {v0, v8, p2}, Lorg/jsoup/select/Elements;->add(ILjava/lang/Object;)V

    .line 92
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lleh;

    .line 93
    .local v3, "parent":Lleh;
    instance-of v5, v3, Llei;

    if-eqz v5, :cond_1

    .line 94
    check-cast v3, Llei;

    .end local v3    # "parent":Lleh;
    iput-object v3, p0, Llen;->e:Llei;

    .line 100
    .end local v0    # "contextChain":Lorg/jsoup/select/Elements;
    .end local v1    # "contextTag":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {p0}, Llen;->o()V

    .line 101
    if-eqz p2, :cond_7

    if-eqz v4, :cond_7

    .line 7220
    iget-object v5, v4, Llej;->e:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 104
    :goto_1
    return-object v5

    .line 72
    .restart local v1    # "contextTag":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "iframe"

    aput-object v6, v5, v8

    const-string/jumbo v6, "noembed"

    aput-object v6, v5, v7

    const-string/jumbo v6, "noframes"

    aput-object v6, v5, v9

    const/4 v6, 0x3

    const-string/jumbo v7, "style"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "xmp"

    aput-object v7, v5, v6

    invoke-static {v1, v5}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 73
    iget-object v5, p0, Llen;->m:Lles;

    sget-object v6, Lorg/jsoup/parser/TokeniserState;->Rawtext:Lorg/jsoup/parser/TokeniserState;

    .line 3113
    iput-object v6, v5, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 74
    :cond_4
    const-string/jumbo v5, "script"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 75
    iget-object v5, p0, Llen;->m:Lles;

    sget-object v6, Lorg/jsoup/parser/TokeniserState;->ScriptData:Lorg/jsoup/parser/TokeniserState;

    .line 4113
    iput-object v6, v5, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto/16 :goto_0

    .line 76
    :cond_5
    const-string/jumbo v5, "noscript"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 78
    const-string/jumbo v5, "plaintext"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    :cond_6
    iget-object v5, p0, Llen;->m:Lles;

    sget-object v6, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 7113
    iput-object v6, v5, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto/16 :goto_0

    .line 104
    .end local v1    # "contextTag":Ljava/lang/String;
    :cond_7
    iget-object v5, p0, Llen;->n:Lorg/jsoup/nodes/Document;

    .line 8220
    iget-object v5, v5, Llej;->e:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)Lleh;
    .locals 3
    .param p1, "startTagName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 188
    new-instance v0, Lleh;

    invoke-static {p1}, Lleq;->a(Ljava/lang/String;)Lleq;

    move-result-object v1

    iget-object v2, p0, Llen;->p:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lleh;-><init>(Lleq;Ljava/lang/String;)V

    .line 189
    .local v0, "el":Lleh;
    invoke-direct {p0, v0}, Llen;->i(Lleh;)V

    .line 190
    return-object v0
.end method

.method public final a(Lorg/jsoup/parser/Token$f;)Lleh;
    .locals 5
    .param p1, "startTag"    # Lorg/jsoup/parser/Token$f;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 174
    .line 11122
    iget-boolean v2, p1, Lorg/jsoup/parser/Token$g;->d:Z

    .line 174
    if-eqz v2, :cond_0

    .line 175
    invoke-virtual {p0, p1}, Llen;->b(Lorg/jsoup/parser/Token$f;)Lleh;

    move-result-object v0

    .line 176
    .local v0, "el":Lleh;
    iget-object v2, p0, Llen;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v2, p0, Llen;->m:Lles;

    sget-object v3, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 12113
    iput-object v3, v2, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    .line 178
    iget-object v2, p0, Llen;->m:Lles;

    iget-object v3, p0, Llen;->B:Lorg/jsoup/parser/Token$e;

    invoke-virtual {v3}, Lorg/jsoup/parser/Token$e;->h()Lorg/jsoup/parser/Token$g;

    move-result-object v3

    invoke-virtual {v0}, Lleh;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jsoup/parser/Token$g;->a(Ljava/lang/String;)Lorg/jsoup/parser/Token$g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lles;->a(Lorg/jsoup/parser/Token;)V

    move-object v1, v0

    .line 184
    .end local v0    # "el":Lleh;
    .local v1, "el":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 182
    .end local v1    # "el":Ljava/lang/Object;
    :cond_0
    new-instance v0, Lleh;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$f;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lleq;->a(Ljava/lang/String;)Lleq;

    move-result-object v2

    iget-object v3, p0, Llen;->p:Ljava/lang/String;

    iget-object v4, p1, Lorg/jsoup/parser/Token$f;->e:Lled;

    invoke-direct {v0, v2, v3, v4}, Lleh;-><init>(Lleq;Ljava/lang/String;Lled;)V

    .line 183
    .restart local v0    # "el":Lleh;
    invoke-direct {p0, v0}, Llen;->i(Lleh;)V

    move-object v1, v0

    .line 184
    .restart local v1    # "el":Ljava/lang/Object;
    goto :goto_0
.end method

.method public final a(Lorg/jsoup/parser/Token$f;Z)Llei;
    .locals 4
    .param p1, "startTag"    # Lorg/jsoup/parser/Token$f;
    .param p2, "onStack"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 215
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$f;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lleq;->a(Ljava/lang/String;)Lleq;

    move-result-object v1

    .line 216
    .local v1, "tag":Lleq;
    new-instance v0, Llei;

    iget-object v2, p0, Llen;->p:Ljava/lang/String;

    iget-object v3, p1, Lorg/jsoup/parser/Token$f;->e:Lled;

    invoke-direct {v0, v1, v2, v3}, Llei;-><init>(Lleq;Ljava/lang/String;Lled;)V

    .line 14514
    .local v0, "el":Llei;
    iput-object v0, p0, Llen;->e:Llei;

    .line 218
    invoke-direct {p0, v0}, Llen;->b(Llej;)V

    .line 219
    if-eqz p2, :cond_0

    .line 220
    iget-object v2, p0, Llen;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_0
    return-object v0
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;)Lorg/jsoup/nodes/Document;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "errors"    # Lorg/jsoup/parser/ParseErrorList;

    .prologue
    .line 51
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->Initial:Lorg/jsoup/parser/HtmlTreeBuilderState;

    iput-object v0, p0, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Llen;->z:Z

    .line 53
    invoke-super {p0, p1, p2, p3}, Llet;->a(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    iput-object v0, p0, Llen;->c:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 128
    return-void
.end method

.method public final a(Lleh;)V
    .locals 4
    .param p1, "base"    # Lleh;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 151
    iget-boolean v1, p0, Llen;->z:Z

    if-eqz v1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    const-string/jumbo v1, "href"

    invoke-virtual {p1, v1}, Lleh;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "href":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iput-object v0, p0, Llen;->p:Ljava/lang/String;

    .line 157
    const/4 v1, 0x1

    iput-boolean v1, p0, Llen;->z:Z

    .line 158
    iget-object v1, p0, Llen;->n:Lorg/jsoup/nodes/Document;

    .line 9143
    invoke-static {v0}, Lleb;->a(Ljava/lang/Object;)V

    .line 9145
    new-instance v2, Llej$1;

    invoke-direct {v2, v1, v0}, Llej$1;-><init>(Llej;Ljava/lang/String;)V

    .line 9542
    invoke-static {v2}, Lleb;->a(Ljava/lang/Object;)V

    .line 9543
    new-instance v3, Llex;

    invoke-direct {v3, v2}, Llex;-><init>(Lley;)V

    .line 9544
    invoke-virtual {v3, v1}, Llex;->a(Llej;)V

    goto :goto_0
.end method

.method public final a(Lleh;Lleh;)V
    .locals 3
    .param p1, "after"    # Lleh;
    .param p2, "in"    # Lleh;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 367
    iget-object v1, p0, Llen;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 368
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lleb;->a(Z)V

    .line 369
    iget-object v1, p0, Llen;->o:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 370
    return-void

    .line 368
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a(Llej;)V
    .locals 5
    .param p1, "in"    # Llej;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 675
    const-string/jumbo v3, "table"

    invoke-virtual {p0, v3}, Llen;->b(Ljava/lang/String;)Lleh;

    move-result-object v2

    .line 676
    .local v2, "lastTable":Lleh;
    const/4 v1, 0x0

    .line 677
    .local v1, "isLastTableParent":Z
    if-eqz v2, :cond_1

    .line 31139
    iget-object v3, v2, Lleh;->d:Llej;

    check-cast v3, Lleh;

    .line 678
    if-eqz v3, :cond_0

    .line 32139
    iget-object v3, v2, Lleh;->d:Llej;

    check-cast v3, Lleh;

    .line 679
    const/4 v0, 0x0

    .line 680
    .local v0, "fosterParent":Lleh;
    const/4 v1, 0x1

    .line 687
    :goto_0
    if-eqz v1, :cond_2

    .line 688
    invoke-static {v2}, Lleb;->a(Ljava/lang/Object;)V

    .line 689
    invoke-virtual {v2, p1}, Lleh;->b(Llej;)Lleh;

    .line 693
    :goto_1
    return-void

    .line 682
    .end local v0    # "fosterParent":Lleh;
    :cond_0
    invoke-virtual {p0, v2}, Llen;->e(Lleh;)Lleh;

    move-result-object v0

    .restart local v0    # "fosterParent":Lleh;
    goto :goto_0

    .line 684
    .end local v0    # "fosterParent":Lleh;
    :cond_1
    iget-object v3, p0, Llen;->o:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lleh;

    .restart local v0    # "fosterParent":Lleh;
    goto :goto_0

    .line 692
    :cond_2
    invoke-virtual {v0, p1}, Lleh;->a(Llej;)Lleh;

    goto :goto_1
.end method

.method public final a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V
    .locals 7
    .param p1, "state"    # Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 167
    iget-object v0, p0, Llen;->r:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Llen;->r:Lorg/jsoup/parser/ParseErrorList;

    new-instance v1, Lleo;

    iget-object v2, p0, Llen;->l:Llem;

    .line 10028
    iget v2, v2, Llem;->c:I

    .line 168
    const-string/jumbo v3, "Unexpected token [%s] when in state [%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Llen;->q:Lorg/jsoup/parser/Token;

    .line 11017
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    .line 168
    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lleo;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/ParseErrorList;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_0
    return-void
.end method

.method public final a(Lorg/jsoup/parser/Token$a;)V
    .locals 4
    .param p1, "characterToken"    # Lorg/jsoup/parser/Token$a;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 232
    invoke-virtual {p0}, Llen;->p()Lleh;

    move-result-object v2

    invoke-virtual {v2}, Lleh;->f()Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v2, "script"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "style"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    :cond_0
    new-instance v0, Llef;

    .line 15254
    iget-object v2, p1, Lorg/jsoup/parser/Token$a;->b:Ljava/lang/String;

    .line 234
    iget-object v3, p0, Llen;->p:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Llef;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .local v0, "node":Llej;
    :goto_0
    invoke-virtual {p0}, Llen;->p()Lleh;

    move-result-object v2

    invoke-virtual {v2, v0}, Lleh;->a(Llej;)Lleh;

    .line 238
    return-void

    .line 236
    .end local v0    # "node":Llej;
    :cond_1
    new-instance v0, Llek;

    .line 16254
    iget-object v2, p1, Lorg/jsoup/parser/Token$a;->b:Ljava/lang/String;

    .line 236
    iget-object v3, p0, Llen;->p:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Llek;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "node":Llej;
    goto :goto_0
.end method

.method public final a(Lorg/jsoup/parser/Token$b;)V
    .locals 3
    .param p1, "commentToken"    # Lorg/jsoup/parser/Token$b;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 225
    new-instance v0, Llee;

    .line 15225
    iget-object v1, p1, Lorg/jsoup/parser/Token$b;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    iget-object v2, p0, Llen;->p:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Llee;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .local v0, "comment":Llee;
    invoke-direct {p0, v0}, Llen;->b(Llej;)V

    .line 227
    return-void
.end method

.method public final varargs a([Ljava/lang/String;)V
    .locals 3
    .param p1, "elNames"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 314
    iget-object v2, p0, Llen;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "pos":I
    :goto_0
    if-ltz v1, :cond_0

    .line 315
    iget-object v2, p0, Llen;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lleh;

    .line 316
    .local v0, "next":Lleh;
    iget-object v2, p0, Llen;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 317
    invoke-virtual {v0}, Lleh;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 314
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 320
    .end local v0    # "next":Lleh;
    :cond_0
    return-void
.end method

.method public final a(Lorg/jsoup/parser/Token;)Z
    .locals 1
    .param p1, "token"    # Lorg/jsoup/parser/Token;

    .prologue
    .line 109
    iput-object p1, p0, Llen;->q:Lorg/jsoup/parser/Token;

    .line 110
    iget-object v0, p0, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v0, p1, p0}, Lorg/jsoup/parser/HtmlTreeBuilderState;->process(Lorg/jsoup/parser/Token;Llen;)Z

    move-result v0

    return v0
.end method

.method public final a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z
    .locals 1
    .param p1, "token"    # Lorg/jsoup/parser/Token;
    .param p2, "state"    # Lorg/jsoup/parser/HtmlTreeBuilderState;

    .prologue
    .line 114
    iput-object p1, p0, Llen;->q:Lorg/jsoup/parser/Token;

    .line 115
    invoke-virtual {p2, p1, p0}, Lorg/jsoup/parser/HtmlTreeBuilderState;->process(Lorg/jsoup/parser/Token;Llen;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)Lleh;
    .locals 3
    .param p1, "elName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 284
    iget-object v2, p0, Llen;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "pos":I
    :goto_0
    if-ltz v1, :cond_1

    .line 285
    iget-object v2, p0, Llen;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lleh;

    .line 286
    .local v0, "next":Lleh;
    invoke-virtual {v0}, Lleh;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    .end local v0    # "next":Lleh;
    :goto_1
    return-object v0

    .line 284
    .restart local v0    # "next":Lleh;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 290
    .end local v0    # "next":Lleh;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final b(Lorg/jsoup/parser/Token$f;)Lleh;
    .locals 5
    .param p1, "startTag"    # Lorg/jsoup/parser/Token$f;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 199
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$f;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lleq;->a(Ljava/lang/String;)Lleq;

    move-result-object v1

    .line 200
    .local v1, "tag":Lleq;
    new-instance v0, Lleh;

    iget-object v2, p0, Llen;->p:Ljava/lang/String;

    iget-object v3, p1, Lorg/jsoup/parser/Token$f;->e:Lled;

    invoke-direct {v0, v1, v2, v3}, Lleh;-><init>(Lleq;Ljava/lang/String;Lled;)V

    .line 201
    .local v0, "el":Lleh;
    invoke-direct {p0, v0}, Llen;->b(Llej;)V

    .line 12122
    iget-boolean v2, p1, Lorg/jsoup/parser/Token$g;->d:Z

    .line 202
    if-eqz v2, :cond_0

    .line 12137
    sget-object v2, Lleq;->a:Ljava/util/Map;

    iget-object v3, v1, Lleq;->b:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .line 203
    if-eqz v2, :cond_1

    .line 204
    invoke-virtual {v1}, Lleq;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Llen;->m:Lles;

    .line 13122
    iput-boolean v4, v2, Lles;->n:Z

    .line 211
    :cond_0
    :goto_0
    return-object v0

    .line 13176
    :cond_1
    iput-boolean v4, v1, Lleq;->f:Z

    .line 208
    iget-object v2, p0, Llen;->m:Lles;

    .line 14122
    iput-boolean v4, v2, Lles;->n:Z

    goto :goto_0
.end method

.method public final b()Lorg/jsoup/nodes/Document;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Llen;->n:Lorg/jsoup/nodes/Document;

    return-object v0
.end method

.method public final b(Lleh;)V
    .locals 1
    .param p1, "element"    # Lleh;

    .prologue
    .line 262
    iget-object v0, p0, Llen;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    return-void
.end method

.method public final b(Lleh;Lleh;)V
    .locals 1
    .param p1, "out"    # Lleh;
    .param p2, "in"    # Lleh;

    .prologue
    .line 373
    iget-object v0, p0, Llen;->o:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Llen;->a(Ljava/util/ArrayList;Lleh;Lleh;)V

    .line 374
    return-void
.end method

.method public final b([Ljava/lang/String;)Z
    .locals 2
    .param p1, "targetNames"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 455
    sget-object v0, Llen;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Llen;->a([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Llen;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3
    .param p1, "elName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 305
    iget-object v2, p0, Llen;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "pos":I
    :goto_0
    if-ltz v1, :cond_0

    .line 306
    iget-object v2, p0, Llen;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lleh;

    .line 307
    .local v0, "next":Lleh;
    iget-object v2, p0, Llen;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 308
    invoke-virtual {v0}, Lleh;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 305
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 311
    .end local v0    # "next":Lleh;
    :cond_0
    return-void
.end method

.method public final c(Lleh;)Z
    .locals 1
    .param p1, "el"    # Lleh;

    .prologue
    .line 270
    iget-object v0, p0, Llen;->o:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Llen;->a(Ljava/util/ArrayList;Lleh;)Z

    move-result v0

    return v0
.end method

.method public final d()Lleh;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 257
    iget-object v1, p0, Llen;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 258
    .local v0, "size":I
    iget-object v1, p0, Llen;->o:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lleh;

    return-object v1
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3
    .param p1, "elName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 323
    iget-object v2, p0, Llen;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "pos":I
    :goto_0
    if-ltz v1, :cond_0

    .line 324
    iget-object v2, p0, Llen;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lleh;

    .line 325
    .local v0, "next":Lleh;
    invoke-virtual {v0}, Lleh;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 328
    iget-object v2, p0, Llen;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 323
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 331
    .end local v0    # "next":Lleh;
    :cond_0
    return-void
.end method

.method public final d(Lleh;)Z
    .locals 3
    .param p1, "el"    # Lleh;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 294
    iget-object v2, p0, Llen;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "pos":I
    :goto_0
    if-ltz v1, :cond_1

    .line 295
    iget-object v2, p0, Llen;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lleh;

    .line 296
    .local v0, "next":Lleh;
    if-ne v0, p1, :cond_0

    .line 297
    iget-object v2, p0, Llen;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 298
    const/4 v2, 0x1

    .line 301
    .end local v0    # "next":Lleh;
    :goto_1
    return v2

    .line 294
    .restart local v0    # "next":Lleh;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 301
    .end local v0    # "next":Lleh;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public final e()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lleh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Llen;->o:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final e(Lleh;)Lleh;
    .locals 4
    .param p1, "el"    # Lleh;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 356
    sget-boolean v2, Llen;->k:Z

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Llen;->c(Lleh;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 357
    :cond_0
    iget-object v2, p0, Llen;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "pos":I
    :goto_0
    if-ltz v1, :cond_2

    .line 358
    iget-object v2, p0, Llen;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lleh;

    .line 359
    .local v0, "next":Lleh;
    if-ne v0, p1, :cond_1

    .line 360
    iget-object v2, p0, Llen;->o:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lleh;

    .line 363
    .end local v0    # "next":Lleh;
    :goto_1
    return-object v2

    .line 357
    .restart local v0    # "next":Lleh;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 363
    .end local v0    # "next":Lleh;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 1
    .param p1, "targetName"    # Ljava/lang/String;

    .prologue
    .line 459
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llen;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final f()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 334
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "table"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Llen;->c([Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 1
    .param p1, "targetName"    # Ljava/lang/String;

    .prologue
    .line 469
    sget-object v0, Llen;->t:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Llen;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final g()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 338
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "tbody"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "tfoot"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "thead"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Llen;->c([Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public final g(Lleh;)V
    .locals 5
    .param p1, "in"    # Lleh;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 569
    const/4 v1, 0x0

    .line 570
    .local v1, "numSeen":I
    iget-object v3, p0, Llen;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "pos":I
    :goto_0
    if-ltz v2, :cond_1

    .line 571
    iget-object v3, p0, Llen;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lleh;

    .line 572
    .local v0, "el":Lleh;
    if-eqz v0, :cond_1

    .line 29588
    invoke-virtual {p1}, Lleh;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lleh;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lleh;->r()Lled;

    move-result-object v3

    invoke-virtual {v0}, Lleh;->r()Lled;

    move-result-object v4

    invoke-virtual {v3, v4}, Lled;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 575
    :goto_1
    if-eqz v3, :cond_0

    .line 576
    add-int/lit8 v1, v1, 0x1

    .line 578
    :cond_0
    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    .line 579
    iget-object v3, p0, Llen;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 583
    .end local v0    # "el":Lleh;
    :cond_1
    iget-object v3, p0, Llen;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    return-void

    .line 29588
    .restart local v0    # "el":Lleh;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 570
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 1
    .param p1, "targetName"    # Ljava/lang/String;

    .prologue
    .line 473
    sget-object v0, Llen;->u:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Llen;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final h()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 342
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "tr"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Llen;->c([Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method public final h(Lleh;)V
    .locals 3
    .param p1, "el"    # Lleh;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 641
    iget-object v2, p0, Llen;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "pos":I
    :goto_0
    if-ltz v1, :cond_0

    .line 642
    iget-object v2, p0, Llen;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lleh;

    .line 643
    .local v0, "next":Lleh;
    if-ne v0, p1, :cond_1

    .line 644
    iget-object v2, p0, Llen;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 648
    .end local v0    # "next":Lleh;
    :cond_0
    return-void

    .line 641
    .restart local v0    # "next":Lleh;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public final h(Ljava/lang/String;)Z
    .locals 2
    .param p1, "targetName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 477
    sget-object v0, Llen;->v:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Llen;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final i()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 383
    const/4 v0, 0x0

    .line 384
    .local v0, "last":Z
    iget-object v4, p0, Llen;->o:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "pos":I
    :goto_0
    if-ltz v3, :cond_1

    .line 385
    iget-object v4, p0, Llen;->o:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lleh;

    .line 386
    .local v2, "node":Lleh;
    if-nez v3, :cond_0

    .line 387
    const/4 v0, 0x1

    .line 388
    iget-object v2, p0, Llen;->A:Lleh;

    .line 390
    :cond_0
    invoke-virtual {v2}, Lleh;->a()Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v4, "select"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 392
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState;->InSelect:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 18119
    iput-object v4, p0, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 429
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "node":Lleh;
    :cond_1
    :goto_1
    return-void

    .line 394
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "node":Lleh;
    :cond_2
    const-string/jumbo v4, "td"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "td"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v0, :cond_4

    .line 395
    :cond_3
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState;->InCell:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 19119
    iput-object v4, p0, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto :goto_1

    .line 397
    :cond_4
    const-string/jumbo v4, "tr"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 398
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState;->InRow:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 20119
    iput-object v4, p0, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto :goto_1

    .line 400
    :cond_5
    const-string/jumbo v4, "tbody"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "thead"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "tfoot"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 401
    :cond_6
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 21119
    iput-object v4, p0, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto :goto_1

    .line 403
    :cond_7
    const-string/jumbo v4, "caption"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 404
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState;->InCaption:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 22119
    iput-object v4, p0, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto :goto_1

    .line 406
    :cond_8
    const-string/jumbo v4, "colgroup"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 407
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState;->InColumnGroup:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 23119
    iput-object v4, p0, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto :goto_1

    .line 409
    :cond_9
    const-string/jumbo v4, "table"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 410
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 24119
    iput-object v4, p0, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto :goto_1

    .line 412
    :cond_a
    const-string/jumbo v4, "head"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 413
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 25119
    iput-object v4, p0, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto/16 :goto_1

    .line 415
    :cond_b
    const-string/jumbo v4, "body"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 416
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 26119
    iput-object v4, p0, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto/16 :goto_1

    .line 418
    :cond_c
    const-string/jumbo v4, "frameset"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 419
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState;->InFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 27119
    iput-object v4, p0, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto/16 :goto_1

    .line 421
    :cond_d
    const-string/jumbo v4, "html"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 422
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState;->BeforeHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 28119
    iput-object v4, p0, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto/16 :goto_1

    .line 424
    :cond_e
    if-eqz v0, :cond_f

    .line 425
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 29119
    iput-object v4, p0, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto/16 :goto_1

    .line 384
    :cond_f
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0
.end method

.method public final i(Ljava/lang/String;)Z
    .locals 5
    .param p1, "targetName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 481
    iget-object v4, p0, Llen;->o:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "pos":I
    :goto_0
    if-ltz v2, :cond_2

    .line 482
    iget-object v4, p0, Llen;->o:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lleh;

    .line 483
    .local v0, "el":Lleh;
    invoke-virtual {v0}, Lleh;->a()Ljava/lang/String;

    move-result-object v1

    .line 484
    .local v1, "elName":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 485
    const/4 v3, 0x1

    .line 490
    .end local v0    # "el":Lleh;
    .end local v1    # "elName":Ljava/lang/String;
    :cond_0
    :goto_1
    return v3

    .line 486
    .restart local v0    # "el":Lleh;
    .restart local v1    # "elName":Ljava/lang/String;
    :cond_1
    sget-object v4, Llen;->w:[Ljava/lang/String;

    invoke-static {v1, v4}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 481
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 489
    .end local v0    # "el":Lleh;
    .end local v1    # "elName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "Should not be reachable"

    invoke-static {v4}, Lleb;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 518
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llen;->g:Ljava/util/List;

    .line 519
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 2
    .param p1, "excludeTag"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 539
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Llen;->p()Lleh;

    move-result-object v0

    invoke-virtual {v0}, Lleh;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Llen;->p()Lleh;

    move-result-object v0

    invoke-virtual {v0}, Lleh;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Llen;->x:[Ljava/lang/String;

    invoke-static {v0, v1}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {p0}, Llen;->d()Lleh;

    goto :goto_0

    .line 542
    :cond_0
    return-void
.end method

.method public final k(Ljava/lang/String;)Lleh;
    .locals 3
    .param p1, "nodeName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 655
    iget-object v2, p0, Llen;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "pos":I
    :goto_0
    if-ltz v1, :cond_1

    .line 656
    iget-object v2, p0, Llen;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lleh;

    .line 657
    .local v0, "next":Lleh;
    if-eqz v0, :cond_1

    .line 659
    invoke-virtual {v0}, Lleh;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 662
    .end local v0    # "next":Lleh;
    :goto_1
    return-object v0

    .line 655
    .restart local v0    # "next":Lleh;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 662
    .end local v0    # "next":Lleh;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 545
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Llen;->j(Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method public final l()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 595
    .line 30556
    iget-object v6, p0, Llen;->f:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    iget-object v6, p0, Llen;->f:Ljava/util/ArrayList;

    iget-object v7, p0, Llen;->f:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lleh;

    move-object v1, v6

    .line 596
    .local v1, "last":Lleh;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Llen;->c(Lleh;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 630
    :cond_0
    return-void

    .line 30556
    .end local v1    # "last":Lleh;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 599
    .restart local v1    # "last":Lleh;
    :cond_2
    move-object v0, v1

    .line 600
    .local v0, "entry":Lleh;
    iget-object v6, p0, Llen;->f:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 601
    .local v4, "size":I
    add-int/lit8 v3, v4, -0x1

    .line 602
    .local v3, "pos":I
    const/4 v5, 0x0

    .line 604
    .local v5, "skip":Z
    :cond_3
    if-nez v3, :cond_6

    .line 605
    const/4 v5, 0x1

    .line 613
    :cond_4
    :goto_1
    if-nez v5, :cond_5

    .line 614
    iget-object v6, p0, Llen;->f:Ljava/util/ArrayList;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "entry":Lleh;
    check-cast v0, Lleh;

    .line 615
    .restart local v0    # "entry":Lleh;
    :cond_5
    invoke-static {v0}, Lleb;->a(Ljava/lang/Object;)V

    .line 618
    const/4 v5, 0x0

    .line 619
    invoke-virtual {v0}, Lleh;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Llen;->a(Ljava/lang/String;)Lleh;

    move-result-object v2

    .line 621
    .local v2, "newEl":Lleh;
    invoke-virtual {v2}, Lleh;->r()Lled;

    move-result-object v6

    invoke-virtual {v0}, Lleh;->r()Lled;

    move-result-object v7

    invoke-virtual {v6, v7}, Lled;->a(Lled;)V

    .line 624
    iget-object v6, p0, Llen;->f:Ljava/util/ArrayList;

    invoke-virtual {v6, v3, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 627
    add-int/lit8 v6, v4, -0x1

    if-eq v3, v6, :cond_0

    goto :goto_1

    .line 608
    .end local v2    # "newEl":Lleh;
    :cond_6
    iget-object v6, p0, Llen;->f:Ljava/util/ArrayList;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "entry":Lleh;
    check-cast v0, Lleh;

    .line 609
    .restart local v0    # "entry":Lleh;
    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Llen;->c(Lleh;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1
.end method

.method public final m()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 633
    :cond_0
    iget-object v1, p0, Llen;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 30560
    iget-object v1, p0, Llen;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 30561
    if-lez v1, :cond_2

    .line 30562
    iget-object v2, p0, Llen;->f:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lleh;

    move-object v0, v1

    .line 635
    .local v0, "el":Lleh;
    :goto_0
    if-nez v0, :cond_0

    .line 638
    .end local v0    # "el":Lleh;
    :cond_1
    return-void

    .line 30564
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 670
    iget-object v0, p0, Llen;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "TreeBuilder{currentToken="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Llen;->q:Lorg/jsoup/parser/Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", currentElement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Llen;->p()Lleh;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
