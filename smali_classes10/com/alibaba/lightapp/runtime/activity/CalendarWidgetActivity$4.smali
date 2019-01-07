.class final Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity$4;
.super Ljava/lang/Object;
.source "CalendarWidgetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity$4;->a:Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 200
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 202
    .local v1, "intent":Landroid/content/Intent;
    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity$4;->a:Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;

    invoke-static {v11}, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->d(Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    move-result-object v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity$4;->a:Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;

    invoke-static {v11}, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->e(Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 203
    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity$4;->a:Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;

    .line 204
    invoke-static {v11}, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->d(Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    move-result-object v6

    check-cast v6, Lhoq$a;

    .line 206
    .local v6, "leftMVPView":Lhoq$a;
    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity$4;->a:Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;

    .line 207
    invoke-static {v11}, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->e(Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    move-result-object v7

    check-cast v7, Lhoq$a;

    .line 209
    .local v7, "rightMVPView":Lhoq$a;
    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity$4;->a:Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;

    invoke-static {v11}, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->f(Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;)I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_1

    .line 210
    invoke-interface {v6}, Lhoq$a;->d()Ljava/util/Calendar;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 211
    .local v8, "startDate":J
    invoke-interface {v7}, Lhoq$a;->d()Ljava/util/Calendar;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 214
    .local v4, "endDate":J
    const-string/jumbo v11, "start"

    invoke-virtual {v1, v11, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 215
    const-string/jumbo v11, "end"

    invoke-virtual {v1, v11, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 228
    .end local v4    # "endDate":J
    .end local v8    # "startDate":J
    :goto_0
    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity$4;->a:Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;

    const/4 v12, -0x1

    invoke-virtual {v11, v12, v1}, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->setResult(ILandroid/content/Intent;)V

    .line 240
    .end local v6    # "leftMVPView":Lhoq$a;
    .end local v7    # "rightMVPView":Lhoq$a;
    :cond_0
    :goto_1
    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity$4;->a:Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;

    invoke-virtual {v11}, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->finish()V

    .line 241
    return-void

    .line 217
    .restart local v6    # "leftMVPView":Lhoq$a;
    .restart local v7    # "rightMVPView":Lhoq$a;
    :cond_1
    invoke-interface {v6}, Lhoq$a;->d()Ljava/util/Calendar;

    move-result-object v0

    .line 218
    .local v0, "chosenCalendar":Ljava/util/Calendar;
    invoke-interface {v7}, Lhoq$a;->d()Ljava/util/Calendar;

    move-result-object v10

    .line 220
    .local v10, "tmpCalendar":Ljava/util/Calendar;
    const/16 v11, 0xb

    const/16 v12, 0xb

    invoke-virtual {v10, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v0, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 221
    const/16 v11, 0xc

    const/16 v12, 0xc

    invoke-virtual {v10, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v0, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 222
    const/16 v11, 0xd

    const/16 v12, 0xd

    invoke-virtual {v10, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v0, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 223
    const/16 v11, 0xe

    const/16 v12, 0xe

    invoke-virtual {v10, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v0, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 225
    const-string/jumbo v11, "chosen"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-virtual {v1, v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    .line 229
    .end local v0    # "chosenCalendar":Ljava/util/Calendar;
    .end local v6    # "leftMVPView":Lhoq$a;
    .end local v7    # "rightMVPView":Lhoq$a;
    .end local v10    # "tmpCalendar":Ljava/util/Calendar;
    :cond_2
    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity$4;->a:Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;

    invoke-static {v11}, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->d(Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 230
    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity$4;->a:Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;

    .line 231
    invoke-static {v11}, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->d(Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    move-result-object v6

    check-cast v6, Lhoq$a;

    .line 233
    .restart local v6    # "leftMVPView":Lhoq$a;
    invoke-interface {v6}, Lhoq$a;->d()Ljava/util/Calendar;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 235
    .local v2, "chosenDate":J
    const-string/jumbo v11, "chosen"

    invoke-virtual {v1, v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 237
    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity$4;->a:Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;

    const/4 v12, -0x1

    invoke-virtual {v11, v12, v1}, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1
.end method
