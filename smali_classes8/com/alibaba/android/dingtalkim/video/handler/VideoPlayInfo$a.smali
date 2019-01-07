.class public final Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo$a;
.super Ljava/lang/Object;
.source "VideoPlayInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;-><init>(Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo$1;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo$a;->a:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    .line 146
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo$a;
    .locals 1
    .param p1, "videoSourceType"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo$a;->a:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->access$102(Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;I)I

    .line 150
    return-object p0
.end method

.method public final a(J)Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo$a;
    .locals 1
    .param p1, "videoSize"    # J

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo$a;->a:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-static {v0, p1, p2}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->access$1002(Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;J)J

    .line 195
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo$a;
    .locals 1
    .param p1, "videoUrl"    # Ljava/lang/String;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo$a;->a:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->access$202(Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo$a;
    .locals 1
    .param p1, "videoPicUrl"    # Ljava/lang/String;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo$a;->a:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->access$802(Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    return-object p0
.end method
