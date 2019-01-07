.class final Lcom/alibaba/android/search/activity/SearchMoreListActivity$6$1;
.super Ljava/lang/Object;
.source "SearchMoreListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/activity/SearchMoreListActivity$6;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/search/activity/SearchMoreListActivity$6;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/activity/SearchMoreListActivity$6;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/search/activity/SearchMoreListActivity$6;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity$6$1;->b:Lcom/alibaba/android/search/activity/SearchMoreListActivity$6;

    iput-object p2, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity$6$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 336
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity$6$1;->b:Lcom/alibaba/android/search/activity/SearchMoreListActivity$6;

    iget-object v0, v0, Lcom/alibaba/android/search/activity/SearchMoreListActivity$6;->a:Lcom/alibaba/android/search/activity/SearchMoreListActivity;

    invoke-static {v0}, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->a(Lcom/alibaba/android/search/activity/SearchMoreListActivity;)Lcom/alibaba/android/search/fragment/AllSearchFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity$6$1;->b:Lcom/alibaba/android/search/activity/SearchMoreListActivity$6;

    iget-object v0, v0, Lcom/alibaba/android/search/activity/SearchMoreListActivity$6;->a:Lcom/alibaba/android/search/activity/SearchMoreListActivity;

    invoke-static {v0}, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->a(Lcom/alibaba/android/search/activity/SearchMoreListActivity;)Lcom/alibaba/android/search/fragment/AllSearchFragment;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->MAIL:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v2, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity$6$1;->a:Ljava/util/List;

    .line 1772
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a(Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;Z)V

    .line 339
    :cond_0
    return-void
.end method
