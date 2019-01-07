.class final Lapi$7;
.super Ljava/lang/Object;
.source "CalendarActivityPresenter.java"

# interfaces
.implements Larc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapi;


# direct methods
.method constructor <init>(Lapi;)V
    .locals 0
    .param p1, "this$0"    # Lapi;

    .prologue
    .line 116
    iput-object p1, p0, Lapi$7;->a:Lapi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 119
    iget-object v1, p0, Lapi$7;->a:Lapi;

    .line 1051
    iget-object v1, v1, Lapi;->b:Ljava/util/Calendar;

    .line 119
    if-nez v1, :cond_1

    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    .line 120
    .local v2, "curDateMills":J
    :goto_0
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lapi$7;->a:Lapi;

    .line 3051
    iget-object v1, v1, Lapi;->e:Larm;

    .line 121
    invoke-interface {v1}, Larm;->c()Ljava/util/List;

    move-result-object v0

    .line 123
    .local v0, "calendarEventList":Ljava/util/List;, "Ljava/util/List<Lawv;>;"
    :goto_1
    iget-object v1, p0, Lapi$7;->a:Lapi;

    .line 5051
    iget-object v1, v1, Lapi;->d:Ljava/util/List;

    .line 123
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 124
    if-eqz v0, :cond_0

    .line 125
    iget-object v1, p0, Lapi$7;->a:Lapi;

    .line 6051
    iget-object v1, v1, Lapi;->d:Ljava/util/List;

    .line 125
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    :cond_0
    iget-object v1, p0, Lapi$7;->a:Lapi;

    invoke-virtual {v1}, Lapi;->f()V

    .line 128
    return-void

    .line 119
    .end local v0    # "calendarEventList":Ljava/util/List;, "Ljava/util/List<Lawv;>;"
    .end local v2    # "curDateMills":J
    :cond_1
    iget-object v1, p0, Lapi$7;->a:Lapi;

    .line 2051
    iget-object v1, v1, Lapi;->b:Ljava/util/Calendar;

    .line 119
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    goto :goto_0

    .line 121
    .restart local v2    # "curDateMills":J
    :cond_2
    iget-object v1, p0, Lapi$7;->a:Lapi;

    .line 4051
    iget-object v1, v1, Lapi;->e:Larm;

    .line 122
    invoke-interface {v1, v2, v3}, Larm;->b(J)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method
