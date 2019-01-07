.class final Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$6;
.super Ljava/lang/Object;
.source "VideoPlayerRender.java"

# interfaces
.implements Leca$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    .prologue
    .line 555
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$6;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .param p1, "percent"    # I

    .prologue
    .line 558
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$6;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->d(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;I)I

    .line 559
    return-void
.end method
