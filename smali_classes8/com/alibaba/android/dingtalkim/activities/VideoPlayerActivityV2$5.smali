.class final Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$5;
.super Ljava/lang/Object;
.source "VideoPlayerActivityV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 157
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$5;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$5;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->finish()V

    .line 162
    return-void
.end method
