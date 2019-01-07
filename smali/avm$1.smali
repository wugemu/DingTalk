.class final Lavm$1;
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
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const-wide/16 v0, 0x0

    .line 47
    check-cast p1, Laxn;

    check-cast p2, Laxn;

    .line 1050
    if-nez p1, :cond_0

    move-wide v2, v0

    .line 1051
    :goto_0
    if-nez p2, :cond_1

    .line 1052
    :goto_1
    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 1053
    const/4 v0, -0x1

    .line 1055
    :goto_2
    return v0

    .line 1050
    :cond_0
    invoke-interface {p1}, Laxn;->getShowStartTimeMillis()J

    move-result-wide v2

    goto :goto_0

    .line 1051
    :cond_1
    invoke-interface {p2}, Laxn;->getShowStartTimeMillis()J

    move-result-wide v0

    goto :goto_1

    .line 1054
    :cond_2
    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 1055
    const/4 v0, 0x1

    goto :goto_2

    .line 1057
    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Laxn;->getSubject()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    :cond_4
    const-string/jumbo v0, ""

    move-object v1, v0

    .line 1058
    :goto_3
    if-eqz p2, :cond_5

    invoke-interface {p2}, Laxn;->getSubject()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_5
    const-string/jumbo v0, ""

    .line 1059
    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 1057
    :cond_6
    invoke-interface {p1}, Laxn;->getSubject()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_3

    .line 1058
    :cond_7
    invoke-interface {p2}, Laxn;->getSubject()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method
