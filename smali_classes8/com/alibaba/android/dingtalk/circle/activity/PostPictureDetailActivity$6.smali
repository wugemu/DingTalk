.class final Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "PostPictureDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity$6;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 167
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    const-string/jumbo v2, "circle_on_comment_sent_success"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 173
    const-string/jumbo v2, "circle_on_comment_sent_success"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 174
    .local v1, "postObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    if-eqz v1, :cond_0

    .line 175
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity$6;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Z)V

    goto :goto_0

    .line 177
    .end local v1    # "postObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    :cond_2
    const-string/jumbo v2, "circle_on_delete_post"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity$6;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->finish()V

    goto :goto_0
.end method
