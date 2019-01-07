.class final Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "BaseVideoPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity$2;->a:Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity$2;->a:Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;->a()V

    .line 67
    return-void
.end method
