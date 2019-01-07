.class final Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$2;
.super Ljava/lang/Object;
.source "CalendarDiurnalViewPager.java"

# interfaces
.implements Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$a;


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
    .line 63
    iput-object p1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$2;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .param p1, "translationX"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$2;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-static {v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->b(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$2;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;

    invoke-static {v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;->b(Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager;)Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalViewPager$e;->a(I)V

    .line 69
    :cond_0
    return-void
.end method
