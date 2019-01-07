.class final Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1;
.super Ljava/lang/Object;
.source "Single2MultipleForwardHandler.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;->share2SingleConversationImpl(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V
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
        "Lcko;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1;->c:Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1;->b:Ljava/util/List;

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
    .line 34
    check-cast p1, Lcko;

    .line 1037
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1041
    if-nez p1, :cond_1

    .line 1042
    sget v0, Lctk$i;->dt_im_forward_permission_check_error_none_result:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1048
    :cond_0
    :goto_0
    return-void

    .line 2016
    :cond_1
    iget-boolean v0, p1, Lcko;->a:Z

    .line 1046
    if-nez v0, :cond_2

    .line 2024
    iget-object v0, p1, Lcko;->b:Ljava/lang/String;

    .line 1047
    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1051
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1;->b:Ljava/util/List;

    new-instance v2, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1$1;-><init>(Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1;)V

    invoke-static {v0, v1, v2}, Ldhy;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/List;Ldhy$b;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 80
    return-void
.end method
