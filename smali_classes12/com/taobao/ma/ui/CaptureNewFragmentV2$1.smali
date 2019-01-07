.class final Lcom/taobao/ma/ui/CaptureNewFragmentV2$1;
.super Ljava/lang/Object;
.source "CaptureNewFragmentV2.java"

# interfaces
.implements Lcom/alipay/mobile/bqcscanservice/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/ma/ui/CaptureNewFragmentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/taobao/ma/ui/CaptureNewFragmentV2;


# direct methods
.method constructor <init>(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$1;->b:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 125
    invoke-static {}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->g()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onSurfaceAvaliable"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$1;->b:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    invoke-static {v0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->b(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$1;->b:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->a(Lcom/taobao/ma/ui/CaptureNewFragmentV2;Z)Z

    .line 128
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$1;->b:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    invoke-static {v0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->c(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)Lcom/alipay/mobile/bqcscanservice/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$1;->b:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    invoke-static {v0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->c(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)Lcom/alipay/mobile/bqcscanservice/d;

    move-result-object v0

    .line 1139
    iget-object v1, v0, Lcom/alipay/mobile/bqcscanservice/d;->a:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/mobile/bqcscanservice/d$5;

    invoke-direct {v2, v0}, Lcom/alipay/mobile/bqcscanservice/d$5;-><init>(Lcom/alipay/mobile/bqcscanservice/d;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 132
    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 5
    .param p1, "pcode"    # J

    .prologue
    const/4 v4, 0x0

    .line 111
    invoke-static {}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->g()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "onParametersSetted:"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$1;->b:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    invoke-static {v0, p1, p2}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->a(Lcom/taobao/ma/ui/CaptureNewFragmentV2;J)J

    .line 113
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$1;->b:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    invoke-virtual {v0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$1$1;

    invoke-direct {v0, p0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2$1$1;-><init>(Lcom/taobao/ma/ui/CaptureNewFragmentV2$1;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 121
    :cond_0
    return-void
.end method

.method public final a(Lcom/alipay/mobile/bqcscanservice/BQCScanError;)V
    .locals 5
    .param p1, "bqcError"    # Lcom/alipay/mobile/bqcscanservice/BQCScanError;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 155
    if-eqz p1, :cond_0

    .line 156
    invoke-static {}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->g()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "onError :"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/alipay/mobile/bqcscanservice/BQCScanError;->a:Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/alipay/mobile/bqcscanservice/BQCScanError;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$1;->b:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    invoke-virtual {v0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$1;->b:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    invoke-virtual {v0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->h()V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    invoke-static {}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->g()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onCameraOpened"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    return-void
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 141
    invoke-static {}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->g()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onPreviewFrameShow"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$1;->b:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    invoke-static {v0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->d(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$1;->b:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    invoke-virtual {v0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    new-instance v0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$1$2;

    invoke-direct {v0, p0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2$1$2;-><init>(Lcom/taobao/ma/ui/CaptureNewFragmentV2$1;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 176
    invoke-static {}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->g()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onCameraReady:"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    return-void
.end method

.method public final e()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 181
    invoke-static {}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->g()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onCameraClose:"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method
