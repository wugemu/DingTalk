.class final Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$4;
.super Ljava/lang/Object;
.source "BaseScheduleActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$4;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 181
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$4;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->b(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 182
    return-void
.end method

.method public final a(FF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 160
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$4;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    iget-object v0, v0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->a:Landroid/widget/EditText;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-static {v0, v1, v2, v3}, Lawl;->a(Landroid/view/View;III)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$4;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    iget-object v0, v0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->a:Landroid/widget/EditText;

    .line 161
    invoke-static {v0}, Lawl;->a(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$4;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->b(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$4;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    iget-object v0, v0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->c:Landroid/widget/EditText;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-static {v0, v1, v2, v3}, Lawl;->a(Landroid/view/View;III)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$4;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    iget-object v0, v0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->c:Landroid/widget/EditText;

    .line 168
    invoke-static {v0}, Lawl;->a(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$4;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->b(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method
