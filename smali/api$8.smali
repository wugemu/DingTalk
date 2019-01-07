.class final Lapi$8;
.super Ljava/lang/Object;
.source "CalendarActivityPresenter.java"

# interfaces
.implements Lard;


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
    .line 131
    iput-object p1, p0, Lapi$8;->a:Lapi;

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
    .line 134
    iget-object v1, p0, Lapi$8;->a:Lapi;

    .line 1051
    iget-object v1, v1, Lapi;->e:Larm;

    .line 134
    invoke-interface {v1}, Larm;->d()Ljava/util/Map;

    move-result-object v0

    .line 135
    .local v0, "holidayArrangementMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lckr;>;"
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "[CalendarActivityPresenter] OnCalendarHolidayArrangementListener onDataChanged size="

    aput-object v3, v2, v1

    const/4 v3, 0x1

    if-nez v0, :cond_0

    const-string/jumbo v1, "0"

    .line 136
    :goto_0
    aput-object v1, v2, v3

    .line 135
    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lapi$8;->a:Lapi;

    .line 2051
    iget-object v1, v1, Lapi;->f:Laox;

    .line 137
    invoke-virtual {v1, v0}, Laox;->a(Ljava/util/Map;)V

    .line 138
    iget-object v1, p0, Lapi$8;->a:Lapi;

    .line 3051
    iget-object v1, v1, Lapi;->g:Laox;

    .line 138
    invoke-virtual {v1, v0}, Laox;->a(Ljava/util/Map;)V

    .line 139
    iget-object v1, p0, Lapi$8;->a:Lapi;

    invoke-virtual {v1}, Lapi;->f()V

    .line 140
    return-void

    .line 136
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
