.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$10;
.super Ljava/lang/Object;
.source "CSpaceCooperationFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->c(I)V
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
        "Lgip;",
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
    .line 377
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$10;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 377
    check-cast p1, Lgip;

    .line 1380
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$10;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-static {v0, v8}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;Z)Z

    .line 1381
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$10;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 1382
    if-nez p1, :cond_0

    .line 1383
    const/16 v0, 0x190

    iput v0, v2, Landroid/os/Message;->what:I

    .line 1384
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$10;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->sendMessage(Landroid/os/Message;)Z

    .line 1398
    :goto_0
    return-void

    .line 1387
    :cond_0
    iget-object v0, p1, Lgip;->a:Ljava/lang/Boolean;

    .line 2022
    invoke-static {v0, v8}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1387
    if-eqz v0, :cond_4

    .line 1388
    iget-object v0, p1, Lgip;->d:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lgip;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1389
    iget-object v0, p1, Lgip;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgit;

    .line 1390
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v1

    iget-object v4, v0, Lgit;->a:Ljava/lang/Long;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lgit;->k:Ljava/lang/Integer;

    .line 2033
    invoke-static {v5, v8}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v5

    .line 1390
    invoke-virtual {v1, v4, v5}, Lfzv;->a(Ljava/lang/String;I)V

    .line 1391
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v4

    iget-object v1, v0, Lgit;->a:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, v0, Lgit;->j:Lgjb;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_2
    const/4 v6, 0x6

    iget-object v7, v0, Lgit;->c:Ljava/lang/String;

    invoke-virtual {v4, v5, v1, v6, v7}, Lfzv;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1392
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v1

    iget-object v4, v0, Lgit;->a:Ljava/lang/Long;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lgit;->b:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lfzv;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v1

    iget-object v4, v0, Lgit;->a:Ljava/lang/Long;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lgit;->n:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v0, v8}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1393
    if-eqz v0, :cond_2

    const-string/jumbo v0, "1"

    :goto_3
    invoke-virtual {v1, v4, v0}, Lgqd;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1391
    :cond_1
    iget-object v1, v0, Lgit;->j:Lgjb;

    iget-object v1, v1, Lgjb;->b:Ljava/lang/String;

    goto :goto_2

    .line 1393
    :cond_2
    const-string/jumbo v0, "0"

    goto :goto_3

    .line 1396
    :cond_3
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1397
    const/16 v0, 0x64

    iput v0, v2, Landroid/os/Message;->what:I

    .line 1398
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$10;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1400
    :cond_4
    const/16 v0, 0x65

    iput v0, v2, Landroid/os/Message;->what:I

    .line 1401
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1402
    const-string/jumbo v1, "space_request_error_code_key"

    iget-object v3, p1, Lgip;->b:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    const-string/jumbo v1, "space_request_error_message_key"

    iget-object v3, p1, Lgip;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1405
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$10;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 416
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$10;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;Z)Z

    .line 417
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$10;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 418
    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0x65

    iput v2, v1, Landroid/os/Message;->what:I

    .line 419
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 420
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "space_request_error_code_key"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string/jumbo v2, "space_request_error_message_key"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 423
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$10;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    invoke-virtual {v2, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->sendMessage(Landroid/os/Message;)Z

    .line 424
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 412
    return-void
.end method
