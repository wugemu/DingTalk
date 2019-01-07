.class public final Lgfk;
.super Ljava/lang/Object;
.source "AclMemberModelComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lgnu;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method private static a(Lgnu;)J
    .locals 6
    .param p0, "aclMemberModel"    # Lgnu;

    .prologue
    .line 62
    .line 1227
    iget v2, p0, Lgnu;->e:I

    .line 62
    packed-switch v2, :pswitch_data_0

    .line 76
    const-wide/16 v0, 0x0

    .line 1267
    .local v0, "memberTypePriority":J
    :goto_0
    iget-wide v2, p0, Lgnu;->j:J

    .line 80
    const-wide/16 v4, 0xa

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    return-wide v2

    .line 64
    .end local v0    # "memberTypePriority":J
    :pswitch_0
    const-wide/16 v0, 0x3

    .line 65
    .restart local v0    # "memberTypePriority":J
    goto :goto_0

    .line 67
    .end local v0    # "memberTypePriority":J
    :pswitch_1
    const-wide/16 v0, 0x2

    .line 68
    .restart local v0    # "memberTypePriority":J
    goto :goto_0

    .line 70
    .end local v0    # "memberTypePriority":J
    :pswitch_2
    const-wide/16 v0, 0x1

    .line 71
    .restart local v0    # "memberTypePriority":J
    goto :goto_0

    .line 73
    .end local v0    # "memberTypePriority":J
    :pswitch_3
    const-wide/16 v0, 0x0

    .line 74
    .restart local v0    # "memberTypePriority":J
    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 31
    check-cast p1, Lgnu;

    check-cast p2, Lgnu;

    .line 2038
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 2039
    invoke-static {p1}, Lgfk;->a(Lgnu;)J

    move-result-wide v4

    invoke-static {p2}, Lgfk;->a(Lgnu;)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    .line 2053
    :cond_0
    :goto_0
    return v0

    .line 2041
    :cond_1
    invoke-static {p1}, Lgfk;->a(Lgnu;)J

    move-result-wide v4

    invoke-static {p2}, Lgfk;->a(Lgnu;)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    move v0, v1

    .line 2042
    goto :goto_0

    .line 2235
    :cond_2
    iget-boolean v3, p1, Lgnu;->f:Z

    .line 2043
    if-eqz v3, :cond_3

    .line 3235
    iget-boolean v3, p2, Lgnu;->f:Z

    .line 2043
    if-eqz v3, :cond_0

    .line 4235
    :cond_3
    iget-boolean v0, p1, Lgnu;->f:Z

    .line 2045
    if-nez v0, :cond_4

    .line 5235
    iget-boolean v0, p2, Lgnu;->f:Z

    .line 2045
    if-eqz v0, :cond_4

    move v0, v1

    .line 2046
    goto :goto_0

    :cond_4
    move v0, v2

    .line 2048
    goto :goto_0

    .line 2050
    :cond_5
    if-nez p1, :cond_6

    if-nez p2, :cond_0

    .line 2052
    :cond_6
    if-eqz p1, :cond_7

    if-nez p2, :cond_7

    move v0, v1

    .line 2053
    goto :goto_0

    :cond_7
    move v0, v2

    .line 31
    goto :goto_0
.end method
