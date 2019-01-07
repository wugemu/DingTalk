.class final Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity$3;
.super Ljava/lang/Object;
.source "CalendarWidgetActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity$3;->a:Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .param p1, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 191
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity$3;->a:Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;

    invoke-static {v0, p1}, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->a(Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;I)I

    .line 192
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity$3;->a:Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->c(Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;)Lcom/alibaba/lightapp/runtime/adapter/SWJKViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity$3;->a:Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->a(Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/adapter/SWJKViewPager;->setCurrentItem(I)V

    .line 193
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity$3;->a:Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->invalidateOptionsMenu()V

    .line 194
    return-void
.end method
