.class final Lcom/alibaba/android/calendar/widget/ScrollControlScrollView$1;
.super Ljava/lang/Object;
.source "ScrollControlScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView$1;->a:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView$1;->a:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    invoke-static {v0}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->a(Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;)I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView$1;->a:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->getScrollY()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 34
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView$1;->a:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    invoke-static {v0}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->b(Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;)Lcom/alibaba/android/calendar/widget/ScrollControlScrollView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView$1;->a:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    invoke-static {v0}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->b(Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;)Lcom/alibaba/android/calendar/widget/ScrollControlScrollView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView$a;->b()V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView$1;->a:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->a(Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;Z)Z

    .line 1184
    const-string/jumbo v0, "ding_calendar_oneday_slide"

    invoke-static {v0}, Lavw;->c(Ljava/lang/String;)V

    .line 44
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView$1;->a:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView$1;->a:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->getScrollY()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->a(Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;I)I

    .line 42
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    const-wide/16 v2, 0x5

    invoke-virtual {v0, p0, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
