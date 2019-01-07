.class public final Lfzn;
.super Ljava/lang/Object;
.source "AlimeiSearchFacede.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcma;Ljava/lang/Object;)V
    .locals 2
    .param p0, "apiEventListener"    # Lcma;
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 152
    if-nez p0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lfzn$3;

    invoke-direct {v1, p0, p1}, Lfzn$3;-><init>(Lcma;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
