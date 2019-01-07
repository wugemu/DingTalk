.class final Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$11;
.super Ljava/lang/Object;
.source "NewMsgUnreadActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    .prologue
    .line 669
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 672
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->showLoadingDialog()V

    .line 673
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->o(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->p(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 676
    :cond_0
    return v1
.end method
