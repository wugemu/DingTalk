.class final Lggk$1$1$1;
.super Ljava/lang/Object;
.source "ImagesRecentViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lggk$1$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lggk$1$1;


# direct methods
.method constructor <init>(Lggk$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lggk$1$1;

    .prologue
    .line 121
    iput-object p1, p0, Lggk$1$1$1;->a:Lggk$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 124
    iget-object v0, p0, Lggk$1$1$1;->a:Lggk$1$1;

    iget-object v0, v0, Lggk$1$1;->c:Lggk$1;

    iget-object v0, v0, Lggk$1;->a:Lggk;

    iget-object v0, v0, Lggk;->d:Landroid/app/Activity;

    iget-object v1, p0, Lggk$1$1$1;->a:Lggk$1$1;

    iget-object v1, v1, Lggk$1$1;->c:Lggk$1;

    iget-object v1, v1, Lggk$1;->a:Lggk;

    .line 1044
    iget-object v1, v1, Lggk;->f:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;

    .line 124
    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;->mSpaceDos:Ljava/util/ArrayList;

    iget-object v2, p0, Lggk$1$1$1;->a:Lggk$1$1;

    iget-object v2, v2, Lggk$1$1;->c:Lggk$1;

    iget-object v2, v2, Lggk$1;->a:Lggk;

    .line 2044
    iget-object v2, v2, Lggk;->f:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;

    .line 125
    const/4 v3, 0x0

    iget-object v4, p0, Lggk$1$1$1;->a:Lggk$1$1;

    iget-object v4, v4, Lggk$1$1;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 124
    invoke-static {v0, v1, v2, v3, v4}, Lggc;->a(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    .line 126
    iget-object v0, p0, Lggk$1$1$1;->a:Lggk$1$1;

    iget-object v0, v0, Lggk$1$1;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lggk$1$1$1;->a:Lggk$1$1;

    iget-object v0, v0, Lggk$1$1;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 129
    :cond_0
    return-void
.end method
