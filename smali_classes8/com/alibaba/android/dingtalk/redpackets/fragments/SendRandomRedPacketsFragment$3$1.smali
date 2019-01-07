.class final Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$3$1;
.super Ljava/lang/Object;
.source "SendRandomRedPacketsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$3;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$3$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 492
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$3$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$3;->d:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->q:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCongsEdt;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCongsEdt;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 493
    .local v5, "conf":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$3$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$3;->d:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->r:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 494
    .local v7, "size":I
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$3$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$3;->d:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->q:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCongsEdt;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCongsEdt;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$3$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$3;->d:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$3$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$3;

    iget v1, v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$3;->b:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->b(I)V

    .line 499
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$3$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$3;->d:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$3$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$3;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$3;->c:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 500
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$3$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$3;

    iget v6, v6, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$3;->b:I

    .line 499
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->b(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;I)V

    .line 501
    return-void
.end method
