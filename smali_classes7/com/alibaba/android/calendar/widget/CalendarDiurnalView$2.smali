.class final Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$2;
.super Ljava/lang/Object;
.source "CalendarDiurnalView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$2;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/32 v6, 0x1b7740

    .line 138
    invoke-static {}, Lavq;->f()Z

    .line 162
    invoke-static {}, Lavq;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$2;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    invoke-static {v1}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->f(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;)Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$2;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    invoke-static {v1}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->e(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;)F

    move-result v1

    iget-object v4, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$2;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    invoke-static {v4}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->g(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    const v4, 0x4ca4cb80    # 8.64E7f

    mul-float/2addr v1, v4

    iget-object v4, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$2;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    invoke-static {v4}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->h(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;)J

    move-result-wide v4

    long-to-float v4, v4

    add-float/2addr v1, v4

    float-to-long v2, v1

    .line 164
    .local v2, "currentSelectedMillis":J
    div-long v4, v2, v6

    mul-long/2addr v4, v6

    sub-long v2, v4, v6

    .line 165
    new-instance v0, Lart;

    sget v1, Laow$f;->dt_ding_calendar_longpress_drag_create_default_title:I

    .line 166
    invoke-static {v1}, Leda;->a(I)Ljava/lang/String;

    move-result-object v1

    const-wide/32 v4, 0x36ee80

    add-long/2addr v4, v2

    invoke-direct/range {v0 .. v5}, Lart;-><init>(Ljava/lang/String;JJ)V

    .line 169
    .local v0, "diurnalCreateEvent":Lart;
    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$2;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    new-instance v4, Larw;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v0, v5, v6}, Larw;-><init>(Laxn;FF)V

    sget-object v5, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_BODY:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    invoke-static {v1, v4, v5}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->a(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;Larw;Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;)V

    .line 1029
    const-wide/16 v4, 0x1e

    invoke-static {v4, v5}, Lawk;->a(J)V

    .line 172
    .end local v0    # "diurnalCreateEvent":Lart;
    .end local v2    # "currentSelectedMillis":J
    :cond_0
    return-void
.end method
