.class final Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$2;
.super Ljava/lang/Object;
.source "CalendarBaseMonthViewPager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final transformPage(Landroid/view/View;F)V
    .locals 2
    .param p1, "page"    # Landroid/view/View;
    .param p2, "position"    # F

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 158
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p2, v0

    .line 159
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 160
    return-void
.end method
