.class public Lcom/alibaba/android/dingtalk/live/controller/LiveChoooseInjecter;
.super Ljava/lang/Object;
.source "LiveChoooseInjecter.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;


# static fields
.field private static final serialVersionUID:J = -0x5456bdc87c68f7a3L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doLogic(Landroid/app/Activity;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "objects"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 22
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v3, p2

    if-gtz v3, :cond_1

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    aget-object v3, p2, v4

    instance-of v3, v3, Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 28
    aget-object v2, p2, v4

    check-cast v2, Landroid/content/Intent;

    .line 29
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "conversation"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 30
    .local v1, "data":Ljava/io/Serializable;
    instance-of v3, v1, Lcom/alibaba/wukong/im/Conversation;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 33
    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 34
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v3

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/dingtalk/live/controller/LiveChoooseInjecter$1;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalk/live/controller/LiveChoooseInjecter$1;-><init>(Lcom/alibaba/android/dingtalk/live/controller/LiveChoooseInjecter;)V

    invoke-virtual {v3, p1, v4, v5}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 41
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method
