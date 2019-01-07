.class final Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$3;
.super Ljava/lang/Object;
.source "VideoPlayerActivityV2.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$3;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$3;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->f(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;)Lebs;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$3;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->f(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;)Lebs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lebs;->a(Landroid/view/View;)V

    .line 147
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
