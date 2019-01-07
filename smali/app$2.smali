.class final Lapp$2;
.super Ljava/lang/Object;
.source "EditSchedulePresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp;->k()V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lapp;


# direct methods
.method constructor <init>(Lapp;)V
    .locals 0
    .param p1, "this$0"    # Lapp;

    .prologue
    .line 263
    iput-object p1, p0, Lapp$2;->a:Lapp;

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
    const/4 v3, 0x1

    .line 276
    iget-object v0, p0, Lapp$2;->a:Lapp;

    iget-object v0, v0, Lapp;->j:Lapq$c;

    invoke-interface {v0}, Lapq$c;->g()V

    .line 277
    iget-object v0, p0, Lapp$2;->a:Lapp;

    iget-object v0, v0, Lapp;->j:Lapq$c;

    invoke-interface {v0, v3}, Lapq$c;->a(Z)V

    .line 279
    sget v0, Laow$f;->dt_calendar_edit_schedule_event_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 280
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[EditSchedulePresenter] code="

    aput-object v2, v0, v1

    aput-object p1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, ", calendarId="

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lapp$2;->a:Lapp;

    .line 1036
    iget-wide v2, v2, Lapp;->k:J

    .line 280
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 263
    .line 1267
    iget-object v0, p0, Lapp$2;->a:Lapp;

    iget-object v0, v0, Lapp;->j:Lapq$c;

    invoke-interface {v0}, Lapq$c;->g()V

    .line 1268
    iget-object v0, p0, Lapp$2;->a:Lapp;

    iget-object v0, v0, Lapp;->j:Lapq$c;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lapq$c;->a(Z)V

    .line 1270
    sget v0, Laow$f;->dt_calendar_edit_schedule_event_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1271
    iget-object v0, p0, Lapp$2;->a:Lapp;

    iget-object v0, v0, Lapp;->j:Lapq$c;

    invoke-interface {v0}, Lapq$c;->e()V

    .line 263
    return-void
.end method
