.class final Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2$1;
.super Ljava/lang/Object;
.source "PostPictureActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2$1;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 252
    invoke-static {}, Lbnw;->a()Lbnw;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2$1;->a:Ljava/util/List;

    .line 1096
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 253
    :cond_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2$1;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2$1;->a:Ljava/util/List;

    invoke-static {v4, v5}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 254
    .local v2, "photoObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;>;"
    invoke-static {v2}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 255
    const-string/jumbo v4, "photoObjects = null"

    .line 2076
    const/4 v5, 0x0

    invoke-static {v5, v4}, Lbqh;->a(ZLjava/lang/String;)V

    .line 273
    :cond_1
    :goto_0
    return-void

    .line 1099
    .end local v2    # "photoObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 1100
    invoke-static {v4}, Lbnw;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    goto :goto_1

    .line 258
    .restart local v2    # "photoObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;>;"
    :cond_3
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2$1;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;

    invoke-static {v4, v2}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->b(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;Ljava/util/List;)Ljava/util/List;

    .line 259
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2$1;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;

    invoke-static {v4, v2}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->c(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;Ljava/util/List;)[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v3

    .line 260
    .local v3, "viewPhotoObjects":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2$1;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2$1;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->b(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v0

    .line 261
    .local v0, "currentViewPhotoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    if-eqz v3, :cond_1

    array-length v4, v3

    if-lez v4, :cond_1

    if-eqz v0, :cond_1

    .line 262
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2$1;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;

    invoke-static {v4, v3, v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    .line 265
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 266
    .local v1, "i":I
    if-ltz v1, :cond_1

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2$1;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 267
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2$1;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2;

    iget-object v5, v4, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2$1;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;

    invoke-static {v5, v4}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->b(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;

    .line 268
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2$1;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->b(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 269
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2$1;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2$1;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->b(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2$1;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity$2;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;

    invoke-static {v6}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->b(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;

    move-result-object v6

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;->postObjectTag:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-static {v4, v5, v6}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    goto/16 :goto_0
.end method
