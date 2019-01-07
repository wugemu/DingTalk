.class final Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$1;
.super Ljava/lang/Object;
.source "CalendarWeekView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->a(Lckq;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lckq;

.field final synthetic b:Lckq;

.field final synthetic c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;Lckq;Lckq;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$1;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$1;->a:Lckq;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$1;->b:Lckq;

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
    .line 151
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$1;->a:Lckq;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$1;->b:Lckq;

    invoke-static {v0, v1}, Lcqd;->a(Lckq;Lckq;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$1;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$1;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$b;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$1;->a:Lckq;

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$b;->a(Lckq;)V

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$1;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$1;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$1;->a:Lckq;

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$a;->a(Lckq;)V

    goto :goto_0
.end method
