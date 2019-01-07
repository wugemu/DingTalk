.class final Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$10;
.super Ljava/lang/Object;
.source "SendRandomRedPacketsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$10;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 346
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$10;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->p:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;->getTextDouble()D

    move-result-wide v4

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$10;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->r:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;->getTextCount()D

    move-result-wide v4

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$10;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->r:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;

    .line 347
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;->getTextCount()D

    move-result-wide v4

    const-wide v6, 0x407f400000000000L    # 500.0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    .line 348
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$10;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->p:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 349
    .local v0, "money":D
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$10;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->r:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;->getTextCount()D

    move-result-wide v4

    div-double v2, v0, v4

    .line 350
    .local v2, "perMoney":D
    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_2

    .line 351
    const-wide v4, 0x41086a0000000000L    # 200000.0

    cmpl-double v4, v0, v4

    if-lez v4, :cond_1

    .line 352
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$10;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    sget v5, Lcaj$f;->redpackest_max_money:I

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcms;->a(Ljava/lang/String;)V

    .line 363
    .end local v0    # "money":D
    .end local v2    # "perMoney":D
    :cond_0
    :goto_0
    return-void

    .line 354
    .restart local v0    # "money":D
    .restart local v2    # "perMoney":D
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$10;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->e(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;)Lcbj$a;

    move-result-object v4

    invoke-interface {v4, v0, v1}, Lcbj$a;->a(D)V

    goto :goto_0

    .line 358
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$10;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    sget v5, Lcaj$f;->redpackets_minest_limit:I

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcms;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method
