.class public final Lkvc;
.super Lkty;


# instance fields
.field public a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lkty;-><init>()V

    iput-object p1, p0, Lkvc;->a:[B

    return-void
.end method


# virtual methods
.method final a(Lkvq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    const/16 v0, 0xa

    iget-object v1, p0, Lkvc;->a:[B

    invoke-virtual {p1, v0, v1}, Lkvq;->a(I[B)V

    return-void
.end method

.method final a(Lkvm;)Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    instance-of v0, p1, Lkvc;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lkvc;

    iget-object v0, p0, Lkvc;->a:[B

    iget-object v1, p1, Lkvc;->a:[B

    invoke-static {v0, v1}, Llbb;->a([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lkvc;->a:[B

    invoke-static {v0}, Llbb;->a([B)I

    move-result v0

    return v0
.end method
