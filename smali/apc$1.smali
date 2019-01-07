.class final Lapc$1;
.super Ljava/lang/Object;
.source "CalendarAlertConsts.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapc;
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
        "Lapb;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const-wide/16 v0, 0x0

    .line 25
    check-cast p1, Lapb;

    check-cast p2, Lapb;

    .line 1028
    if-nez p1, :cond_0

    move-wide v2, v0

    .line 1029
    :goto_0
    if-nez p2, :cond_1

    .line 1031
    :goto_1
    cmp-long v4, v2, v0

    if-nez v4, :cond_2

    .line 1032
    const/4 v0, 0x0

    .line 1035
    :goto_2
    return v0

    .line 1067
    :cond_0
    iget-wide v2, p1, Lapb;->e:J

    goto :goto_0

    .line 2067
    :cond_1
    iget-wide v0, p2, Lapb;->e:J

    goto :goto_1

    .line 1035
    :cond_2
    cmp-long v0, v2, v0

    if-gez v0, :cond_3

    const/4 v0, -0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    .line 25
    goto :goto_2
.end method
