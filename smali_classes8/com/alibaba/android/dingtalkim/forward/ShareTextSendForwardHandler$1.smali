.class final Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$1;
.super Ljava/lang/Object;
.source "ShareTextSendForwardHandler.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->handle(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/ArrayList;)V
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

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$1;->c:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$1;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 90
    .line 1093
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 1094
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$1;->c:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$1;->b:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->access$000(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/ArrayList;)V

    .line 90
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 105
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$1;->c:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$1;->b:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->access$000(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/ArrayList;)V

    .line 106
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 100
    return-void
.end method
