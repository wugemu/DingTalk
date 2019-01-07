.class public final Lbjj$1;
.super Ljava/lang/Object;
.source "ConversationUtil.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbjj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lbjj$1;->a:Landroid/app/Activity;

    iput-object p2, p0, Lbjj$1;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iput-object p3, p0, Lbjj$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lbjj$1;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const-wide/16 v0, 0x0

    .line 34
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1037
    iget-object v2, p0, Lbjj$1;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1040
    if-eqz p1, :cond_2

    .line 1041
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v2

    sget-object v3, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->QUIT:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-eq v2, v3, :cond_2

    .line 1042
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v2

    sget-object v3, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->KICKOUT:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-eq v2, v3, :cond_2

    .line 1043
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v2

    sget-object v3, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->DISBAND:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-eq v2, v3, :cond_2

    .line 1045
    iget-object v2, p0, Lbjj$1;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1046
    iget-object v2, p0, Lbjj$1;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->getReferenceId()Ljava/lang/String;

    move-result-object v2

    .line 1109
    invoke-static {v2, v0, v1}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1048
    :cond_0
    iget-object v2, p0, Lbjj$1;->a:Landroid/app/Activity;

    iget-object v3, p0, Lbjj$1;->c:Ljava/lang/String;

    .line 1758
    if-eqz v2, :cond_1

    .line 1761
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1762
    const-string/jumbo v5, "anchor_id"

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1763
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 1049
    :cond_1
    :goto_0
    return-void

    .line 1050
    :cond_2
    const-string/jumbo v0, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laxp$i;->ding_conversation_not_exist:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
