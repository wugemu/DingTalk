.class final Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$9;
.super Landroid/content/BroadcastReceiver;
.source "CircleTimelineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    .prologue
    .line 776
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$9;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 779
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 780
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 784
    :cond_1
    const-string/jumbo v3, "circle_on_create_post"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 785
    const-string/jumbo v3, "circle_on_create_post"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 786
    .local v2, "postObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    if-eqz v2, :cond_0

    .line 787
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$9;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->save2DbAsync(Landroid/app/Activity;)V

    .line 788
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$9;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v3, v2}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    goto :goto_0

    .line 790
    .end local v2    # "postObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    :cond_2
    const-string/jumbo v3, "circle_on_uploading_photos"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 791
    sget v3, Lbpu$f;->dt_circle_uploading_toast:I

    invoke-static {v3}, Lcms;->a(I)V

    goto :goto_0

    .line 792
    :cond_3
    const-string/jumbo v3, "circle_on_read_notice"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 793
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$9;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->b(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Lbnq;

    move-result-object v3

    .line 1244
    iget-object v4, v3, Lbnq;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v5, :cond_4

    .line 1245
    const-string/jumbo v3, "unexpected read notice happen!"

    .line 2076
    invoke-static {v6, v3}, Lbqh;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 1249
    :cond_4
    :try_start_0
    iget-object v4, v3, Lbnq;->a:Ljava/util/List;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1250
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lbnq;->notifyItemRemoved(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1251
    :catch_0
    move-exception v3

    .line 1252
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "readNotice has encounter an error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3076
    invoke-static {v6, v3}, Lbqh;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 794
    :cond_5
    const-string/jumbo v3, "action_comments_changed"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 795
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$9;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v3, p2}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 796
    :cond_6
    const-string/jumbo v3, "circle_action_long_text_expand"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 797
    const-string/jumbo v3, "data"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 798
    .local v1, "data":Ljava/io/Serializable;
    instance-of v3, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    if-eqz v3, :cond_0

    .line 799
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$9;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    check-cast v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .end local v1    # "data":Ljava/io/Serializable;
    invoke-static {v3, v1}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->b(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    goto/16 :goto_0
.end method
