.class final Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$2;
.super Ljava/lang/Object;
.source "VideoPlayerActivityV2.java"

# interfaces
.implements Lebs$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->b()V
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
    .line 82
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$2;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$2;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->finish()V

    .line 86
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "localPath"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$2;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->d(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;)V

    .line 103
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$2;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;

    invoke-static {v0, p1, p2}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->a(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$2;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->b(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;)V

    .line 91
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$2;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->e(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;)V

    .line 109
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$2;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->c(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;)Lecb$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2$2;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;->c(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivityV2;)Lecb$c;

    move-result-object v0

    invoke-interface {v0}, Lecb$c;->c()V

    .line 98
    :cond_0
    return-void
.end method
