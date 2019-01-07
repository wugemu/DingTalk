.class final Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7$3;
.super Ljava/lang/Object;
.source "DingTabFragmentImplV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7$3;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;

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
    .line 312
    const/4 v1, 0x0

    .line 313
    .local v1, "scheduleCreateModel":Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;
    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7$3;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;

    iget-object v4, v4, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v4}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->d(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Lcom/alibaba/android/ding/widget/DingFilterManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/ding/widget/DingFilterManager;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7$3;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;

    iget-object v4, v4, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v4}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->e(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 314
    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7$3;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;

    iget-object v4, v4, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v4}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->m(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)J

    move-result-wide v2

    .line 315
    .local v2, "createStartTime":J
    new-instance v0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;

    invoke-direct {v0}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;-><init>()V

    .line 316
    .local v0, "builder":Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1183
    iput-object v4, v0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->c:Ljava/lang/Long;

    .line 317
    const-wide/32 v4, 0x36ee80

    add-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1188
    iput-object v4, v0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->d:Ljava/lang/Long;

    .line 318
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->a()Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;

    move-result-object v1

    .line 320
    .end local v0    # "builder":Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;
    .end local v2    # "createStartTime":J
    :cond_0
    invoke-static {}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a()Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7$3;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;

    iget-object v5, v5, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-virtual {v5}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;)V

    .line 2122
    const-string/jumbo v4, "ding_dinglist_create_schedule_click"

    invoke-static {v4}, Lbjz;->a(Ljava/lang/String;)V

    .line 322
    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7$3;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;

    iget-object v4, v4, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v4}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->l(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->a(Z)V

    .line 323
    return-void
.end method
