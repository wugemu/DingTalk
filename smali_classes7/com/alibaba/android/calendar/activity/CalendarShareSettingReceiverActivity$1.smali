.class final Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity$1;
.super Ljava/lang/Object;
.source "CalendarShareSettingReceiverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 34
    iput-object p1, p0, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity$1;->a:Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity$1;->a:Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;

    invoke-static {v2}, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;->a(Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v0, p3, v2

    .line 38
    .local v0, "adapterPosition":I
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity$1;->a:Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;

    invoke-static {v2}, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;->b(Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;)Lcom/alibaba/android/calendar/adapter/CalendarShareListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/calendar/adapter/CalendarShareListAdapter;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity$1;->a:Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;

    invoke-static {v2}, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;->b(Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;)Lcom/alibaba/android/calendar/adapter/CalendarShareListAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/android/calendar/adapter/CalendarShareListAdapter;->a(I)Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;

    move-result-object v1

    .line 42
    .local v1, "item":Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;
    if-eqz v1, :cond_0

    .line 43
    iget-object v2, p0, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity$1;->a:Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;

    invoke-static {v2}, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;->c(Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;)Lapl$a;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity$1;->a:Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;

    invoke-static {v3}, Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;->c(Lcom/alibaba/android/calendar/activity/CalendarShareSettingReceiverActivity;)Lapl$a;

    move-result-object v3

    invoke-interface {v3}, Lapl$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lapl$a;->a(Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;Ljava/lang/String;)V

    goto :goto_0
.end method
