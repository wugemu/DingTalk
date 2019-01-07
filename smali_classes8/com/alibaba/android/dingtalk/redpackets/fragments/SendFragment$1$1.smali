.class final Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$1$1;
.super Ljava/lang/Object;
.source "SendFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

.field final synthetic b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$1;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$1;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$1$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$1;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$1$1;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 348
    new-instance v0, Lcom/alipay/sdk/app/PayTask;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$1$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$1;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    .line 350
    .local v0, "alipay":Lcom/alipay/sdk/app/PayTask;
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$1$1;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->alipayOrderString:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, "result":Ljava/lang/String;
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 352
    .local v2, "msg":Landroid/os/Message;
    iput v5, v2, Landroid/os/Message;->what:I

    .line 353
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 354
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 355
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "cluster"

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$1$1;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 356
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 357
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$1$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$1;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;->a(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 358
    return-void
.end method
