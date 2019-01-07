.class final Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity$5;
.super Ljava/lang/Object;
.source "ScheduleDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

.field final synthetic c:Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;Ljava/util/List;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity$5;->c:Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;

    iput-object p2, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity$5;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity$5;->b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 397
    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity$5;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity$5;->b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-virtual {v1, p2}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcng;

    if-eqz v1, :cond_0

    .line 404
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity$5;->b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-virtual {v1, p2}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcng;

    .line 405
    .local v0, "menuObject":Lcng;
    iget v1, v0, Lcng;->a:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 407
    :pswitch_0
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity$5;->c:Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->a(Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;)Lapr$a;

    move-result-object v1

    invoke-interface {v1}, Lapr$a;->f()V

    goto :goto_0

    .line 410
    :pswitch_1
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity$5;->c:Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;->a(Lcom/alibaba/android/calendar/activity/ScheduleDetailActivity;)Lapr$a;

    move-result-object v1

    invoke-interface {v1}, Lapr$a;->j()V

    goto :goto_0

    .line 405
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
