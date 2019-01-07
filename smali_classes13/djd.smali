.class public final Ldjd;
.super Ljava/lang/Object;
.source "CombinePraiseController.java"


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_chat_combine_praises"

    invoke-virtual {v0, v1}, Lchx;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    iput-boolean v2, p0, Ldjd;->a:Z

    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "im_chat_fold_likes_enable"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ldjd;->a:Z

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;)Z
    .locals 6
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v0, 0x1

    .line 112
    if-nez p0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v0

    .line 116
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->recallStatus()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 120
    invoke-static {p0}, Ldkc;->z(Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v2

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 124
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
