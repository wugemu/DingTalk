.class public abstract Lkvm;
.super Lktu;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lktu;-><init>()V

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

.method public final d()Lkvm;
    .locals 0

    return-object p0
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract hashCode()I
.end method
