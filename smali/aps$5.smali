.class final Laps$5;
.super Ljava/lang/Object;
.source "ScheduleDetailPresenterImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lasc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Laps;


# direct methods
.method constructor <init>(Laps;)V
    .locals 0
    .param p1, "this$0"    # Laps;

    .prologue
    .line 334
    iput-object p1, p0, Laps$5;->a:Laps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 362
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[ScheduleDetailPresenterImpl] calendarObject changed. onException code="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, ", calendarId="

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Laps$5;->a:Laps;

    invoke-static {v2}, Laps;->b(Laps;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 334
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 334
    check-cast p1, Lasc;

    .line 1339
    if-eqz p1, :cond_0

    .line 2155
    iget-boolean v0, p1, Lasc;->l:Z

    .line 1343
    if-eqz v0, :cond_1

    .line 1344
    sget v0, Laow$f;->dt_ding_schedule_already_deleted:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1345
    iget-object v0, p0, Laps$5;->a:Laps;

    invoke-static {v0}, Laps;->a(Laps;)Lapr$b;

    move-result-object v0

    invoke-interface {v0}, Lapr$b;->a()V

    .line 1346
    :cond_0
    :goto_0
    return-void

    .line 1349
    :cond_1
    invoke-virtual {p1}, Lasc;->a()Lary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1353
    iget-object v0, p0, Laps$5;->a:Laps;

    invoke-static {v0, p1}, Laps;->a(Laps;Lasc;)Lasc;

    .line 1354
    iget-object v0, p0, Laps$5;->a:Laps;

    invoke-virtual {p1}, Lasc;->a()Lary;

    move-result-object v1

    invoke-static {v0, v1}, Laps;->a(Laps;Lary;)Lary;

    .line 1355
    iget-object v0, p0, Laps$5;->a:Laps;

    iget-object v1, p0, Laps$5;->a:Laps;

    invoke-static {v1}, Laps;->c(Laps;)Lary;

    move-result-object v1

    invoke-virtual {v1}, Lary;->b()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Laps;->a(Laps;J)J

    .line 1357
    iget-object v0, p0, Laps$5;->a:Laps;

    invoke-static {v0}, Laps;->a(Laps;)Lapr$b;

    move-result-object v0

    iget-object v1, p0, Laps$5;->a:Laps;

    invoke-static {v1}, Laps;->c(Laps;)Lary;

    move-result-object v1

    invoke-interface {v0, v1}, Lapr$b;->a(Lary;)V

    goto :goto_0
.end method
