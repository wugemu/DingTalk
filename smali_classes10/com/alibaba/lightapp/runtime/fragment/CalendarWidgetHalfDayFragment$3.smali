.class final Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment$3;
.super Ljava/lang/Object;
.source "CalendarWidgetHalfDayFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->c(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment$3;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->b(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setSelection(I)V

    .line 135
    return-void
.end method
