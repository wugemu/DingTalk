.class final Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$5$1;
.super Ljava/lang/Object;
.source "SendNormalRedPacketsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$5;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$5;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$5$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 184
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$5$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$5;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$5;->d:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->e(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;)Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCongsEdt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCongsEdt;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 185
    .local v5, "conf":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$5$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$5;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$5;->d:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->e(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;)Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCongsEdt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCongsEdt;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$5$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$5;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$5;->d:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$5$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$5;

    iget v1, v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$5;->b:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->b(I)V

    .line 190
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$5$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$5;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$5;->d:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$5$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$5;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$5;->c:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$5$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$5;

    iget v6, v6, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment$5;->b:I

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;I)V

    .line 191
    return-void
.end method
