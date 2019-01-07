.class final Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$5;
.super Ljava/lang/Object;
.source "CalendarFragmentImpl.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$5;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lckq;)V
    .locals 1
    .param p1, "bean"    # Lckq;

    .prologue
    .line 449
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$5;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->a(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Laph$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$5;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->a(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Laph$a;

    move-result-object v0

    invoke-interface {v0, p1}, Laph$a;->b(Lckq;)V

    .line 452
    :cond_0
    return-void
.end method
