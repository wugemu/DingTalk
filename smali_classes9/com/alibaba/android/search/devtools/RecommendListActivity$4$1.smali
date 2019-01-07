.class final Lcom/alibaba/android/search/devtools/RecommendListActivity$4$1;
.super Ljava/lang/Object;
.source "RecommendListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/devtools/RecommendListActivity$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/search/devtools/RecommendListActivity$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/devtools/RecommendListActivity$4;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/search/devtools/RecommendListActivity$4;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/alibaba/android/search/devtools/RecommendListActivity$4$1;->b:Lcom/alibaba/android/search/devtools/RecommendListActivity$4;

    iput-object p2, p0, Lcom/alibaba/android/search/devtools/RecommendListActivity$4$1;->a:Ljava/util/List;

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
    .line 122
    iget-object v0, p0, Lcom/alibaba/android/search/devtools/RecommendListActivity$4$1;->b:Lcom/alibaba/android/search/devtools/RecommendListActivity$4;

    iget-object v1, v0, Lcom/alibaba/android/search/devtools/RecommendListActivity$4;->a:Lcom/alibaba/android/search/devtools/RecommendListActivity;

    iget-object v0, p0, Lcom/alibaba/android/search/devtools/RecommendListActivity$4$1;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/devtools/RecommendListActivity$4$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    invoke-static {v1, v0}, Lcom/alibaba/android/search/devtools/RecommendListActivity;->a(Lcom/alibaba/android/search/devtools/RecommendListActivity;I)V

    .line 123
    iget-object v0, p0, Lcom/alibaba/android/search/devtools/RecommendListActivity$4$1;->b:Lcom/alibaba/android/search/devtools/RecommendListActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/search/devtools/RecommendListActivity$4;->a:Lcom/alibaba/android/search/devtools/RecommendListActivity;

    invoke-static {v0}, Lcom/alibaba/android/search/devtools/RecommendListActivity;->c(Lcom/alibaba/android/search/devtools/RecommendListActivity;)Lemv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/devtools/RecommendListActivity$4$1;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lemv;->a(Ljava/util/List;)V

    .line 124
    return-void

    .line 122
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
