.class final Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$4;
.super Ljava/lang/Object;
.source "MyRedPacketsFragment.java"

# interfaces
.implements Lcjo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;

    .prologue
    .line 178
    .local p0, "this":Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$4;, "Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$4;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$4;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcjo$b;)V
    .locals 2
    .param p1, "message"    # Lcjo$b;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 182
    .local p0, "this":Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$4;, "Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$4;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$4;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->d(Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$4$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$4$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 190
    return-void
.end method
