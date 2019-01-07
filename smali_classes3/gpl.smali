.class public final Lgpl;
.super Ljava/lang/Object;
.source "AlarmUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/util/HashMap;Ljava/lang/String;)V
    .locals 2
    .param p0, "subType"    # I
    .param p2, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "extra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lhzu;

    invoke-direct {v0}, Lhzu;-><init>()V

    .line 65
    .local v0, "alarm":Lhzu;
    const-string/jumbo v1, "file"

    iput-object v1, v0, Lhzu;->a:Ljava/lang/String;

    .line 66
    if-eqz p1, :cond_0

    .line 67
    iput-object p1, v0, Lhzu;->b:Ljava/util/Map;

    .line 69
    :cond_0
    iput p0, v0, Lhzu;->c:I

    .line 70
    iput-object p2, v0, Lhzu;->d:Ljava/lang/String;

    .line 71
    invoke-static {}, Lhzr;->c()Lhzr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lhzr;->a(Lhzu;)V

    .line 72
    return-void
.end method
