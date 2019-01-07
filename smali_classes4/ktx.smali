.class public abstract Lktx;
.super Lkty;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkty;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a(Lkvq;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final a(Lkvm;)Z
    .locals 1

    instance-of v0, p1, Lktx;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "NULL"

    return-object v0
.end method
