.class final Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$1;
.super Ljava/lang/Object;
.source "BaseForwardHandler.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->handle(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/ArrayList;)V
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

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$1;->c:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$1;->b:Ljava/util/ArrayList;

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
    const/4 v3, 0x0

    .line 63
    check-cast p1, Lcko;

    .line 1066
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1070
    if-nez p1, :cond_1

    .line 1071
    sget v0, Lctk$i;->dt_im_forward_permission_check_error_none_result:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1080
    :cond_0
    :goto_0
    return-void

    .line 2016
    :cond_1
    iget-boolean v0, p1, Lcko;->a:Z

    .line 1075
    if-nez v0, :cond_2

    .line 2024
    iget-object v0, p1, Lcko;->b:Ljava/lang/String;

    .line 1076
    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1079
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$1;->c:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->needShowBatchForwardTipsDialog()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1080
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$1;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$1;->c:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    invoke-static {v0, v1, v3, v2}, Ldhy;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/List;Ljava/lang/String;Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;)V

    goto :goto_0

    .line 1082
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$1;->c:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$1;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->share2Conversations(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 90
    return-void
.end method
