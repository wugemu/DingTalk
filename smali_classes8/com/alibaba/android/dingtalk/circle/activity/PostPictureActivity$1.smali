.class final Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "PostPictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$1;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 200
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    const-string/jumbo v4, "circle_on_post_changed"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 206
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 207
    .local v3, "postObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    if-eqz v3, :cond_0

    .line 211
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$1;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$1;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 212
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$1;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;

    .line 213
    .local v2, "photoObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;
    if-eqz v2, :cond_2

    iget-object v5, v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;->postObjectTag:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    if-eqz v5, :cond_2

    .line 214
    iget-object v1, v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;->postObjectTag:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 215
    .local v1, "p":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    .line 216
    iget-object v4, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->comments:Ljava/util/List;

    iput-object v4, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->comments:Ljava/util/List;

    .line 222
    .end local v1    # "p":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    .end local v2    # "photoObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;
    :cond_3
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$1;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;

    invoke-static {v4, v3}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    goto :goto_0

    .line 223
    .end local v3    # "postObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    :cond_4
    const-string/jumbo v4, "circle_on_delete_post"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 224
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$1;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->finish()V

    goto :goto_0
.end method
