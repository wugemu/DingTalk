.class final Lcom/alibaba/android/dingtalkim/forward/MessageForwardMailStyleHandler$1;
.super Ljava/lang/Object;
.source "MessageForwardMailStyleHandler.java"

# interfaces
.implements Ldhy$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/MessageForwardMailStyleHandler;->share2SingleConversationImpl(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/forward/MessageForwardMailStyleHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/MessageForwardMailStyleHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/forward/MessageForwardMailStyleHandler;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardMailStyleHandler$1;->c:Lcom/alibaba/android/dingtalkim/forward/MessageForwardMailStyleHandler;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardMailStyleHandler$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardMailStyleHandler$1;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public final a(Landroid/widget/EditText;)V
    .locals 1
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardMailStyleHandler$1;->c:Lcom/alibaba/android/dingtalkim/forward/MessageForwardMailStyleHandler;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/forward/MessageForwardMailStyleHandler;->resetAppendHint(Landroid/widget/EditText;)V

    .line 103
    return-void
.end method

.method public final a(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardMailStyleHandler$1;->c:Lcom/alibaba/android/dingtalkim/forward/MessageForwardMailStyleHandler;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/forward/MessageForwardMailStyleHandler;->fillForwardTip(Landroid/widget/TextView;)V

    .line 98
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1, "appendInfo"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardMailStyleHandler$1;->c:Lcom/alibaba/android/dingtalkim/forward/MessageForwardMailStyleHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardMailStyleHandler$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardMailStyleHandler$1;->b:Ljava/util/List;

    invoke-virtual {v0, v1, v2, p1}, Lcom/alibaba/android/dingtalkim/forward/MessageForwardMailStyleHandler;->share2Conversations(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/List;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardMailStyleHandler$1;->c:Lcom/alibaba/android/dingtalkim/forward/MessageForwardMailStyleHandler;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardMailStyleHandler;->mMsgForwardStatistics:Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardMailStyleHandler$1;->c:Lcom/alibaba/android/dingtalkim/forward/MessageForwardMailStyleHandler;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/forward/MessageForwardMailStyleHandler;->mMsgForwardStatistics:Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;->forwardMsgStatistics()V

    .line 89
    :cond_0
    return-void
.end method
