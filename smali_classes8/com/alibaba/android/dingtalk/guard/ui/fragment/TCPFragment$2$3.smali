.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2$3;
.super Ljava/lang/Object;
.source "TCPFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2;->a(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;)V

    .line 106
    return-void
.end method
