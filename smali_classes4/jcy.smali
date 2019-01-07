.class public final Ljcy;
.super Ljava/lang/Object;
.source "CellAgeEstimator.java"


# instance fields
.field public a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljcz;",
            ">;"
        }
    .end annotation
.end field

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljcy;->a:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljcy;->b:J

    return-void
.end method

.method public static a(II)J
    .locals 6

    const-wide/32 v4, 0xffff

    int-to-long v0, p0

    and-long/2addr v0, v4

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final a(Ljcz;)J
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 0
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Ljcz;->o:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-wide v4

    :cond_1
    iget-object v6, p0, Ljcy;->a:Ljava/util/HashMap;

    iget v0, p1, Ljcz;->k:I

    packed-switch v0, :pswitch_data_0

    move-wide v2, v4

    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcz;

    if-nez v0, :cond_2

    invoke-static {}, Ljdx;->b()J

    move-result-wide v0

    iput-wide v0, p1, Ljcz;->m:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1000
    :pswitch_0
    iget v0, p1, Ljcz;->c:I

    .line 2000
    iget v1, p1, Ljcz;->d:I

    .line 0
    invoke-static {v0, v1}, Ljcy;->a(II)J

    move-result-wide v0

    move-wide v2, v0

    goto :goto_1

    .line 3000
    :pswitch_1
    iget v0, p1, Ljcz;->h:I

    .line 4000
    iget v1, p1, Ljcz;->i:I

    .line 0
    invoke-static {v0, v1}, Ljcy;->a(II)J

    move-result-wide v0

    move-wide v2, v0

    goto :goto_1

    .line 5000
    :cond_2
    iget v1, v0, Ljcz;->j:I

    .line 6000
    iget v7, p1, Ljcz;->j:I

    .line 0
    if-eq v1, v7, :cond_3

    invoke-static {}, Ljdx;->b()J

    move-result-wide v0

    iput-wide v0, p1, Ljcz;->m:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-wide v4, v0, Ljcz;->m:J

    iput-wide v4, p1, Ljcz;->m:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljdx;->b()J

    move-result-wide v2

    iget-wide v0, v0, Ljcz;->m:J

    sub-long v0, v2, v0

    const-wide/16 v2, 0x3e8

    div-long v4, v0, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
