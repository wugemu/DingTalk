.class public final Lleq;
.super Ljava/lang/Object;
.source "Tag.java"


# static fields
.field static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lleq;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:[Ljava/lang/String;

.field private static final m:[Ljava/lang/String;

.field private static final n:[Ljava/lang/String;

.field private static final o:[Ljava/lang/String;

.field private static final p:[Ljava/lang/String;

.field private static final q:[Ljava/lang/String;

.field private static final r:[Ljava/lang/String;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Z

.field public e:Z

.field f:Z

.field public g:Z

.field h:Z

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 14
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lleq;->a:Ljava/util/Map;

    .line 223
    const/16 v4, 0x40

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "html"

    aput-object v5, v4, v7

    const-string/jumbo v5, "head"

    aput-object v5, v4, v8

    const-string/jumbo v5, "body"

    aput-object v5, v4, v10

    const-string/jumbo v5, "frameset"

    aput-object v5, v4, v11

    const-string/jumbo v5, "script"

    aput-object v5, v4, v9

    const/4 v5, 0x5

    const-string/jumbo v6, "noscript"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v6, "style"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string/jumbo v6, "meta"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string/jumbo v6, "link"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string/jumbo v6, "title"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string/jumbo v6, "frame"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string/jumbo v6, "noframes"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string/jumbo v6, "section"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string/jumbo v6, "nav"

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const-string/jumbo v6, "aside"

    aput-object v6, v4, v5

    const/16 v5, 0xf

    const-string/jumbo v6, "hgroup"

    aput-object v6, v4, v5

    const/16 v5, 0x10

    const-string/jumbo v6, "header"

    aput-object v6, v4, v5

    const/16 v5, 0x11

    const-string/jumbo v6, "footer"

    aput-object v6, v4, v5

    const/16 v5, 0x12

    const-string/jumbo v6, "p"

    aput-object v6, v4, v5

    const/16 v5, 0x13

    const-string/jumbo v6, "h1"

    aput-object v6, v4, v5

    const/16 v5, 0x14

    const-string/jumbo v6, "h2"

    aput-object v6, v4, v5

    const/16 v5, 0x15

    const-string/jumbo v6, "h3"

    aput-object v6, v4, v5

    const/16 v5, 0x16

    const-string/jumbo v6, "h4"

    aput-object v6, v4, v5

    const/16 v5, 0x17

    const-string/jumbo v6, "h5"

    aput-object v6, v4, v5

    const/16 v5, 0x18

    const-string/jumbo v6, "h6"

    aput-object v6, v4, v5

    const/16 v5, 0x19

    const-string/jumbo v6, "ul"

    aput-object v6, v4, v5

    const/16 v5, 0x1a

    const-string/jumbo v6, "ol"

    aput-object v6, v4, v5

    const/16 v5, 0x1b

    const-string/jumbo v6, "pre"

    aput-object v6, v4, v5

    const/16 v5, 0x1c

    const-string/jumbo v6, "div"

    aput-object v6, v4, v5

    const/16 v5, 0x1d

    const-string/jumbo v6, "blockquote"

    aput-object v6, v4, v5

    const/16 v5, 0x1e

    const-string/jumbo v6, "hr"

    aput-object v6, v4, v5

    const/16 v5, 0x1f

    const-string/jumbo v6, "address"

    aput-object v6, v4, v5

    const/16 v5, 0x20

    const-string/jumbo v6, "figure"

    aput-object v6, v4, v5

    const/16 v5, 0x21

    const-string/jumbo v6, "figcaption"

    aput-object v6, v4, v5

    const/16 v5, 0x22

    const-string/jumbo v6, "form"

    aput-object v6, v4, v5

    const/16 v5, 0x23

    const-string/jumbo v6, "fieldset"

    aput-object v6, v4, v5

    const/16 v5, 0x24

    const-string/jumbo v6, "ins"

    aput-object v6, v4, v5

    const/16 v5, 0x25

    const-string/jumbo v6, "del"

    aput-object v6, v4, v5

    const/16 v5, 0x26

    const-string/jumbo v6, "s"

    aput-object v6, v4, v5

    const/16 v5, 0x27

    const-string/jumbo v6, "dl"

    aput-object v6, v4, v5

    const/16 v5, 0x28

    const-string/jumbo v6, "dt"

    aput-object v6, v4, v5

    const/16 v5, 0x29

    const-string/jumbo v6, "dd"

    aput-object v6, v4, v5

    const/16 v5, 0x2a

    const-string/jumbo v6, "li"

    aput-object v6, v4, v5

    const/16 v5, 0x2b

    const-string/jumbo v6, "table"

    aput-object v6, v4, v5

    const/16 v5, 0x2c

    const-string/jumbo v6, "caption"

    aput-object v6, v4, v5

    const/16 v5, 0x2d

    const-string/jumbo v6, "thead"

    aput-object v6, v4, v5

    const/16 v5, 0x2e

    const-string/jumbo v6, "tfoot"

    aput-object v6, v4, v5

    const/16 v5, 0x2f

    const-string/jumbo v6, "tbody"

    aput-object v6, v4, v5

    const/16 v5, 0x30

    const-string/jumbo v6, "colgroup"

    aput-object v6, v4, v5

    const/16 v5, 0x31

    const-string/jumbo v6, "col"

    aput-object v6, v4, v5

    const/16 v5, 0x32

    const-string/jumbo v6, "tr"

    aput-object v6, v4, v5

    const/16 v5, 0x33

    const-string/jumbo v6, "th"

    aput-object v6, v4, v5

    const/16 v5, 0x34

    const-string/jumbo v6, "td"

    aput-object v6, v4, v5

    const/16 v5, 0x35

    const-string/jumbo v6, "video"

    aput-object v6, v4, v5

    const/16 v5, 0x36

    const-string/jumbo v6, "audio"

    aput-object v6, v4, v5

    const/16 v5, 0x37

    const-string/jumbo v6, "canvas"

    aput-object v6, v4, v5

    const/16 v5, 0x38

    const-string/jumbo v6, "details"

    aput-object v6, v4, v5

    const/16 v5, 0x39

    const-string/jumbo v6, "menu"

    aput-object v6, v4, v5

    const/16 v5, 0x3a

    const-string/jumbo v6, "plaintext"

    aput-object v6, v4, v5

    const/16 v5, 0x3b

    const-string/jumbo v6, "template"

    aput-object v6, v4, v5

    const/16 v5, 0x3c

    const-string/jumbo v6, "article"

    aput-object v6, v4, v5

    const/16 v5, 0x3d

    const-string/jumbo v6, "main"

    aput-object v6, v4, v5

    const/16 v5, 0x3e

    const-string/jumbo v6, "svg"

    aput-object v6, v4, v5

    const/16 v5, 0x3f

    const-string/jumbo v6, "math"

    aput-object v6, v4, v5

    sput-object v4, Lleq;->l:[Ljava/lang/String;

    .line 231
    const/16 v4, 0x41

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "object"

    aput-object v5, v4, v7

    const-string/jumbo v5, "base"

    aput-object v5, v4, v8

    const-string/jumbo v5, "font"

    aput-object v5, v4, v10

    const-string/jumbo v5, "tt"

    aput-object v5, v4, v11

    const-string/jumbo v5, "i"

    aput-object v5, v4, v9

    const/4 v5, 0x5

    const-string/jumbo v6, "b"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v6, "u"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string/jumbo v6, "big"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string/jumbo v6, "small"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string/jumbo v6, "em"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string/jumbo v6, "strong"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string/jumbo v6, "dfn"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string/jumbo v6, "code"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string/jumbo v6, "samp"

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const-string/jumbo v6, "kbd"

    aput-object v6, v4, v5

    const/16 v5, 0xf

    const-string/jumbo v6, "var"

    aput-object v6, v4, v5

    const/16 v5, 0x10

    const-string/jumbo v6, "cite"

    aput-object v6, v4, v5

    const/16 v5, 0x11

    const-string/jumbo v6, "abbr"

    aput-object v6, v4, v5

    const/16 v5, 0x12

    const-string/jumbo v6, "time"

    aput-object v6, v4, v5

    const/16 v5, 0x13

    const-string/jumbo v6, "acronym"

    aput-object v6, v4, v5

    const/16 v5, 0x14

    const-string/jumbo v6, "mark"

    aput-object v6, v4, v5

    const/16 v5, 0x15

    const-string/jumbo v6, "ruby"

    aput-object v6, v4, v5

    const/16 v5, 0x16

    const-string/jumbo v6, "rt"

    aput-object v6, v4, v5

    const/16 v5, 0x17

    const-string/jumbo v6, "rp"

    aput-object v6, v4, v5

    const/16 v5, 0x18

    const-string/jumbo v6, "a"

    aput-object v6, v4, v5

    const/16 v5, 0x19

    const-string/jumbo v6, "img"

    aput-object v6, v4, v5

    const/16 v5, 0x1a

    const-string/jumbo v6, "br"

    aput-object v6, v4, v5

    const/16 v5, 0x1b

    const-string/jumbo v6, "wbr"

    aput-object v6, v4, v5

    const/16 v5, 0x1c

    const-string/jumbo v6, "map"

    aput-object v6, v4, v5

    const/16 v5, 0x1d

    const-string/jumbo v6, "q"

    aput-object v6, v4, v5

    const/16 v5, 0x1e

    const-string/jumbo v6, "sub"

    aput-object v6, v4, v5

    const/16 v5, 0x1f

    const-string/jumbo v6, "sup"

    aput-object v6, v4, v5

    const/16 v5, 0x20

    const-string/jumbo v6, "bdo"

    aput-object v6, v4, v5

    const/16 v5, 0x21

    const-string/jumbo v6, "iframe"

    aput-object v6, v4, v5

    const/16 v5, 0x22

    const-string/jumbo v6, "embed"

    aput-object v6, v4, v5

    const/16 v5, 0x23

    const-string/jumbo v6, "span"

    aput-object v6, v4, v5

    const/16 v5, 0x24

    const-string/jumbo v6, "input"

    aput-object v6, v4, v5

    const/16 v5, 0x25

    const-string/jumbo v6, "select"

    aput-object v6, v4, v5

    const/16 v5, 0x26

    const-string/jumbo v6, "textarea"

    aput-object v6, v4, v5

    const/16 v5, 0x27

    const-string/jumbo v6, "label"

    aput-object v6, v4, v5

    const/16 v5, 0x28

    const-string/jumbo v6, "button"

    aput-object v6, v4, v5

    const/16 v5, 0x29

    const-string/jumbo v6, "optgroup"

    aput-object v6, v4, v5

    const/16 v5, 0x2a

    const-string/jumbo v6, "option"

    aput-object v6, v4, v5

    const/16 v5, 0x2b

    const-string/jumbo v6, "legend"

    aput-object v6, v4, v5

    const/16 v5, 0x2c

    const-string/jumbo v6, "datalist"

    aput-object v6, v4, v5

    const/16 v5, 0x2d

    const-string/jumbo v6, "keygen"

    aput-object v6, v4, v5

    const/16 v5, 0x2e

    const-string/jumbo v6, "output"

    aput-object v6, v4, v5

    const/16 v5, 0x2f

    const-string/jumbo v6, "progress"

    aput-object v6, v4, v5

    const/16 v5, 0x30

    const-string/jumbo v6, "meter"

    aput-object v6, v4, v5

    const/16 v5, 0x31

    const-string/jumbo v6, "area"

    aput-object v6, v4, v5

    const/16 v5, 0x32

    const-string/jumbo v6, "param"

    aput-object v6, v4, v5

    const/16 v5, 0x33

    const-string/jumbo v6, "source"

    aput-object v6, v4, v5

    const/16 v5, 0x34

    const-string/jumbo v6, "track"

    aput-object v6, v4, v5

    const/16 v5, 0x35

    const-string/jumbo v6, "summary"

    aput-object v6, v4, v5

    const/16 v5, 0x36

    const-string/jumbo v6, "command"

    aput-object v6, v4, v5

    const/16 v5, 0x37

    const-string/jumbo v6, "device"

    aput-object v6, v4, v5

    const/16 v5, 0x38

    const-string/jumbo v6, "area"

    aput-object v6, v4, v5

    const/16 v5, 0x39

    const-string/jumbo v6, "basefont"

    aput-object v6, v4, v5

    const/16 v5, 0x3a

    const-string/jumbo v6, "bgsound"

    aput-object v6, v4, v5

    const/16 v5, 0x3b

    const-string/jumbo v6, "menuitem"

    aput-object v6, v4, v5

    const/16 v5, 0x3c

    const-string/jumbo v6, "param"

    aput-object v6, v4, v5

    const/16 v5, 0x3d

    const-string/jumbo v6, "source"

    aput-object v6, v4, v5

    const/16 v5, 0x3e

    const-string/jumbo v6, "track"

    aput-object v6, v4, v5

    const/16 v5, 0x3f

    const-string/jumbo v6, "data"

    aput-object v6, v4, v5

    const/16 v5, 0x40

    const-string/jumbo v6, "bdi"

    aput-object v6, v4, v5

    sput-object v4, Lleq;->m:[Ljava/lang/String;

    .line 239
    const/16 v4, 0x15

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "meta"

    aput-object v5, v4, v7

    const-string/jumbo v5, "link"

    aput-object v5, v4, v8

    const-string/jumbo v5, "base"

    aput-object v5, v4, v10

    const-string/jumbo v5, "frame"

    aput-object v5, v4, v11

    const-string/jumbo v5, "img"

    aput-object v5, v4, v9

    const/4 v5, 0x5

    const-string/jumbo v6, "br"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v6, "wbr"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string/jumbo v6, "embed"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string/jumbo v6, "hr"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string/jumbo v6, "input"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string/jumbo v6, "keygen"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string/jumbo v6, "col"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string/jumbo v6, "command"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string/jumbo v6, "device"

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const-string/jumbo v6, "area"

    aput-object v6, v4, v5

    const/16 v5, 0xf

    const-string/jumbo v6, "basefont"

    aput-object v6, v4, v5

    const/16 v5, 0x10

    const-string/jumbo v6, "bgsound"

    aput-object v6, v4, v5

    const/16 v5, 0x11

    const-string/jumbo v6, "menuitem"

    aput-object v6, v4, v5

    const/16 v5, 0x12

    const-string/jumbo v6, "param"

    aput-object v6, v4, v5

    const/16 v5, 0x13

    const-string/jumbo v6, "source"

    aput-object v6, v4, v5

    const/16 v5, 0x14

    const-string/jumbo v6, "track"

    aput-object v6, v4, v5

    sput-object v4, Lleq;->n:[Ljava/lang/String;

    .line 243
    const/16 v4, 0x13

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "title"

    aput-object v5, v4, v7

    const-string/jumbo v5, "a"

    aput-object v5, v4, v8

    const-string/jumbo v5, "p"

    aput-object v5, v4, v10

    const-string/jumbo v5, "h1"

    aput-object v5, v4, v11

    const-string/jumbo v5, "h2"

    aput-object v5, v4, v9

    const/4 v5, 0x5

    const-string/jumbo v6, "h3"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v6, "h4"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string/jumbo v6, "h5"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string/jumbo v6, "h6"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string/jumbo v6, "pre"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string/jumbo v6, "address"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string/jumbo v6, "li"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string/jumbo v6, "th"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string/jumbo v6, "td"

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const-string/jumbo v6, "script"

    aput-object v6, v4, v5

    const/16 v5, 0xf

    const-string/jumbo v6, "style"

    aput-object v6, v4, v5

    const/16 v5, 0x10

    const-string/jumbo v6, "ins"

    aput-object v6, v4, v5

    const/16 v5, 0x11

    const-string/jumbo v6, "del"

    aput-object v6, v4, v5

    const/16 v5, 0x12

    const-string/jumbo v6, "s"

    aput-object v6, v4, v5

    sput-object v4, Lleq;->o:[Ljava/lang/String;

    .line 247
    new-array v4, v9, [Ljava/lang/String;

    const-string/jumbo v5, "pre"

    aput-object v5, v4, v7

    const-string/jumbo v5, "plaintext"

    aput-object v5, v4, v8

    const-string/jumbo v5, "title"

    aput-object v5, v4, v10

    const-string/jumbo v5, "textarea"

    aput-object v5, v4, v11

    sput-object v4, Lleq;->p:[Ljava/lang/String;

    .line 252
    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "button"

    aput-object v5, v4, v7

    const-string/jumbo v5, "fieldset"

    aput-object v5, v4, v8

    const-string/jumbo v5, "input"

    aput-object v5, v4, v10

    const-string/jumbo v5, "keygen"

    aput-object v5, v4, v11

    const-string/jumbo v5, "object"

    aput-object v5, v4, v9

    const/4 v5, 0x5

    const-string/jumbo v6, "output"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v6, "select"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string/jumbo v6, "textarea"

    aput-object v6, v4, v5

    sput-object v4, Lleq;->q:[Ljava/lang/String;

    .line 255
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "input"

    aput-object v5, v4, v7

    const-string/jumbo v5, "keygen"

    aput-object v5, v4, v8

    const-string/jumbo v5, "object"

    aput-object v5, v4, v10

    const-string/jumbo v5, "select"

    aput-object v5, v4, v11

    const-string/jumbo v5, "textarea"

    aput-object v5, v4, v9

    sput-object v4, Lleq;->r:[Ljava/lang/String;

    .line 261
    sget-object v0, Lleq;->l:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    const/16 v4, 0x40

    if-ge v1, v4, :cond_0

    aget-object v3, v0, v1

    .line 262
    .local v3, "tagName":Ljava/lang/String;
    new-instance v2, Lleq;

    invoke-direct {v2, v3}, Lleq;-><init>(Ljava/lang/String;)V

    .line 263
    .local v2, "tag":Lleq;
    invoke-static {v2}, Lleq;->a(Lleq;)V

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    .end local v2    # "tag":Lleq;
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_0
    sget-object v0, Lleq;->m:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_1
    const/16 v4, 0x41

    if-ge v1, v4, :cond_1

    aget-object v3, v0, v1

    .line 266
    .restart local v3    # "tagName":Ljava/lang/String;
    new-instance v2, Lleq;

    invoke-direct {v2, v3}, Lleq;-><init>(Ljava/lang/String;)V

    .line 267
    .restart local v2    # "tag":Lleq;
    iput-boolean v7, v2, Lleq;->c:Z

    .line 268
    iput-boolean v7, v2, Lleq;->i:Z

    .line 269
    iput-boolean v7, v2, Lleq;->d:Z

    .line 270
    invoke-static {v2}, Lleq;->a(Lleq;)V

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 274
    .end local v2    # "tag":Lleq;
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_1
    sget-object v0, Lleq;->n:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_2
    const/16 v4, 0x15

    if-ge v1, v4, :cond_2

    aget-object v3, v0, v1

    .line 275
    .restart local v3    # "tagName":Ljava/lang/String;
    sget-object v4, Lleq;->a:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lleq;

    .line 276
    .restart local v2    # "tag":Lleq;
    invoke-static {v2}, Lleb;->a(Ljava/lang/Object;)V

    .line 277
    iput-boolean v7, v2, Lleq;->i:Z

    .line 278
    iput-boolean v7, v2, Lleq;->j:Z

    .line 279
    iput-boolean v8, v2, Lleq;->e:Z

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 282
    .end local v2    # "tag":Lleq;
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_2
    sget-object v0, Lleq;->o:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_3
    const/16 v4, 0x13

    if-ge v1, v4, :cond_3

    aget-object v3, v0, v1

    .line 283
    .restart local v3    # "tagName":Ljava/lang/String;
    sget-object v4, Lleq;->a:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lleq;

    .line 284
    .restart local v2    # "tag":Lleq;
    invoke-static {v2}, Lleb;->a(Ljava/lang/Object;)V

    .line 285
    iput-boolean v7, v2, Lleq;->d:Z

    .line 282
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 288
    .end local v2    # "tag":Lleq;
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_3
    sget-object v0, Lleq;->p:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v9, :cond_4

    aget-object v3, v0, v1

    .line 289
    .restart local v3    # "tagName":Ljava/lang/String;
    sget-object v4, Lleq;->a:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lleq;

    .line 290
    .restart local v2    # "tag":Lleq;
    invoke-static {v2}, Lleb;->a(Ljava/lang/Object;)V

    .line 291
    iput-boolean v8, v2, Lleq;->g:Z

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 294
    .end local v2    # "tag":Lleq;
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_4
    sget-object v0, Lleq;->q:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_5
    const/16 v4, 0x8

    if-ge v1, v4, :cond_5

    aget-object v3, v0, v1

    .line 295
    .restart local v3    # "tagName":Ljava/lang/String;
    sget-object v4, Lleq;->a:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lleq;

    .line 296
    .restart local v2    # "tag":Lleq;
    invoke-static {v2}, Lleb;->a(Ljava/lang/Object;)V

    .line 297
    iput-boolean v8, v2, Lleq;->h:Z

    .line 294
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 300
    .end local v2    # "tag":Lleq;
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_5
    sget-object v0, Lleq;->r:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_6
    const/4 v4, 0x5

    if-ge v1, v4, :cond_6

    aget-object v3, v0, v1

    .line 301
    .restart local v3    # "tagName":Ljava/lang/String;
    sget-object v4, Lleq;->a:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lleq;

    .line 302
    .restart local v2    # "tag":Lleq;
    invoke-static {v2}, Lleb;->a(Ljava/lang/Object;)V

    .line 303
    iput-boolean v8, v2, Lleq;->k:Z

    .line 300
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 305
    .end local v2    # "tag":Lleq;
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v1, p0, Lleq;->c:Z

    .line 18
    iput-boolean v1, p0, Lleq;->d:Z

    .line 19
    iput-boolean v1, p0, Lleq;->i:Z

    .line 20
    iput-boolean v1, p0, Lleq;->j:Z

    .line 21
    iput-boolean v0, p0, Lleq;->e:Z

    .line 22
    iput-boolean v0, p0, Lleq;->f:Z

    .line 23
    iput-boolean v0, p0, Lleq;->g:Z

    .line 24
    iput-boolean v0, p0, Lleq;->h:Z

    .line 25
    iput-boolean v0, p0, Lleq;->k:Z

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lleq;->b:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static a(Ljava/lang/String;)Lleq;
    .locals 2
    .param p0, "tagName"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {p0}, Lleb;->a(Ljava/lang/Object;)V

    .line 51
    sget-object v1, Lleq;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lleq;

    .line 53
    .local v0, "tag":Lleq;
    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 55
    invoke-static {p0}, Lleb;->a(Ljava/lang/String;)V

    .line 56
    sget-object v1, Lleq;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tag":Lleq;
    check-cast v0, Lleq;

    .line 58
    .restart local v0    # "tag":Lleq;
    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lleq;

    .end local v0    # "tag":Lleq;
    invoke-direct {v0, p0}, Lleq;-><init>(Ljava/lang/String;)V

    .line 61
    .restart local v0    # "tag":Lleq;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lleq;->c:Z

    .line 62
    const/4 v1, 0x1

    iput-boolean v1, v0, Lleq;->i:Z

    .line 65
    :cond_0
    return-object v0
.end method

.method private static a(Lleq;)V
    .locals 2
    .param p0, "tag"    # Lleq;

    .prologue
    .line 308
    sget-object v0, Lleq;->a:Ljava/util/Map;

    iget-object v1, p0, Lleq;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lleq;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lleq;->f:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 182
    if-ne p0, p1, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v1

    .line 183
    :cond_1
    instance-of v3, p1, Lleq;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 185
    check-cast v0, Lleq;

    .line 187
    .local v0, "tag":Lleq;
    iget-object v3, p0, Lleq;->b:Ljava/lang/String;

    iget-object v4, v0, Lleq;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    .line 188
    :cond_3
    iget-boolean v3, p0, Lleq;->i:Z

    iget-boolean v4, v0, Lleq;->i:Z

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 189
    :cond_4
    iget-boolean v3, p0, Lleq;->j:Z

    iget-boolean v4, v0, Lleq;->j:Z

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 190
    :cond_5
    iget-boolean v3, p0, Lleq;->e:Z

    iget-boolean v4, v0, Lleq;->e:Z

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    .line 191
    :cond_6
    iget-boolean v3, p0, Lleq;->d:Z

    iget-boolean v4, v0, Lleq;->d:Z

    if-eq v3, v4, :cond_7

    move v1, v2

    goto :goto_0

    .line 192
    :cond_7
    iget-boolean v3, p0, Lleq;->c:Z

    iget-boolean v4, v0, Lleq;->c:Z

    if-eq v3, v4, :cond_8

    move v1, v2

    goto :goto_0

    .line 193
    :cond_8
    iget-boolean v3, p0, Lleq;->g:Z

    iget-boolean v4, v0, Lleq;->g:Z

    if-eq v3, v4, :cond_9

    move v1, v2

    goto :goto_0

    .line 194
    :cond_9
    iget-boolean v3, p0, Lleq;->f:Z

    iget-boolean v4, v0, Lleq;->f:Z

    if-eq v3, v4, :cond_a

    move v1, v2

    goto :goto_0

    .line 195
    :cond_a
    iget-boolean v3, p0, Lleq;->h:Z

    iget-boolean v4, v0, Lleq;->h:Z

    if-eq v3, v4, :cond_b

    move v1, v2

    goto :goto_0

    .line 196
    :cond_b
    iget-boolean v3, p0, Lleq;->k:Z

    iget-boolean v4, v0, Lleq;->k:Z

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 203
    iget-object v1, p0, Lleq;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 204
    .local v0, "result":I
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lleq;->c:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v4, v1

    .line 205
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lleq;->d:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v4, v1

    .line 206
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lleq;->i:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v4, v1

    .line 207
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lleq;->j:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_3
    add-int v0, v4, v1

    .line 208
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lleq;->e:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_4
    add-int v0, v4, v1

    .line 209
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lleq;->f:Z

    if-eqz v1, :cond_5

    move v1, v2

    :goto_5
    add-int v0, v4, v1

    .line 210
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lleq;->g:Z

    if-eqz v1, :cond_6

    move v1, v2

    :goto_6
    add-int v0, v4, v1

    .line 211
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lleq;->h:Z

    if-eqz v1, :cond_7

    move v1, v2

    :goto_7
    add-int v0, v4, v1

    .line 212
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Lleq;->k:Z

    if-eqz v4, :cond_8

    :goto_8
    add-int v0, v1, v2

    .line 213
    return v0

    :cond_0
    move v1, v3

    .line 204
    goto :goto_0

    :cond_1
    move v1, v3

    .line 205
    goto :goto_1

    :cond_2
    move v1, v3

    .line 206
    goto :goto_2

    :cond_3
    move v1, v3

    .line 207
    goto :goto_3

    :cond_4
    move v1, v3

    .line 208
    goto :goto_4

    :cond_5
    move v1, v3

    .line 209
    goto :goto_5

    :cond_6
    move v1, v3

    .line 210
    goto :goto_6

    :cond_7
    move v1, v3

    .line 211
    goto :goto_7

    :cond_8
    move v2, v3

    .line 212
    goto :goto_8
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lleq;->b:Ljava/lang/String;

    return-object v0
.end method
