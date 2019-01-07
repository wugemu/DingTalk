.class final Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$2;
.super Ljava/lang/Object;
.source "CalendarGridView.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x7

    return v0
.end method

.method public final a(IILandroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "px"    # I
    .param p2, "py"    # I
    .param p3, "oldView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 70
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;)I

    move-result v1

    invoke-static {v1, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->a(III)I

    move-result v0

    .line 72
    .local v0, "dayInt":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$a;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;)I

    move-result v2

    invoke-static {v0, v2}, Lcrz;->a(II)Z

    move-result v2

    invoke-interface {v1, v0, v2, p3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$a;->a(IZLandroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 74
    .end local v0    # "dayInt":I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x6

    return v0
.end method
