.class public final Lasn;
.super Ljava/lang/Object;
.source "HolidayArrangementResultObject.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lckr;",
            ">;"
        }
    .end annotation
.end field

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Laqx;)V
    .locals 5
    .param p1, "holidayArrangementResultModel"    # Laqx;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-eqz p1, :cond_5

    .line 26
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lasn;->a:Ljava/util/List;

    .line 27
    iget-object v2, p1, Laqx;->a:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 28
    iget-object v2, p1, Laqx;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqw;

    .line 1044
    .local v0, "holidayArrangementModel":Laqw;
    if-nez v0, :cond_2

    .line 1045
    const/4 v1, 0x0

    .line 30
    .local v1, "holidayArrangementObject":Lckr;
    :cond_1
    :goto_1
    if-eqz v1, :cond_0

    .line 31
    iget-object v3, p0, Lasn;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1047
    .end local v1    # "holidayArrangementObject":Lckr;
    :cond_2
    new-instance v1, Lckr;

    invoke-direct {v1}, Lckr;-><init>()V

    .line 1048
    iget-object v3, v0, Laqw;->a:Ljava/lang/String;

    .line 2050
    iput-object v3, v1, Lckr;->a:Ljava/lang/String;

    .line 1050
    iget-object v3, v0, Laqw;->b:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 3042
    iget-object v3, v1, Lckr;->b:Ljava/util/ArrayList;

    .line 1050
    if-eqz v3, :cond_3

    .line 4042
    iget-object v3, v1, Lckr;->b:Ljava/util/ArrayList;

    .line 1051
    iget-object v4, v0, Laqw;->b:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1054
    :cond_3
    iget-object v3, v0, Laqw;->c:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 4046
    iget-object v3, v1, Lckr;->c:Ljava/util/ArrayList;

    .line 1054
    if-eqz v3, :cond_1

    .line 5046
    iget-object v3, v1, Lckr;->c:Ljava/util/ArrayList;

    .line 1055
    iget-object v4, v0, Laqw;->c:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 35
    .end local v0    # "holidayArrangementModel":Laqw;
    :cond_4
    iget-object v2, p1, Laqx;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lasn;->b:J

    .line 37
    :cond_5
    return-void
.end method
