.class final Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$2$1;
.super Ljava/lang/Object;
.source "AlbumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$2;->exec(Lhac;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhac;

.field final synthetic b:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$2;Lhac;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$2;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$2$1;->b:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$2;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$2$1;->a:Lhac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 239
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->clearMemoryCache(F)V

    .line 240
    const-string/jumbo v0, "AlbumActivity"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$2$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$2$1$1;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$2$1;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 246
    return-void
.end method
