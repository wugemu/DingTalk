.class public final Latf$1;
.super Ljava/lang/Object;
.source "CalendarDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Latf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Latf;


# direct methods
.method public constructor <init>(Latf;)V
    .locals 0
    .param p1, "this$0"    # Latf;

    .prologue
    .line 90
    iput-object p1, p0, Latf$1;->a:Latf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 93
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 94
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "[CalendarDataProvider]init uid=0"

    aput-object v1, v0, v4

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 103
    :goto_0
    return-void

    .line 98
    :cond_0
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "[CalendarDataProvider]init clear db."

    aput-object v1, v0, v4

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Latf$1;->a:Latf;

    invoke-static {v0}, Latf;->a(Latf;)Lapw;

    move-result-object v0

    .line 1568
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "[clearAllCalendarData]"

    aput-object v2, v1, v4

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 1569
    iget-object v0, v0, Lapw;->a:Latu;

    invoke-interface {v0, v5}, Latu;->a(Z)V

    .line 100
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {}, Latf;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 102
    iget-object v0, p0, Latf$1;->a:Latf;

    invoke-static {v0}, Latf;->a(Latf;)Lapw;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lapw;->a(Lcom/alibaba/wukong/sync/SyncAck;)V

    goto :goto_0
.end method
