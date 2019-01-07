.class Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate$2;
.super Ljava/lang/Object;
.source "LoadingDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->hideLoading()V
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
    .line 78
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate$2;->this$0:Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate$2;->this$0:Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->access$000(Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate$2;->this$0:Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->access$000(Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 83
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate$2;->this$0:Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;->access$002(Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 85
    :cond_0
    return-void
.end method
