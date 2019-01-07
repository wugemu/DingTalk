.class final Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$3;
.super Ljava/lang/Object;
.source "SendNormalRedPacketsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$3;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$3;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->c(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;)Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;->getTextDouble()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$3;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->c(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;)Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;->getTextDouble()D

    move-result-wide v0

    const-wide v2, 0x41086a0000000000L    # 200000.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$3;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;

    sget v1, Lcaj$f;->redpackest_max_money:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$3;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->d(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;)Lcbj$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$3;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->c(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;)Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;->getTextDouble()D

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcbj$a;->a(D)V

    goto :goto_0
.end method
