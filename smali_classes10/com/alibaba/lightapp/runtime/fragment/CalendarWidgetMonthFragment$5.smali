.class final Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment$5;
.super Ljava/lang/Object;
.source "CalendarWidgetMonthFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment$5;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 143
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment$5;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 144
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment$5;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->b(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;)Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;->CURRENT_PAGE:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$REFRESH_MODE;)V

    .line 147
    :cond_0
    return-void
.end method
