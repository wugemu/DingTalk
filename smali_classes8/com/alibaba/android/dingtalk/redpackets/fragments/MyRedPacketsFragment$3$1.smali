.class final Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3$1;
.super Ljava/lang/Object;
.source "MyRedPacketsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3;

    .prologue
    .line 149
    .local p0, "this":Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3$1;, "Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3$1;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 152
    .local p0, "this":Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3$1;, "Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3$1;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lhcn;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3;

    iget v1, v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->d:Lcal;

    invoke-virtual {v0}, Lcal;->notifyDataSetChanged()V

    .line 156
    :cond_0
    return-void
.end method
