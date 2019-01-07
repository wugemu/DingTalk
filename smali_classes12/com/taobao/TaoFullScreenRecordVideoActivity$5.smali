.class final Lcom/taobao/TaoFullScreenRecordVideoActivity$5;
.super Ljava/lang/Object;
.source "TaoFullScreenRecordVideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/TaoFullScreenRecordVideoActivity;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/av/ui/view/NewDialog;

.field final synthetic b:Lcom/taobao/TaoFullScreenRecordVideoActivity;


# direct methods
.method constructor <init>(Lcom/taobao/TaoFullScreenRecordVideoActivity;Lcom/taobao/av/ui/view/NewDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/TaoFullScreenRecordVideoActivity;

    .prologue
    .line 991
    iput-object p1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$5;->b:Lcom/taobao/TaoFullScreenRecordVideoActivity;

    iput-object p2, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$5;->a:Lcom/taobao/av/ui/view/NewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 994
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$5;->a:Lcom/taobao/av/ui/view/NewDialog;

    invoke-virtual {v0}, Lcom/taobao/av/ui/view/NewDialog;->dismiss()V

    .line 995
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$5;->b:Lcom/taobao/TaoFullScreenRecordVideoActivity;

    invoke-static {v0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->g(Lcom/taobao/TaoFullScreenRecordVideoActivity;)Lcom/taobao/av/logic/media/TaoMediaRecorder;

    move-result-object v0

    .line 1236
    iget-object v0, v0, Lcom/taobao/av/logic/media/TaoMediaRecorder;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 995
    invoke-static {v0}, Ljkx;->b(Ljava/lang/String;)V

    .line 996
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$5;->b:Lcom/taobao/TaoFullScreenRecordVideoActivity;

    invoke-virtual {v0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->finish()V

    .line 997
    const-string/jumbo v0, "video record quit"

    .line 2010
    const-string/jumbo v1, "video_recorder"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljpe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    return-void
.end method
