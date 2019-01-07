.class final Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3$3;
.super Ljava/lang/Object;
.source "DingTabFragmentImplV3.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 287
    const/4 v1, 0x0

    .line 288
    .local v1, "scheduleCreateModel":Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;
    iget-object v4, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;

    iget-object v4, v4, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v4}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->b(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;

    iget-object v4, v4, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v4}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->c(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 289
    iget-object v4, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;

    iget-object v4, v4, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v4}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->o(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)J

    move-result-wide v2

    .line 290
    .local v2, "createStartTime":J
    new-instance v0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;

    invoke-direct {v0}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;-><init>()V

    .line 291
    .local v0, "builder":Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1183
    iput-object v4, v0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->c:Ljava/lang/Long;

    .line 292
    const-wide/32 v4, 0x36ee80

    add-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1188
    iput-object v4, v0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->d:Ljava/lang/Long;

    .line 293
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->a()Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;

    move-result-object v1

    .line 295
    .end local v0    # "builder":Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;
    .end local v2    # "createStartTime":J
    :cond_0
    invoke-static {}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a()Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;

    iget-object v5, v5, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-virtual {v5}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;)V

    .line 2122
    const-string/jumbo v4, "ding_dinglist_create_schedule_click"

    invoke-static {v4}, Lbjz;->a(Ljava/lang/String;)V

    .line 297
    iget-object v4, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;

    iget-object v4, v4, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v4}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->m(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->a(Z)V

    .line 298
    return-void
.end method
