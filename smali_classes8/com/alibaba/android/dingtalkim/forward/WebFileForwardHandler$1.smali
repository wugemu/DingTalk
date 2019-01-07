.class final Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler$1;
.super Ljava/lang/Object;
.source "WebFileForwardHandler.java"

# interfaces
.implements Ldhy$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;->share2SingleConversationImpl(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler$1;->c:Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler$1;->b:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public final a(Landroid/widget/EditText;)V
    .locals 1
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler$1;->c:Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;->resetAppendHint(Landroid/widget/EditText;)V

    .line 84
    return-void
.end method

.method public final a(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler$1;->c:Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;->fillForwardTip(Landroid/widget/TextView;)V

    .line 79
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1, "appendInfo"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler$1;->c:Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;->mMsgForwardStatistics:Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler$1;->c:Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;->mMsgForwardStatistics:Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;->forwardMsgStatistics()V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler$1;->c:Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler$1;->b:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, v1, v2, p1}, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;->access$000(Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    .line 69
    return-void
.end method
