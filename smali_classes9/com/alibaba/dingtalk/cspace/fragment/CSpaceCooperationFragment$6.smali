.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$6;
.super Ljava/lang/Object;
.source "CSpaceCooperationFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->a(Ljava/util/List;)V
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
        "Lgit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    .prologue
    .line 818
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$6;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 818
    check-cast p1, Lgit;

    .line 1821
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$6;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    .line 2051
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 1821
    if-eqz v0, :cond_1

    .line 1824
    if-eqz p1, :cond_0

    .line 1825
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    iget-object v1, p1, Lgit;->a:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lgit;->k:Ljava/lang/Integer;

    .line 3033
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 1825
    invoke-virtual {v0, v1, v2}, Lfzv;->a(Ljava/lang/String;I)V

    .line 1826
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v1

    iget-object v0, p1, Lgit;->a:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p1, Lgit;->j:Lgjb;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x6

    iget-object v4, p1, Lgit;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lfzv;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1827
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    iget-object v1, p1, Lgit;->a:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lgit;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lfzv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    iget-object v1, p1, Lgit;->a:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lgit;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lfzv;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$6;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1831
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$6;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1832
    const/16 v1, 0xc8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1833
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1834
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$6;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->sendMessage(Landroid/os/Message;)Z

    .line 818
    :cond_1
    return-void

    .line 1826
    :cond_2
    iget-object v0, p1, Lgit;->j:Lgjb;

    iget-object v0, v0, Lgjb;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 845
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$6;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 846
    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0xc9

    iput v2, v1, Landroid/os/Message;->what:I

    .line 847
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 848
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "space_request_error_code_key"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    const-string/jumbo v2, "space_request_error_message_key"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 851
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$6;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    invoke-virtual {v2, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->sendMessage(Landroid/os/Message;)Z

    .line 852
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 841
    return-void
.end method
