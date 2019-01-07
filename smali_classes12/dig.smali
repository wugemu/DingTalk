.class public final Ldig;
.super Ljava/lang/Object;
.source "TopicEmotionGrayUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 6

    .prologue
    .line 19
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v3

    sget v4, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v3, v4, :cond_1

    .line 22
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v3

    const-string/jumbo v4, "im_chat_topic_store_enable"

    .line 1083
    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 23
    .local v0, "featureOpen":Z
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    const-string/jumbo v4, "im_chat_gif_store_enable"

    .line 24
    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v2

    .line 25
    .local v2, "orgEnableTopicEmotion":Z
    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 31
    .end local v0    # "featureOpen":Z
    .end local v2    # "orgEnableTopicEmotion":Z
    .local v1, "isOpen":Z
    :goto_0
    return v1

    .line 28
    .end local v1    # "isOpen":Z
    .restart local v0    # "featureOpen":Z
    .restart local v2    # "orgEnableTopicEmotion":Z
    :cond_1
    const/4 v1, 0x1

    .restart local v1    # "isOpen":Z
    goto :goto_0
.end method
