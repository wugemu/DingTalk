.class final Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$1;
.super Ljava/lang/Object;
.source "RecognizeCardFragmentV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;


# direct methods
.method constructor <init>(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$1;->a:Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 174
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$1;->a:Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    invoke-virtual {v0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    sget v0, Lelh$h;->network_no_connection:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 195
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$1;->a:Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    invoke-static {v0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->a(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$1;->a:Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    invoke-static {v0, v2}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->a(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;Z)Z

    .line 185
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$1$1;

    invoke-direct {v1, p0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$1$1;-><init>(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$1;)V

    const-string/jumbo v2, "token_msg_auto_focus_delay"

    .line 190
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    add-long/2addr v4, v6

    .line 185
    invoke-virtual {v0, v1, v2, v4, v5}, Lhcv;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_0

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$1;->a:Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->a(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;Z)Z

    .line 193
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$1;->a:Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    invoke-static {v0, v2}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->b(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;Z)Z

    goto :goto_0
.end method
