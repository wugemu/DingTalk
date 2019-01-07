.class final Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment$4;
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
.field final synthetic a:Lcsa;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;Lcsa;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment$4;->b:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment$4;->a:Lcsa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 121
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment$4;->b:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 122
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment$4;->b:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->b(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;)Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment$4;->a:Lcsa;

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;->setICalendarDayViewAdapter(Lcsa;)V

    .line 125
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment$4;->b:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->b(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;)Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment$4;->b:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->c(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;)Lckq;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;->a(Lckq;)V

    .line 127
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment$4;->b:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->b(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;)Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lher;

    invoke-direct {v3}, Lher;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$e;)V

    .line 129
    :cond_0
    return-void
.end method
