.class final Lbib$33;
.super Ljava/lang/Object;
.source "BasicDingViewHolder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lbib;


# direct methods
.method constructor <init>(Lbib;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lbib;

    .prologue
    .line 1688
    iput-object p1, p0, Lbib$33;->b:Lbib;

    iput-object p2, p0, Lbib$33;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1691
    iget-object v0, p0, Lbib$33;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 1692
    iget-object v0, p0, Lbib$33;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Laxp$i;->ding_menu_choose:I

    if-ne v0, v1, :cond_2

    .line 1693
    iget-object v0, p0, Lbib$33;->b:Lbib;

    iget-object v0, v0, Lbib;->a:Landroid/app/Activity;

    iget-object v1, p0, Lbib$33;->b:Lbib;

    iget-wide v2, v1, Lbib;->e:J

    .line 2129
    if-eqz v0, :cond_0

    .line 2132
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.workapp.ding.choose.mode.change"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2133
    const-string/jumbo v4, "choose_mode"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2134
    const-string/jumbo v4, "intent_key_seed"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2135
    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 2191
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.ding.focus.and.recycle.hide.tips"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2192
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1705
    :cond_1
    :goto_0
    return-void

    .line 1695
    :cond_2
    iget-object v0, p0, Lbib$33;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Laxp$i;->ding_menu_choose_cancel:I

    if-ne v0, v1, :cond_3

    .line 1696
    iget-object v0, p0, Lbib$33;->b:Lbib;

    iget-object v0, v0, Lbib;->a:Landroid/app/Activity;

    .line 3139
    if-eqz v0, :cond_1

    .line 3142
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.ding.choose.mode.change"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3143
    const-string/jumbo v2, "choose_mode"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3144
    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0

    .line 1697
    :cond_3
    iget-object v0, p0, Lbib$33;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Laxp$i;->ding_menu_delete:I

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lbib$33;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Laxp$i;->cancel:I

    if-ne v0, v1, :cond_5

    .line 1698
    :cond_4
    iget-object v0, p0, Lbib$33;->b:Lbib;

    iget-object v0, v0, Lbib;->a:Landroid/app/Activity;

    iget-object v1, p0, Lbib$33;->b:Lbib;

    iget-object v1, v1, Lbib;->ae:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lbjr;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/wukong/Callback;)V

    .line 1699
    iget-object v0, p0, Lbib$33;->b:Lbib;

    iget-object v0, v0, Lbib;->ae:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->N(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    invoke-static {v0}, Lbjz;->b(Z)V

    goto :goto_0

    .line 1700
    :cond_5
    iget-object v0, p0, Lbib$33;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Laxp$i;->ding_menu_revert:I

    if-ne v0, v1, :cond_1

    .line 1701
    iget-object v0, p0, Lbib$33;->b:Lbib;

    iget-object v1, p0, Lbib$33;->b:Lbib;

    iget-object v1, v1, Lbib;->ae:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->NORMAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    .line 4711
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v3

    new-instance v4, Lbib$35;

    invoke-direct {v4, v0}, Lbib$35;-><init>(Lbib;)V

    invoke-virtual {v3, v1, v2, v4}, Lbbp;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;Lcma;)V

    .line 5518
    const-string/jumbo v0, "ding_list_recover"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
