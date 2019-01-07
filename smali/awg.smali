.class public final Lawg;
.super Ljava/lang/Object;
.source "SingleCallbackMainUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lapv;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lapv",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, "listener":Lapv;, "Lapv<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 16
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lawg$1;

    invoke-direct {v1, p0, p1}, Lawg$1;-><init>(Lapv;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 22
    :cond_0
    return-void
.end method
