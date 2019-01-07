.class final Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment$1;
.super Ljava/lang/Object;
.source "CalendarWidgetMonthFragment.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$b;


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
    .line 82
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment$1;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lckq;)V
    .locals 1
    .param p1, "bean"    # Lckq;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment$1;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;

    invoke-static {v0, p1}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->a(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;Lckq;)Lckq;

    .line 88
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment$1;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->f()V

    .line 89
    return-void
.end method
