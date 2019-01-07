.class public Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$UseEmotionPackageDelegate;
.super Ljava/lang/Object;
.source "EmotionPackageDetailActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UseEmotionPackageDelegate"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doLogic(Landroid/app/Activity;[Ljava/lang/Object;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "params"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 486
    if-eqz p1, :cond_0

    .line 487
    invoke-static {p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_0

    instance-of v5, p1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v5, :cond_0

    if-eqz p2, :cond_0

    array-length v5, p2

    if-eqz v5, :cond_0

    aget-object v5, p2, v6

    instance-of v5, v5, Landroid/content/Intent;

    if-nez v5, :cond_1

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 494
    :cond_1
    aget-object v4, p2, v6

    check-cast v4, Landroid/content/Intent;

    .line 496
    .local v4, "intent":Landroid/content/Intent;
    :try_start_0
    const-string/jumbo v5, "intent_key_emotion_package_id"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 497
    .local v2, "emotionPackageId":J
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "conversation"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Conversation;

    .line 498
    .local v1, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v1, :cond_0

    .line 499
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 500
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "intent_key_use_emotion_package_id"

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 501
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v5

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v5, p1, v6, v0, v7}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 505
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    .end local v2    # "emotionPackageId":J
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 508
    return-void
.end method
