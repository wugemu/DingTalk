.class final Lbkp$2;
.super Ljava/lang/Object;
.source "TaskTransferHelper.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbkp;
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
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lbkp;


# direct methods
.method constructor <init>(Lbkp;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lbkp;

    .prologue
    .line 109
    iput-object p1, p0, Lbkp$2;->b:Lbkp;

    iput-object p2, p0, Lbkp$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 109
    .line 1112
    sget v0, Laxp$i;->dt_ding_transfer_task_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1113
    iget-object v0, p0, Lbkp$2;->b:Lbkp;

    invoke-static {v0}, Lbkp;->b(Lbkp;)Lcom/alibaba/wukong/Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Lbkp$2;->b:Lbkp;

    invoke-static {v0}, Lbkp;->b(Lbkp;)Lcom/alibaba/wukong/Callback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 1116
    :cond_0
    iget-object v0, p0, Lbkp$2;->b:Lbkp;

    invoke-static {v0}, Lbkp;->a(Lbkp;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbkp$2;->b:Lbkp;

    invoke-static {v0}, Lbkp;->a(Lbkp;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1117
    iget-object v0, p0, Lbkp$2;->b:Lbkp;

    invoke-static {v0}, Lbkp;->a(Lbkp;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 109
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 127
    iget-object v0, p0, Lbkp$2;->b:Lbkp;

    invoke-static {v0}, Lbkp;->a(Lbkp;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbkp$2;->b:Lbkp;

    invoke-static {v0}, Lbkp;->a(Lbkp;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lbkp$2;->b:Lbkp;

    invoke-static {v0}, Lbkp;->a(Lbkp;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 130
    :cond_0
    if-eqz p1, :cond_2

    const-string/jumbo v0, "431020"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 131
    iget-object v0, p0, Lbkp$2;->b:Lbkp;

    invoke-static {v0}, Lbkp;->a(Lbkp;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lbkp$2;->b:Lbkp;

    iget-object v1, p0, Lbkp$2;->a:Ljava/util/List;

    invoke-static {v0, p2, v1}, Lbkp;->a(Lbkp;Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 138
    .end local p2    # "reason":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 135
    .restart local p2    # "reason":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, ""

    if-nez p2, :cond_3

    .line 136
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laxp$i;->dt_ding_add_receiver_fail:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 135
    .end local p2    # "reason":Ljava/lang/String;
    :cond_3
    invoke-static {v0, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 123
    return-void
.end method
