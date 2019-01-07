.class public final Lanet/channel/strategy/RawConnStrategy$a;
.super Ljava/lang/Object;
.source "RawConnStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/strategy/RawConnStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lanet/channel/strategy/RawConnStrategy;
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 142
    new-instance v0, Lanet/channel/strategy/RawConnStrategy;

    const/16 v1, 0x1bb

    sget-object v2, Lanet/channel/entity/ConnType;->H2_ACCS_0RTT:Lanet/channel/entity/ConnType;

    const v6, 0xafc8

    move v4, v3

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lanet/channel/strategy/RawConnStrategy;-><init>(ILanet/channel/entity/ConnType;IIIIZ)V

    return-object v0
.end method

.method public static a(ILanet/channel/entity/ConnType;)Lanet/channel/strategy/RawConnStrategy;
    .locals 8
    .param p0, "port"    # I
    .param p1, "connType"    # Lanet/channel/entity/ConnType;

    .prologue
    const/4 v3, 0x0

    .line 146
    new-instance v0, Lanet/channel/strategy/RawConnStrategy;

    const/4 v5, 0x1

    const v6, 0xafc8

    move v1, p0

    move-object v2, p1

    move v4, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lanet/channel/strategy/RawConnStrategy;-><init>(ILanet/channel/entity/ConnType;IIIIZ)V

    return-object v0
.end method

.method static a(Lke$a;)Lanet/channel/strategy/RawConnStrategy;
    .locals 8
    .param p0, "aisles"    # Lke$a;

    .prologue
    .line 133
    invoke-static {p0}, Lanet/channel/entity/ConnType;->valueOf(Lke$a;)Lanet/channel/entity/ConnType;

    move-result-object v2

    .line 134
    .local v2, "connType":Lanet/channel/entity/ConnType;
    if-nez v2, :cond_0

    .line 135
    const/4 v0, 0x0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lanet/channel/strategy/RawConnStrategy;

    iget v1, p0, Lke$a;->a:I

    iget v3, p0, Lke$a;->c:I

    iget v4, p0, Lke$a;->d:I

    iget v5, p0, Lke$a;->e:I

    iget v6, p0, Lke$a;->f:I

    iget-boolean v7, p0, Lke$a;->h:Z

    invoke-direct/range {v0 .. v7}, Lanet/channel/strategy/RawConnStrategy;-><init>(ILanet/channel/entity/ConnType;IIIIZ)V

    goto :goto_0
.end method
