.class final Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity$4;
.super Ljava/lang/Object;
.source "ScheduleDetailActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity$4;->a:Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 331
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-ltz p3, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity$4;->a:Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->b(Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity$4;->a:Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->b(Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoz$a;

    .line 333
    .local v0, "item":Laoz$a;
    if-eqz v0, :cond_0

    .line 1072
    iget v1, v0, Laoz$a;->a:I

    .line 334
    packed-switch v1, :pswitch_data_0

    .line 346
    .end local v0    # "item":Laoz$a;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity$4;->a:Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->c(Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 347
    return-void

    .line 336
    .restart local v0    # "item":Laoz$a;
    :pswitch_0
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity$4;->a:Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->a(Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;)Lapr$a;

    move-result-object v1

    invoke-interface {v1}, Lapr$a;->d()V

    goto :goto_0

    .line 339
    :pswitch_1
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity$4;->a:Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->a(Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;)Lapr$a;

    move-result-object v1

    invoke-interface {v1}, Lapr$a;->e()V

    goto :goto_0

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
