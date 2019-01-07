.class public Lkvy;
.super Lkuh;


# static fields
.field private static final e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lkvy;->e:[B

    return-void
.end method

.method public constructor <init>(ILkva;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lkuh;-><init>(ILkva;)V

    return-void
.end method

.method public constructor <init>(ZILkva;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lkuh;-><init>(ZILkva;)V

    return-void
.end method


# virtual methods
.method a(Lkvq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    const/16 v0, 0xa0

    iget-object v1, p0, Lkvy;->d:Lkva;

    invoke-interface {v1}, Lkva;->c()Lkvm;

    move-result-object v1

    const-string/jumbo v2, "DER"

    invoke-virtual {v1, v2}, Lkvm;->a(Ljava/lang/String;)[B

    move-result-object v1

    iget-boolean v2, p0, Lkvy;->c:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lkvy;->a:I

    invoke-virtual {p1, v0, v2, v1}, Lkvq;->a(II[B)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    aget-byte v2, v1, v2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_1

    :goto_1
    iget v2, p0, Lkvy;->a:I

    invoke-virtual {p1, v0, v2}, Lkvq;->a(II)V

    const/4 v0, 0x1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v0, v2}, Lkvq;->write([BII)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x80

    goto :goto_1
.end method
