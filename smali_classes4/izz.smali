.class public final Lizz;
.super Ljava/lang/Object;
.source "PacketFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljaa;I[B)Lizt;
    .locals 3
    .param p0, "cipher"    # Ljaa;
    .param p1, "version"    # I
    .param p2, "body"    # [B

    .prologue
    .line 43
    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "body"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_0
    new-instance v0, Lizt;

    invoke-direct {v0, p0, p1}, Lizt;-><init>(Ljaa;I)V

    .line 46
    .local v0, "d":Lizt;
    iput-object p2, v0, Lizt;->a:[B

    .line 47
    return-object v0
.end method
