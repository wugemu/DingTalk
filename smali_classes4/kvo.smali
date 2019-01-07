.class public Lkvo;
.super Lktz;


# direct methods
.method public constructor <init>(Lkva;)V
    .locals 0

    invoke-direct {p0, p1}, Lktz;-><init>(Lkva;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Lktz;-><init>([B)V

    return-void
.end method


# virtual methods
.method a(Lkvq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v0, 0x4

    iget-object v1, p0, Lkvo;->a:[B

    invoke-virtual {p1, v0, v1}, Lkvq;->a(I[B)V

    return-void
.end method
