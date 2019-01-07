.class final Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$10;
.super Ljava/lang/Object;
.source "CalendarFragmentImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->a(Landroid/view/View;)V
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
    .line 229
    iput-object p1, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$10;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 232
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$10;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->a(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Laph$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1115
    const-string/jumbo v0, "ding_calendar_today"

    invoke-static {v0}, Lavw;->b(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$10;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->a(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Laph$a;

    move-result-object v0

    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Laph$a;->a(J)V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$10;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->c(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$10;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->c(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl$10;->a:Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;->d(Lcom/alibaba/android/calendar/fragment/CalendarFragmentImpl;)V

    .line 240
    :cond_1
    return-void
.end method
