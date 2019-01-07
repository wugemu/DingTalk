.class public final Llbw;
.super Lldo;
.source "HeadingParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llbw$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/regex/Pattern;

.field private static b:Ljava/util/regex/Pattern;

.field private static c:Ljava/util/regex/Pattern;


# instance fields
.field private final d:Llcv;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string/jumbo v0, "^#{1,6}(?:[ \t]+|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Llbw;->a:Ljava/util/regex/Pattern;

    .line 14
    const-string/jumbo v0, "(^| ) *#+ *$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Llbw;->b:Ljava/util/regex/Pattern;

    .line 15
    const-string/jumbo v0, "^(?:=+|-+) *$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Llbw;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Lldo;-><init>()V

    .line 17
    new-instance v0, Llcv;

    invoke-direct {v0}, Llcv;-><init>()V

    iput-object v0, p0, Llbw;->d:Llcv;

    .line 21
    iget-object v0, p0, Llbw;->d:Llcv;

    .line 1017
    iput p1, v0, Llcv;->a:I

    .line 22
    iput-object p2, p0, Llbw;->e:Ljava/lang/String;

    .line 23
    return-void
.end method

.method static synthetic d()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Llbw;->a:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic e()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Llbw;->b:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic f()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Llbw;->c:Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method public final a(Lldv;)Lldq;
    .locals 1
    .param p1, "parserState"    # Lldv;

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lldl;)V
    .locals 2
    .param p1, "inlineParser"    # Lldl;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 38
    iget-object v0, p0, Llbw;->e:Ljava/lang/String;

    iget-object v1, p0, Llbw;->d:Llcv;

    invoke-interface {p1, v0, v1}, Lldl;->a(Ljava/lang/String;Lldd;)V

    .line 39
    return-void
.end method

.method public final b()Llcn;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Llbw;->d:Llcv;

    return-object v0
.end method
