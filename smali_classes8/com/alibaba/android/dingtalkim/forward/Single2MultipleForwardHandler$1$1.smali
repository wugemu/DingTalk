.class final Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1$1;
.super Ljava/lang/Object;
.source "Single2MultipleForwardHandler.java"

# interfaces
.implements Ldhy$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1$1;->a:Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public final a(Landroid/widget/EditText;)V
    .locals 1
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1$1;->a:Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1;->c:Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;->resetAppendHint(Landroid/widget/EditText;)V

    .line 73
    return-void
.end method

.method public final a(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1$1;->a:Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1;->c:Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;->fillForwardTip(Landroid/widget/TextView;)V

    .line 68
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1, "appendInfo"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1$1;->a:Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1;->c:Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1$1;->a:Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1$1;->a:Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1;->b:Ljava/util/List;

    invoke-virtual {v0, v1, v2, p1}, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;->share2Conversations(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/List;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1$1;->a:Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1;->c:Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;->mMsgForwardStatistics:Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1$1;->a:Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1;->c:Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;->mMsgForwardStatistics:Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;->forwardMsgStatistics()V

    .line 58
    :cond_0
    return-void
.end method