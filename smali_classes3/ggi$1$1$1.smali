.class final Lggi$1$1$1;
.super Ljava/lang/Object;
.source "FileRecentViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lggi$1$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lggi$1$1;


# direct methods
.method constructor <init>(Lggi$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lggi$1$1;

    .prologue
    .line 113
    iput-object p1, p0, Lggi$1$1$1;->a:Lggi$1$1;

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
    .line 116
    iget-object v0, p0, Lggi$1$1$1;->a:Lggi$1$1;

    iget-object v0, v0, Lggi$1$1;->c:Lggi$1;

    iget-object v0, v0, Lggi$1;->a:Lggi;

    iget-object v0, v0, Lggi;->d:Landroid/app/Activity;

    iget-object v1, p0, Lggi$1$1$1;->a:Lggi$1$1;

    iget-object v1, v1, Lggi$1$1;->c:Lggi$1;

    iget-object v1, v1, Lggi$1;->a:Lggi;

    .line 1045
    iget-object v1, v1, Lggi;->h:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;

    .line 116
    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;->mSpaceDos:Ljava/util/ArrayList;

    iget-object v2, p0, Lggi$1$1$1;->a:Lggi$1$1;

    iget-object v2, v2, Lggi$1$1;->c:Lggi$1;

    iget-object v2, v2, Lggi$1;->a:Lggi;

    .line 2045
    iget-object v2, v2, Lggi;->h:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;

    .line 117
    const/4 v3, 0x0

    iget-object v4, p0, Lggi$1$1$1;->a:Lggi$1$1;

    iget-object v4, v4, Lggi$1$1;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 116
    invoke-static {v0, v1, v2, v3, v4}, Lggc;->a(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    .line 118
    iget-object v0, p0, Lggi$1$1$1;->a:Lggi$1$1;

    iget-object v0, v0, Lggi$1$1;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lggi$1$1$1;->a:Lggi$1$1;

    iget-object v0, v0, Lggi$1$1;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 121
    :cond_0
    return-void
.end method
