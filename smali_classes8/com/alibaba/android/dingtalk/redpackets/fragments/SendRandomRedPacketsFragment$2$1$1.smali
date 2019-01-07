.class final Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$2$1$1;
.super Ljava/lang/Object;
.source "SendRandomRedPacketsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$2$1;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$2$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$2$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$2$1;

    .prologue
    .line 466
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$2$1$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 469
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 470
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$2$1$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$2$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$2$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$2;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$2;->d:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 471
    const-string/jumbo v3, "balance_enable"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$2$1$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$2$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$2$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$2;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$2;->b:D

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$2$1$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$2$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$2$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$2;

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$2;->c:D

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 472
    const-string/jumbo v1, "balance_quota"

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$2$1$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$2$1;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$2$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$2;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$2;->b:D

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 474
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$2$1$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$2$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$2$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$2;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$2;->d:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 475
    return-void

    .line 471
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
