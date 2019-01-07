.class final Loz$3;
.super Ljava/lang/Object;
.source "TrackLoop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Loz;->b([Lcom/alibaba/dt/ar/core/dt/ar/core/android/TrackResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Loz;


# direct methods
.method constructor <init>(Loz;)V
    .locals 0
    .param p1, "this$0"    # Loz;

    .prologue
    .line 234
    iput-object p1, p0, Loz$3;->a:Loz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 237
    iget-object v0, p0, Loz$3;->a:Loz;

    invoke-static {v0}, Loz;->a(Loz;)Low;

    move-result-object v0

    .line 1277
    iget-object v0, v0, Low;->i:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .line 1446
    iget-object v1, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->b:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1447
    invoke-virtual {v0}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->b()V

    .line 1448
    iget-object v1, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;

    if-eqz v1, :cond_0

    .line 1449
    iget-object v1, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;

    .line 2170
    invoke-virtual {v1}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/CameraBridgeViewBase;->a()V

    .line 1450
    iget-object v1, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->setVisibility(I)V

    .line 1451
    iget-object v0, v0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;

    invoke-virtual {v0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->d()V

    .line 238
    :cond_0
    return-void
.end method
