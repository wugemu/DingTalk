.class final Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment$2;
.super Ljava/lang/Object;
.source "SendLuckyTimeRedPacketsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment$2;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 155
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "redenvelope_luckytime_choosetime_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment$2;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->a(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;)V

    .line 157
    return-void
.end method
