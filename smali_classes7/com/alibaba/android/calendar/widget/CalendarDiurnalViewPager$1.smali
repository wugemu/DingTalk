.class final Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$1;
.super Ljava/lang/Object;
.source "CalendarDiurnalViewPager.java"

# interfaces
.implements Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$1;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIFF)V
    .locals 1
    .param p1, "scrollViewHeight"    # I
    .param p2, "scrollY"    # I
    .param p3, "firstEventBottom"    # F
    .param p4, "lastEventTop"    # F

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$1;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-static {v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->a(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$1;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-static {v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->a(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$f;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$f;->a(IIFF)V

    .line 61
    :cond_0
    return-void
.end method
