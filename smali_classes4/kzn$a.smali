.class public final Lkzn$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkzn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# virtual methods
.method public final a(Ljava/util/Locale;)[Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 0
    array-length v0, v2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_1

    aget-byte v1, v2, v0

    if-eqz v1, :cond_0

    .line 1000
    invoke-virtual {v2, v2, p1, v2}, Lkzm;->a(Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v1

    .line 0
    aget v4, v2, v0

    :goto_1
    aput-object v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget v1, v2, v0

    aput-object v2, v2, v0

    move-object v1, v2

    goto :goto_1

    :cond_1
    return-object v3
.end method
