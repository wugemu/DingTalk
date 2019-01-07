.class final Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6$1;
.super Ljava/lang/Object;
.source "ShareTypeForwardHandler.java"

# interfaces
.implements Ldhy$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6$1;->a:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method public final a(Landroid/widget/EditText;)V
    .locals 1
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6$1;->a:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6;->c:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->resetAppendHint(Landroid/widget/EditText;)V

    .line 224
    return-void
.end method

.method public final a(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6$1;->a:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6;->c:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->fillForwardTip(Landroid/widget/TextView;)V

    .line 219
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1, "appendInfo"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 206
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6$1;->a:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6;->c:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6$1;->a:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6$1;->a:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6;->b:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, v1, v2, p1}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->access$200(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6$1;->a:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6;->c:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mMsgForwardStatistics:Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6$1;->a:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$6;->c:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->mMsgForwardStatistics:Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;->forwardMsgStatistics()V

    .line 210
    :cond_0
    return-void
.end method
