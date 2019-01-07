.class final Lavm$2;
.super Ljava/lang/Object;
.source "CalendarDayEventUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lavm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Laxn;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    .line 65
    check-cast p1, Laxn;

    check-cast p2, Laxn;

    .line 1068
    if-nez p1, :cond_1

    move-wide v6, v2

    .line 1069
    :goto_0
    if-nez p2, :cond_2

    move-wide v4, v2

    .line 1070
    :goto_1
    cmp-long v8, v4, v6

    if-lez v8, :cond_3

    .line 1080
    :cond_0
    :goto_2
    return v0

    .line 1068
    :cond_1
    invoke-interface {p1}, Laxn;->getShowEndTimeMillis()J

    move-result-wide v4

    invoke-interface {p1}, Laxn;->getShowStartTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    move-wide v6, v4

    goto :goto_0

    .line 1069
    :cond_2
    invoke-interface {p2}, Laxn;->getShowEndTimeMillis()J

    move-result-wide v4

    invoke-interface {p2}, Laxn;->getShowStartTimeMillis()J

    move-result-wide v8

    sub-long/2addr v4, v8

    goto :goto_1

    .line 1072
    :cond_3
    cmp-long v4, v4, v6

    if-gez v4, :cond_4

    move v0, v1

    .line 1073
    goto :goto_2

    .line 1075
    :cond_4
    if-nez p1, :cond_5

    move-wide v4, v2

    .line 1076
    :goto_3
    if-nez p2, :cond_6

    .line 1077
    :goto_4
    cmp-long v6, v2, v4

    if-lez v6, :cond_7

    move v0, v1

    .line 1078
    goto :goto_2

    .line 1075
    :cond_5
    invoke-interface {p1}, Laxn;->getShowStartTimeMillis()J

    move-result-wide v4

    goto :goto_3

    .line 1076
    :cond_6
    invoke-interface {p2}, Laxn;->getShowStartTimeMillis()J

    move-result-wide v2

    goto :goto_4

    .line 1079
    :cond_7
    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 1082
    const/4 v0, 0x0

    .line 65
    goto :goto_2
.end method
