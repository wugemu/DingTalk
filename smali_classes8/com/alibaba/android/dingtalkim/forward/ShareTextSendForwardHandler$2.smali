.class final Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$2;
.super Ljava/lang/Object;
.source "ShareTextSendForwardHandler.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->share2SingleConversation(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$2;->d:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$2;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$2;->b:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 119
    .line 1122
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$2;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 1123
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$2;->d:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$2;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$2;->b:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$2;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->access$100(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$2;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 134
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$2;->d:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$2;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$2;->b:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$2;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->access$100(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 129
    return-void
.end method
