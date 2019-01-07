.class public final Larq;
.super Ljava/lang/Object;
.source "CalendarChangeObject.java"


# instance fields
.field public a:J

.field public b:I

.field public c:J

.field public d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Larx;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Laqb;)Larq;
    .locals 12
    .param p0, "calendarChangeModel"    # Laqb;

    .prologue
    const/4 v3, 0x0

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 43
    if-nez p0, :cond_0

    move-object v0, v3

    .line 63
    :goto_0
    return-object v0

    .line 46
    :cond_0
    new-instance v0, Larq;

    invoke-direct {v0}, Larq;-><init>()V

    .line 47
    .local v0, "calendarChangeObject":Larq;
    iget-object v4, p0, Laqb;->b:Ljava/lang/Long;

    .line 1044
    invoke-static {v4, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 47
    iput-wide v4, v0, Larq;->a:J

    .line 48
    iget-object v4, p0, Laqb;->a:Ljava/lang/Integer;

    .line 2033
    invoke-static {v4, v8}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v4

    .line 48
    iput v4, v0, Larq;->b:I

    .line 49
    iget-object v4, p0, Laqb;->c:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 50
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Larq;->e:Ljava/util/List;

    .line 51
    iget-object v4, p0, Laqb;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laqt;

    .line 2045
    .local v2, "eventChangeModel":Laqt;
    if-nez v2, :cond_2

    move-object v1, v3

    .line 53
    .local v1, "calendarEventChangeObject":Larx;
    :goto_2
    if-eqz v1, :cond_1

    .line 54
    iget-object v5, v0, Larq;->e:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2048
    .end local v1    # "calendarEventChangeObject":Larx;
    :cond_2
    new-instance v1, Larx;

    invoke-direct {v1}, Larx;-><init>()V

    .line 2049
    iget-object v5, v2, Laqt;->a:Ljava/lang/Long;

    .line 3044
    invoke-static {v5, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 2049
    iput-wide v6, v1, Larx;->a:J

    .line 2050
    iget-object v5, v2, Laqt;->b:Ljava/lang/Integer;

    .line 4033
    invoke-static {v5, v8}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v5

    .line 2050
    iput v5, v1, Larx;->b:I

    .line 2051
    iget-object v5, v2, Laqt;->c:Ljava/lang/Long;

    .line 4044
    invoke-static {v5, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 2051
    iput-wide v6, v1, Larx;->c:J

    .line 2052
    iget-object v5, v2, Laqt;->d:Ljava/lang/Long;

    .line 5044
    invoke-static {v5, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 2052
    iput-wide v6, v1, Larx;->d:J

    .line 2053
    iget-object v5, v2, Laqt;->e:Ljava/lang/String;

    iput-object v5, v1, Larx;->e:Ljava/lang/String;

    .line 2054
    iget-object v5, v2, Laqt;->f:Ljava/lang/String;

    iput-object v5, v1, Larx;->f:Ljava/lang/String;

    goto :goto_2

    .line 58
    .end local v2    # "eventChangeModel":Laqt;
    :cond_3
    iget-object v3, p0, Laqb;->d:Ljava/lang/Long;

    .line 6044
    invoke-static {v3, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 58
    iput-wide v4, v0, Larq;->c:J

    .line 59
    iget-object v3, p0, Laqb;->e:Ljava/lang/Integer;

    .line 7033
    invoke-static {v3, v8}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 59
    iput v3, v0, Larq;->f:I

    .line 60
    iget-object v3, p0, Laqb;->f:Ljava/lang/Integer;

    .line 8033
    invoke-static {v3, v8}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 60
    iput v3, v0, Larq;->g:I

    .line 61
    iget-object v3, p0, Laqb;->g:Ljava/lang/Integer;

    .line 9033
    invoke-static {v3, v8}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 61
    iput v3, v0, Larq;->h:I

    .line 62
    iget-object v3, p0, Laqb;->h:Ljava/lang/String;

    iput-object v3, v0, Larq;->d:Ljava/lang/String;

    goto/16 :goto_0
.end method
