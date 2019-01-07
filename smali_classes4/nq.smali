.class public abstract Lnq;
.super Ljava/lang/Object;
.source "Parser.java"


# instance fields
.field private a:Z

.field protected b:Lnr;

.field protected c:[Ljava/lang/String;

.field protected d:Lnh;

.field protected e:Ljava/util/Hashtable;

.field protected f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lnr;

    invoke-direct {v0}, Lnr;-><init>()V

    invoke-direct {p0, v0}, Lnq;-><init>(Lnr;)V

    .line 90
    return-void
.end method

.method private constructor <init>(Lnr;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object v1, p0, Lnq;->d:Lnh;

    .line 81
    iput-object v1, p0, Lnq;->e:Ljava/util/Hashtable;

    .line 83
    iput-boolean v0, p0, Lnq;->a:Z

    .line 86
    iput v0, p0, Lnq;->f:I

    .line 93
    iput-object p1, p0, Lnq;->b:Lnr;

    .line 94
    return-void
.end method


# virtual methods
.method public abstract a(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/TokenStreamException;
        }
    .end annotation
.end method

.method public abstract a()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/TokenStreamException;
        }
    .end annotation
.end method

.method public final a(Lnt;)V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lnq;->b:Lnr;

    iput-object p1, v0, Lnr;->a:Lnt;

    .line 351
    return-void
.end method

.method public abstract b(I)Lns;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/TokenStreamException;
        }
    .end annotation
.end method

.method public final c(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/MismatchedTokenException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 212
    invoke-virtual {p0, v2}, Lnq;->a(I)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 213
    new-instance v0, Lantlr/MismatchedTokenException;

    iget-object v1, p0, Lnq;->c:[Ljava/lang/String;

    invoke-virtual {p0, v2}, Lnq;->b(I)Lns;

    move-result-object v2

    const/4 v4, 0x0

    .line 1170
    const/4 v5, 0x0

    move v3, p1

    .line 213
    invoke-direct/range {v0 .. v5}, Lantlr/MismatchedTokenException;-><init>([Ljava/lang/String;Lns;IZLjava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    invoke-virtual {p0}, Lnq;->a()V

    .line 217
    return-void
.end method
