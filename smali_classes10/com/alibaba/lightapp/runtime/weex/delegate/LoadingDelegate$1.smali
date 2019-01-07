.class Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate$1;
.super Ljava/lang/Object;
.source "LoadingDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->showLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->access$000(Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->access$000(Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->access$000(Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->access$100(Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;)Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate$ICallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate$ICallback;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->access$100(Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;)Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate$ICallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate$ICallback;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "\u52a0\u8f7d\u4e2d..."

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->access$002(Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 60
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->access$202(Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;J)J

    goto :goto_0
.end method
