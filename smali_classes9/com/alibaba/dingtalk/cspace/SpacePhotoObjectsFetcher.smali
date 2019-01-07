.class public Lcom/alibaba/dingtalk/cspace/SpacePhotoObjectsFetcher;
.super Ljava/lang/Object;
.source "SpacePhotoObjectsFetcher.java"

# interfaces
.implements Lcom/alibaba/laiwang/photokit/browser/PhotoObjectsFetcher;


# instance fields
.field public cacheKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetchPhotoObjects(Lcom/alibaba/wukong/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<[",
            "Lcom/alibaba/laiwang/photokit/browser/PhotoObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 17
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;>;"
    if-eqz p1, :cond_1

    .line 18
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/SpacePhotoObjectsFetcher;->cacheKey:Ljava/lang/String;

    .line 1064
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lfzt;->b:Ljava/util/HashMap;

    if-nez v1, :cond_2

    .line 1065
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-interface {p1, v0}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 20
    :cond_1
    return-void

    .line 1068
    :cond_2
    sget-object v1, Lfzt;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    goto :goto_0
.end method
