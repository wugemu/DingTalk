.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$1$1;
.super Ljava/lang/Object;
.source "TCPFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$1;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$1$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$1$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;)V

    .line 60
    return-void
.end method
