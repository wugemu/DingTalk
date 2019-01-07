.class final Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$1;
.super Ljava/lang/Object;
.source "CalendarMonthView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->a(Lckq;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lckq;

.field final synthetic b:Lckq;

.field final synthetic c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;Lckq;Lckq;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$1;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$1;->a:Lckq;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$1;->b:Lckq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$1;->a:Lckq;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$1;->b:Lckq;

    invoke-static {v0, v1}, Lcqd;->a(Lckq;Lckq;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$1;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$1;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$b;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$1;->a:Lckq;

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$b;->a(Lckq;)V

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$1;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$1;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$1;->a:Lckq;

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$a;->a(Lckq;)V

    goto :goto_0
.end method
