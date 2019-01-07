.class final Lggj$2;
.super Ljava/lang/Object;
.source "ImageRecentViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lggj;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/ImageView;Lcom/alibaba/alimei/cspace/model/RecentDentryModel;Landroid/widget/AbsListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cspace/model/RecentDentryModel;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cspace/model/RecentDentryModel;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lggj$2;->a:Lcom/alibaba/alimei/cspace/model/RecentDentryModel;

    iput-object p2, p0, Lggj$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lggj$2;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 120
    invoke-static {}, Lgfw;->b()Lgfw;

    move-result-object v0

    .line 121
    .local v0, "instance":Lgfw;
    if-eqz v0, :cond_1

    iget-object v4, p0, Lggj$2;->a:Lcom/alibaba/alimei/cspace/model/RecentDentryModel;

    invoke-virtual {v0, v4}, Lgfw;->a(Lcom/alibaba/alimei/cspace/model/RecentDentryModel;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 122
    sget v4, Lfzs$h;->space_recent_file_has_deleted:I

    invoke-static {v4}, Lcms;->a(I)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v4, p0, Lggj$2;->b:Ljava/lang/String;

    iget-object v5, p0, Lggj$2;->a:Lcom/alibaba/alimei/cspace/model/RecentDentryModel;

    invoke-static {v4, v5}, Lgoc;->a(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/RecentDentryModel;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v1

    .line 126
    .local v1, "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    if-eqz v1, :cond_0

    .line 127
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 128
    .local v3, "spaceDos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    iget-object v4, p0, Lggj$2;->a:Lcom/alibaba/alimei/cspace/model/RecentDentryModel;

    invoke-static {v4}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/RecentDentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    new-array v2, v6, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    .line 130
    .local v2, "photoObjects":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    iget-object v4, p0, Lggj$2;->c:Landroid/app/Activity;

    const/4 v5, 0x0

    invoke-static {v4, v3, v5, v2, v1}, Lggc;->a(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    goto :goto_0
.end method
