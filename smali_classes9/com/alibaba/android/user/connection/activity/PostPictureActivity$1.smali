.class final Lcom/alibaba/android/user/connection/activity/PostPictureActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "PostPictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/PostPictureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/PostPictureActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/PostPictureActivity;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$1;->a:Lcom/alibaba/android/user/connection/activity/PostPictureActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 204
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    const-string/jumbo v4, "connection_on_post_changed"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 210
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 211
    .local v3, "postObject":Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    if-eqz v3, :cond_0

    .line 215
    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$1;->a:Lcom/alibaba/android/user/connection/activity/PostPictureActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->a(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$1;->a:Lcom/alibaba/android/user/connection/activity/PostPictureActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->a(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 216
    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$1;->a:Lcom/alibaba/android/user/connection/activity/PostPictureActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->a(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;

    .line 217
    .local v2, "photoObject":Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;
    if-eqz v2, :cond_2

    iget-object v5, v2, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->postObjectTag:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    if-eqz v5, :cond_2

    .line 218
    iget-object v1, v2, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->postObjectTag:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 219
    .local v1, "p":Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    iget-wide v6, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    iget-wide v8, v3, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    .line 220
    iget-object v4, v3, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->comments:Ljava/util/List;

    iput-object v4, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->comments:Ljava/util/List;

    .line 226
    .end local v1    # "p":Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    .end local v2    # "photoObject":Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;
    :cond_3
    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$1;->a:Lcom/alibaba/android/user/connection/activity/PostPictureActivity;

    invoke-static {v4, v3}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->a(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    goto :goto_0

    .line 227
    .end local v3    # "postObject":Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    :cond_4
    const-string/jumbo v4, "connection_on_delete_post"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 228
    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$1;->a:Lcom/alibaba/android/user/connection/activity/PostPictureActivity;

    invoke-virtual {v4}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->finish()V

    goto :goto_0
.end method
