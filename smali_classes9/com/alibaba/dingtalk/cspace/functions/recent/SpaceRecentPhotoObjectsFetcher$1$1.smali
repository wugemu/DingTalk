.class final Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher$1$1;
.super Ljava/lang/Object;
.source "SpaceRecentPhotoObjectsFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher$1;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher$1;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher$1$1;->a:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher$1;

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
    .line 132
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher$1$1;->a:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher$1;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher$1;->b:Lcom/alibaba/wukong/Callback;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher$1$1;->a:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher$1;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher$1;->c:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;->mPhotoObjects:[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 133
    return-void
.end method
