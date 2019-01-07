.class final Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2$1;
.super Ljava/lang/Object;
.source "PostPictureActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2$1;->b:Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;

    iput-object p2, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 256
    invoke-static {}, Lfcn;->a()Lfcn;

    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2$1;->a:Ljava/util/List;

    .line 1097
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 257
    :cond_0
    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2$1;->b:Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;

    iget-object v4, v4, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;->b:Lcom/alibaba/android/user/connection/activity/PostPictureActivity;

    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2$1;->a:Ljava/util/List;

    invoke-static {v4, v5}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->a(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 258
    .local v2, "photoObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;>;"
    invoke-static {v2}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 259
    const-string/jumbo v4, "photoObjects = null"

    .line 2060
    const/4 v5, 0x0

    invoke-static {v5, v4}, Lffe;->a(ZLjava/lang/String;)V

    .line 277
    :cond_1
    :goto_0
    return-void

    .line 1100
    .end local v2    # "photoObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 1101
    invoke-static {v4}, Lfcn;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    goto :goto_1

    .line 262
    .restart local v2    # "photoObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;>;"
    :cond_3
    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2$1;->b:Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;

    iget-object v4, v4, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;->b:Lcom/alibaba/android/user/connection/activity/PostPictureActivity;

    invoke-static {v4, v2}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->b(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;Ljava/util/List;)Ljava/util/List;

    .line 263
    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2$1;->b:Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;

    iget-object v4, v4, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;->b:Lcom/alibaba/android/user/connection/activity/PostPictureActivity;

    invoke-static {v4, v2}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->c(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;Ljava/util/List;)[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v3

    .line 264
    .local v3, "viewPhotoObjects":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2$1;->b:Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;

    iget-object v4, v4, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;->b:Lcom/alibaba/android/user/connection/activity/PostPictureActivity;

    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2$1;->b:Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;

    iget-object v5, v5, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;->b:Lcom/alibaba/android/user/connection/activity/PostPictureActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->b(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;)Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->a(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v0

    .line 265
    .local v0, "currentViewPhotoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    if-eqz v3, :cond_1

    array-length v4, v3

    if-lez v4, :cond_1

    if-eqz v0, :cond_1

    .line 266
    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2$1;->b:Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;

    iget-object v4, v4, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;->b:Lcom/alibaba/android/user/connection/activity/PostPictureActivity;

    invoke-static {v4, v3, v0}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->a(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    .line 269
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 270
    .local v1, "i":I
    if-ltz v1, :cond_1

    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2$1;->b:Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;

    iget-object v4, v4, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;->b:Lcom/alibaba/android/user/connection/activity/PostPictureActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->a(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 271
    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2$1;->b:Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;

    iget-object v5, v4, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;->b:Lcom/alibaba/android/user/connection/activity/PostPictureActivity;

    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2$1;->b:Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;

    iget-object v4, v4, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;->b:Lcom/alibaba/android/user/connection/activity/PostPictureActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->a(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;

    invoke-static {v5, v4}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->b(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;)Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;

    .line 272
    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2$1;->b:Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;

    iget-object v4, v4, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;->b:Lcom/alibaba/android/user/connection/activity/PostPictureActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->b(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;)Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 273
    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2$1;->b:Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;

    iget-object v4, v4, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;->b:Lcom/alibaba/android/user/connection/activity/PostPictureActivity;

    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2$1;->b:Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;

    iget-object v5, v5, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;->b:Lcom/alibaba/android/user/connection/activity/PostPictureActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->b(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;)Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2$1;->b:Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;

    iget-object v6, v6, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$2;->b:Lcom/alibaba/android/user/connection/activity/PostPictureActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->b(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;)Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;

    move-result-object v6

    iget-object v6, v6, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->postObjectTag:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-static {v4, v5, v6}, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;->a(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    goto/16 :goto_0
.end method
