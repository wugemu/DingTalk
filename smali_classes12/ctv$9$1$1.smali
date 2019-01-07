.class final Lctv$9$1$1;
.super Ljava/lang/Object;
.source "AbsUserMsgHolder.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lctv$9$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lctv$9$1;


# direct methods
.method constructor <init>(Lctv$9$1;)V
    .locals 0
    .param p1, "this$2"    # Lctv$9$1;

    .prologue
    .line 362
    iput-object p1, p0, Lctv$9$1$1;->a:Lctv$9$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 365
    const-string/jumbo v1, "im_robot_user_id"

    iget-object v2, p0, Lctv$9$1$1;->a:Lctv$9$1;

    iget-object v2, v2, Lctv$9$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 366
    iget-object v1, p0, Lctv$9$1$1;->a:Lctv$9$1;

    iget-object v1, v1, Lctv$9$1;->b:Lctv$9;

    iget-object v1, v1, Lctv$9;->e:Lctv;

    iget-object v1, v1, Lctv;->d:Landroid/app/Activity;

    instance-of v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Lctv$9$1$1;->a:Lctv$9$1;

    iget-object v1, v1, Lctv$9$1;->b:Lctv$9;

    iget-object v1, v1, Lctv$9;->e:Lctv;

    iget-object v0, v1, Lctv;->d:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 368
    .local v0, "chatMsgBaseActivity":Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 369
    const-string/jumbo v1, "conversation"

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 372
    .end local v0    # "chatMsgBaseActivity":Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;
    :cond_0
    return-object p1
.end method
