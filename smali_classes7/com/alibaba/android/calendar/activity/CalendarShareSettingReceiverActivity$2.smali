.class final Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity$2;
.super Ljava/lang/Object;
.source "CalendarShareSettingReceiverActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity$2;->a:Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity$2;->a:Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;->c(Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;)Lapl$a;

    move-result-object v0

    invoke-interface {v0}, Lapl$a;->a()V

    .line 117
    return-void
.end method
