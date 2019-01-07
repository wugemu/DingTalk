.class public final Lhfn;
.super Landroid/util/LruCache;
.source "OACalDailyItemCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Lhkm;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0x2d0

    invoke-direct {p0, v0}, Landroid/util/LruCache;-><init>(I)V

    .line 22
    return-void
.end method

.method public static b(Lckq;)Ljava/lang/String;
    .locals 3
    .param p0, "calendarBean"    # Lckq;

    .prologue
    .line 54
    if-nez p0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 2050
    iget v2, p0, Lckq;->a:I

    .line 58
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 2054
    iget v2, p0, Lckq;->b:I

    .line 60
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 2058
    iget v2, p0, Lckq;->c:I

    .line 62
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 57
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lckq;)Lhkm;
    .locals 2
    .param p1, "calendarBean"    # Lckq;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 29
    invoke-static {p1}, Lhfn;->b(Lckq;)Ljava/lang/String;

    move-result-object v0

    .line 1047
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1048
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1050
    :cond_1
    invoke-virtual {p0, v0}, Lhfn;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhkm;

    goto :goto_0
.end method
