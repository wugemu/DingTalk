.class final Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher$3$1;
.super Ljava/lang/Object;
.source "DetailPhotoObjectsFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher$3;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher$3;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher$3$1;->b:Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher$3;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher$3$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 117
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher$3$1;->b:Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher$3;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher$3;->c:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher$3$1;->b:Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher$3;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher$3;->c:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher$3$1;->b:Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher$3;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher$3;->c:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Ldrp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "imageKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher$3$1;->b:Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher$3;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher$3;->d:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher$3$1;->a:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/alibaba/doraemon/image/ImageMagician;->fillImage2Cache(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_0
    return-void
.end method
