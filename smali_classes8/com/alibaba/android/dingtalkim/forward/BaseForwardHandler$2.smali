.class final Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$2;
.super Ljava/lang/Object;
.source "BaseForwardHandler.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->forward2Recipient(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$2;->b:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$2;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$2;->b:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->onFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$2;->b:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$2;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->checkComplete(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Z)V

    .line 158
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 148
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1151
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$2;->b:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$2;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0, v1, p1}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->access$000(Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;)V

    .line 148
    return-void
.end method
