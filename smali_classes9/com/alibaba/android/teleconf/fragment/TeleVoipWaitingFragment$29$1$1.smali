.class final Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1$1;
.super Ljava/lang/Object;
.source "TeleVoipWaitingFragment.java"

# interfaces
.implements Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 448
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "voip_callee_quick_reply_custom_message_touched"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 449
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 450
    .local v0, "toUser":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->u(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;

    move-result-object v1

    .line 3109
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 450
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 451
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->v(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 452
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->w(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 453
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->x(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 455
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1;

    iget-object v4, v4, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29;

    iget-object v4, v4, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->u(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;

    move-result-object v4

    .line 4109
    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 455
    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 456
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->f(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V

    .line 457
    return-void
.end method

.method public final a(Leux;)V
    .locals 8
    .param p1, "message"    # Leux;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 428
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "voip_callee_quick_reply_exist_message_touched"

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 429
    if-eqz p1, :cond_0

    .line 430
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 432
    .local v2, "msgObj":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "REJMsgID"

    .line 1018
    iget-object v4, p1, Leux;->b:Ljava/lang/String;

    .line 432
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 438
    new-instance v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;-><init>()V

    .line 439
    .local v1, "messageObject":Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    const/4 v3, 0x1

    iput v3, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    .line 2014
    iget-object v3, p1, Leux;->a:Ljava/lang/String;

    .line 440
    iput-object v3, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    .line 441
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1;

    iget-object v4, v4, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29;

    iget-object v4, v4, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->u(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;

    move-result-object v4

    .line 2109
    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 441
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v1, v6}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(JLcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;Lcma;)V

    .line 443
    .end local v1    # "messageObject":Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    .end local v2    # "msgObj":Lorg/json/JSONObject;
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->f(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V

    .line 444
    return-void

    .line 433
    .restart local v2    # "msgObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
