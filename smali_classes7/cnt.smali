.class public final Lcnt;
.super Ljava/lang/Object;
.source "AlarmUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3
    .param p0, "desc"    # Ljava/lang/String;

    .prologue
    .line 144
    .line 1140
    const-string/jumbo v0, "base"

    const/4 v1, 0x0

    .line 2131
    new-instance v2, Lhzu;

    invoke-direct {v2}, Lhzu;-><init>()V

    .line 2132
    iput-object v0, v2, Lhzu;->a:Ljava/lang/String;

    .line 2133
    const/16 v0, 0xfa0

    iput v0, v2, Lhzu;->c:I

    .line 2134
    iput-object v1, v2, Lhzu;->b:Ljava/util/Map;

    .line 2135
    iput-object p0, v2, Lhzu;->d:Ljava/lang/String;

    .line 2136
    invoke-static {}, Lhzr;->c()Lhzr;

    move-result-object v0

    invoke-virtual {v0, v2}, Lhzr;->b(Lhzu;)V

    .line 145
    return-void
.end method
