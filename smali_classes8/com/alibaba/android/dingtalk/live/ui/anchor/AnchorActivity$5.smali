.class final Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$5;
.super Ljava/lang/Object;
.source "AnchorActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->a(Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

.field final synthetic b:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    .prologue
    .line 937
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$5;->b:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$5;->a:Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 940
    const-string/jumbo v0, "intent_extra_live_statistics"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$5;->a:Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 941
    return-object p1
.end method
