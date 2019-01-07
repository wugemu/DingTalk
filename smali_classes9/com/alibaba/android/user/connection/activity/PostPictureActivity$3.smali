.class final Lcom/alibaba/android/user/connection/activity/PostPictureActivity$3;
.super Ljava/lang/Object;
.source "PostPictureActivity.java"

# interfaces
.implements Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/PostPictureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/PostPictureActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/PostPictureActivity;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$3;->a:Lcom/alibaba/android/user/connection/activity/PostPictureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 374
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$3;->a:Lcom/alibaba/android/user/connection/activity/PostPictureActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->a(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 375
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$3;->a:Lcom/alibaba/android/user/connection/activity/PostPictureActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->a(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;

    .line 376
    .local v0, "photoObject":Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$3;->a:Lcom/alibaba/android/user/connection/activity/PostPictureActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->b(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;)Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;

    .line 377
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$3;->a:Lcom/alibaba/android/user/connection/activity/PostPictureActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->b(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;)Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$3;->a:Lcom/alibaba/android/user/connection/activity/PostPictureActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$3;->a:Lcom/alibaba/android/user/connection/activity/PostPictureActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->b(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;)Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$3;->a:Lcom/alibaba/android/user/connection/activity/PostPictureActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->b(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;)Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->postObjectTag:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->a(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    .line 381
    .end local v0    # "photoObject":Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;
    :cond_0
    return-void
.end method

.method public final a(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 370
    return-void
.end method

.method public final b(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 386
    return-void
.end method
