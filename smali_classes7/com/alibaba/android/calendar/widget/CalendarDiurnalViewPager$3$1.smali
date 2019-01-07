.class final Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3$1;
.super Ljava/lang/Object;
.source "CalendarDiurnalViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3;->onPageSelected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3$1;->b:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3;

    iput p2, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3$1;->a:I

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
    .line 221
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3$1;->b:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3;

    iget-object v0, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-static {v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->e(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lavk;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lhcn;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3$1;->b:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3;

    iget-object v0, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-static {v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->c(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)I

    move-result v0

    iget v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3$1;->a:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3$1;->b:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3;

    iget-object v0, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-static {v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->f(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3$1;->b:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3;

    iget-object v0, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-static {v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->f(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3$1;->b:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3;

    iget-object v1, v1, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    iget-object v2, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3$1;->b:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3;

    iget-object v2, v2, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$3;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-static {v2}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->c(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->b(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;I)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$a;->a(J)V

    goto :goto_0
.end method
