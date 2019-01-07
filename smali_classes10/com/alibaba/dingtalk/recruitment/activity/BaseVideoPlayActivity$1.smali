.class final Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity$1;
.super Ljava/lang/Object;
.source "BaseVideoPlayActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;->a(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity$1;->b:Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;

    iput-object p2, p0, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 38
    .line 1041
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity$1;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 38
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity$1;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 55
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 48
    return-void
.end method
