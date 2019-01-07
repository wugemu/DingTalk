.class final Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$4$1;
.super Ljava/lang/Object;
.source "MyRedPacketsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$4;->a(Lcjo$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$4;

    .prologue
    .line 182
    .local p0, "this":Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$4$1;, "Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$4$1;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$4$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 185
    .local p0, "this":Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$4$1;, "Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$4$1;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$4$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$4;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->d:Lcal;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$4$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$4;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->d:Lcal;

    invoke-virtual {v0}, Lcal;->notifyDataSetChanged()V

    .line 188
    :cond_0
    return-void
.end method
