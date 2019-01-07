.class final Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$1;
.super Ljava/lang/Object;
.source "CalendarDiurnalView.java"

# interfaces
.implements Lcom/alibaba/android/calendar/widget/ScrollControlScrollView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$1;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$1;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    invoke-static {v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->a(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;)Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$1;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    invoke-static {v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->a(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;)Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$c;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$1;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    invoke-static {v1}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->b(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;)Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$1;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    invoke-static {v2}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->b(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;)Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->getScrollY()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$1;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    invoke-virtual {v3}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->getFirstEventBottom()F

    move-result v3

    iget-object v4, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$1;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    invoke-virtual {v4}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->getLastEventTop()F

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$c;->a(IIFF)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$1;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    invoke-static {v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->c(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;)V

    .line 125
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$1;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    invoke-static {v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->d(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;)V

    .line 130
    return-void
.end method
