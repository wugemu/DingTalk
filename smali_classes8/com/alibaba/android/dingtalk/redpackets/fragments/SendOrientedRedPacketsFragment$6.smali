.class final Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$6;
.super Ljava/lang/Object;
.source "SendOrientedRedPacketsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

.field final synthetic b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$6;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$6;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment$6;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->dismiss()V

    .line 331
    return-void
.end method
