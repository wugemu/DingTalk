.class final Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity$3;
.super Ljava/lang/Object;
.source "BaseVideoPlayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;->b(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

.field final synthetic b:Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity$3;->b:Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;

    iput-object p2, p0, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity$3;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity$3;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a()V

    .line 96
    return-void
.end method
