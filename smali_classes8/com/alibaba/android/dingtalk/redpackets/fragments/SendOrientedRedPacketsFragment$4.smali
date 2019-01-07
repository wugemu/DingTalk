.class final Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$4;
.super Ljava/lang/Object;
.source "SendOrientedRedPacketsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$4;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;

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
    .line 217
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$4;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;->e(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;)Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 218
    const-wide/16 v0, 0x0

    .line 223
    .local v0, "singleMoney":D
    :goto_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$4;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;->a(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v0

    const-wide v6, 0x41086a0000000000L    # 200000.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 224
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$4;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;

    sget v5, Lcaj$f;->redpackest_max_money:I

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcms;->a(Ljava/lang/String;)V

    .line 229
    :goto_1
    return-void

    .line 220
    .end local v0    # "singleMoney":D
    :cond_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$4;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;->e(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;)Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .restart local v0    # "singleMoney":D
    goto :goto_0

    .line 226
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$4;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;->a(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-double v4, v4

    mul-double v2, v0, v4

    .line 227
    .local v2, "totalMoney":D
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$4;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;->f(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;)Lcbj$a;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lcbj$a;->a(D)V

    goto :goto_1
.end method
