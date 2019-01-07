.class final Lcom/alibaba/android/calendar/activity/EditScheduleActivity$1;
.super Ljava/lang/Object;
.source "EditScheduleActivity.java"

# interfaces
.implements Lapq$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/activity/EditScheduleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/activity/EditScheduleActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/activity/EditScheduleActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/activity/EditScheduleActivity;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alibaba/android/calendar/activity/EditScheduleActivity$1;->a:Lcom/alibaba/android/calendar/activity/EditScheduleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 28
    .line 1054
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/EditScheduleActivity$1;->a:Lcom/alibaba/android/calendar/activity/EditScheduleActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 33
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/EditScheduleActivity$1;->a:Lcom/alibaba/android/calendar/activity/EditScheduleActivity;

    iget-object v0, v0, Lcom/alibaba/android/calendar/activity/EditScheduleActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "isChoose"    # Z

    .prologue
    .line 37
    .line 2054
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/EditScheduleActivity$1;->a:Lcom/alibaba/android/calendar/activity/EditScheduleActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 37
    if-nez v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/EditScheduleActivity$1;->a:Lcom/alibaba/android/calendar/activity/EditScheduleActivity;

    iget-object v0, v0, Lcom/alibaba/android/calendar/activity/EditScheduleActivity;->b:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 46
    .line 3054
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/EditScheduleActivity$1;->a:Lcom/alibaba/android/calendar/activity/EditScheduleActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 46
    if-nez v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/EditScheduleActivity$1;->a:Lcom/alibaba/android/calendar/activity/EditScheduleActivity;

    iget-object v0, v0, Lcom/alibaba/android/calendar/activity/EditScheduleActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
