.class public final Lckt;
.super Landroid/util/LruCache;
.source "LunarFestivalInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Lcks;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x2d0

    invoke-direct {p0, v0}, Landroid/util/LruCache;-><init>(I)V

    .line 19
    return-void
.end method

.method private static b(Lckq;)Ljava/lang/String;
    .locals 3
    .param p0, "calendarBean"    # Lckq;

    .prologue
    .line 51
    if-nez p0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1050
    iget v2, p0, Lckq;->a:I

    .line 55
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 1054
    iget v2, p0, Lckq;->b:I

    .line 57
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 1058
    iget v2, p0, Lckq;->c:I

    .line 59
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 54
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lckq;)Lcks;
    .locals 2
    .param p1, "calendarBean"    # Lckq;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 26
    invoke-static {p1}, Lckt;->b(Lckq;)Ljava/lang/String;

    move-result-object v0

    .line 1044
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1045
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1047
    :cond_1
    invoke-virtual {p0, v0}, Lckt;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcks;

    goto :goto_0
.end method

.method public final a(Lckq;Lcks;)V
    .locals 2
    .param p1, "calendarBean"    # Lckq;
    .param p2, "lunarFestivalInfo"    # Lcks;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 22
    invoke-static {p1}, Lckt;->b(Lckq;)Ljava/lang/String;

    move-result-object v0

    .line 1034
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 1037
    :cond_1
    if-eqz p2, :cond_0

    .line 1040
    invoke-virtual {p0, v0, p2}, Lckt;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
