.class final Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$8;
.super Ljava/lang/Object;
.source "ShareTypeForwardHandler.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->getConversationMember(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$8;->b:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$8;->a:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 294
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1297
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$8;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1298
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$8;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 294
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$8;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$8;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 305
    return-void
.end method
