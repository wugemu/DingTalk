.class final Lcom/alibaba/android/user/connection/activity/ConnectionActivity$9;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/ConnectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    .prologue
    .line 807
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$9;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 810
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 811
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 835
    :cond_0
    :goto_0
    return-void

    .line 815
    :cond_1
    const-string/jumbo v3, "circle_on_create_post"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 816
    const-string/jumbo v3, "circle_on_create_post"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 817
    .local v2, "postObject":Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    if-eqz v2, :cond_0

    .line 818
    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$9;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->save2DbAsync(Landroid/app/Activity;)V

    .line 819
    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$9;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v3, v2}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    goto :goto_0

    .line 821
    .end local v2    # "postObject":Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    :cond_2
    const-string/jumbo v3, "connection_on_uploading_photos"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 822
    sget v3, Lezg$l;->dt_circle_uploading_toast:I

    invoke-static {v3}, Lcms;->a(I)V

    goto :goto_0

    .line 823
    :cond_3
    const-string/jumbo v3, "connection_on_read_notice"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 824
    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$9;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->b(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lfce;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 825
    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$9;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->b(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lfce;

    move-result-object v3

    .line 1246
    iget-object v4, v3, Lfce;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v5, :cond_4

    .line 1247
    const-string/jumbo v3, "unexpected read notice happen!"

    .line 2060
    invoke-static {v6, v3}, Lffe;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 1251
    :cond_4
    :try_start_0
    iget-object v4, v3, Lfce;->a:Ljava/util/List;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1252
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lfce;->notifyItemRemoved(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1253
    :catch_0
    move-exception v3

    .line 1254
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "readNotice has encounter an error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3060
    invoke-static {v6, v3}, Lffe;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 827
    :cond_5
    const-string/jumbo v3, "action_comments_changed"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 828
    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$9;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v3, p2}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 829
    :cond_6
    const-string/jumbo v3, "circle_action_long_text_expand"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 830
    const-string/jumbo v3, "data"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 831
    .local v1, "data":Ljava/io/Serializable;
    instance-of v3, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    if-eqz v3, :cond_0

    .line 832
    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$9;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    check-cast v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .end local v1    # "data":Ljava/io/Serializable;
    invoke-static {v3, v1}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->b(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    goto/16 :goto_0
.end method
