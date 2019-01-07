.class public final Llcd;
.super Lldo;
.source "ThematicBreakParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llcd$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Lldj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string/jumbo v0, "^(?:(?:\\*[ \t]*){3,}|(?:_[ \t]*){3,}|(?:-[ \t]*){3,})[ \t]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Llcd;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lldo;-><init>()V

    .line 13
    new-instance v0, Lldj;

    invoke-direct {v0}, Lldj;-><init>()V

    iput-object v0, p0, Llcd;->b:Lldj;

    return-void
.end method

.method static synthetic d()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Llcd;->a:Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method public final a(Lldv;)Lldq;
    .locals 1
    .param p1, "state"    # Lldv;

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Llcn;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Llcd;->b:Lldj;

    return-object v0
.end method
