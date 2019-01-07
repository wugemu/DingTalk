.class public final Lizi;
.super Ljava/lang/Object;
.source "StreamOutput.java"

# interfaces
.implements Lizf;


# instance fields
.field private a:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lizi;->a:Ljava/io/DataOutputStream;

    .line 13
    return-void
.end method


# virtual methods
.method public final a(B)V
    .locals 1
    .param p1, "v"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lizi;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 38
    return-void
.end method

.method public final a(BB)V
    .locals 1
    .param p1, "b"    # B
    .param p2, "v"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lizi;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 68
    iget-object v0, p0, Lizi;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->write(I)V

    .line 69
    return-void
.end method

.method public final a(BD)V
    .locals 2
    .param p1, "b"    # B
    .param p2, "v"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lizi;->a:Ljava/io/DataOutputStream;

    const/16 v1, -0x35

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 98
    iget-object v0, p0, Lizi;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p2, p3}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 99
    return-void
.end method

.method public final a(BF)V
    .locals 2
    .param p1, "b"    # B
    .param p2, "v"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 91
    iget-object v0, p0, Lizi;->a:Ljava/io/DataOutputStream;

    const/16 v1, -0x36

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 92
    iget-object v0, p0, Lizi;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 93
    return-void
.end method

.method public final a(BI)V
    .locals 1
    .param p1, "b"    # B
    .param p2, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lizi;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 80
    iget-object v0, p0, Lizi;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 81
    return-void
.end method

.method public final a(BJ)V
    .locals 2
    .param p1, "b"    # B
    .param p2, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lizi;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 86
    iget-object v0, p0, Lizi;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p2, p3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 87
    return-void
.end method

.method public final a(BS)V
    .locals 1
    .param p1, "b"    # B
    .param p2, "v"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lizi;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 74
    iget-object v0, p0, Lizi;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 75
    return-void
.end method

.method public final a([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lizi;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 18
    return-void
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lizi;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 108
    return-void
.end method

.method public final flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    return-void
.end method
