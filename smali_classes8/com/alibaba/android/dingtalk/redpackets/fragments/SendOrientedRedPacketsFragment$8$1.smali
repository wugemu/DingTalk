.class final Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$8$1;
.super Ljava/lang/Object;
.source "SendOrientedRedPacketsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$8;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$8;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$8$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 386
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v3, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$8$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$8;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$8;->d:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;->a(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 388
    .local v7, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-wide v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 390
    .end local v7    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$8$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$8;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$8;->d:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;->g(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;)Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCongsEdt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCongsEdt;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 391
    .local v5, "conf":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$8$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$8;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$8;->d:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;->g(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;)Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCongsEdt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCongsEdt;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 395
    :cond_1
    const-string/jumbo v0, "redpackets"

    const/4 v1, 0x0

    const-string/jumbo v2, "setSendBtnClick send redpackets."

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$8$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$8;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$8;->d:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$8$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$8;

    iget v1, v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$8;->b:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;->b(I)V

    .line 398
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$8$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$8;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$8;->d:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;

    const-string/jumbo v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$8$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$8;

    iget-wide v8, v6, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$8;->c:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$8$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$8;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$8;->d:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;->a(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    .line 399
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$8$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$8;

    iget v6, v6, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$8;->b:I

    .line 398
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;I)V

    .line 400
    return-void
.end method
