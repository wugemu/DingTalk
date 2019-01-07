.class final Lcom/alibaba/android/search/devtools/RecommendListActivity$b$1$1;
.super Ljava/lang/Object;
.source "RecommendListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/devtools/RecommendListActivity$b$1;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/devtools/RecommendListActivity$b$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/devtools/RecommendListActivity$b$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/search/devtools/RecommendListActivity$b$1;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/alibaba/android/search/devtools/RecommendListActivity$b$1$1;->a:Lcom/alibaba/android/search/devtools/RecommendListActivity$b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v0, "removeList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;>;"
    iget-object v1, p0, Lcom/alibaba/android/search/devtools/RecommendListActivity$b$1$1;->a:Lcom/alibaba/android/search/devtools/RecommendListActivity$b$1;

    iget-object v1, v1, Lcom/alibaba/android/search/devtools/RecommendListActivity$b$1;->a:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v1, p0, Lcom/alibaba/android/search/devtools/RecommendListActivity$b$1$1;->a:Lcom/alibaba/android/search/devtools/RecommendListActivity$b$1;

    iget-object v1, v1, Lcom/alibaba/android/search/devtools/RecommendListActivity$b$1;->b:Lcom/alibaba/android/search/devtools/RecommendListActivity$b;

    iget-object v1, v1, Lcom/alibaba/android/search/devtools/RecommendListActivity$b;->c:Lcom/alibaba/android/search/devtools/RecommendListActivity;

    invoke-static {v1}, Lcom/alibaba/android/search/devtools/RecommendListActivity;->d(Lcom/alibaba/android/search/devtools/RecommendListActivity;)Lesq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lesq;->a(Ljava/util/List;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 167
    const-string/jumbo v1, "\u5220\u9664\u6210\u529f"

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/alibaba/android/search/devtools/RecommendListActivity$b$1$1;->a:Lcom/alibaba/android/search/devtools/RecommendListActivity$b$1;

    iget-object v1, v1, Lcom/alibaba/android/search/devtools/RecommendListActivity$b$1;->b:Lcom/alibaba/android/search/devtools/RecommendListActivity$b;

    iget-object v1, v1, Lcom/alibaba/android/search/devtools/RecommendListActivity$b;->c:Lcom/alibaba/android/search/devtools/RecommendListActivity;

    invoke-static {v1}, Lcom/alibaba/android/search/devtools/RecommendListActivity;->a(Lcom/alibaba/android/search/devtools/RecommendListActivity;)V

    .line 170
    :cond_0
    return-void
.end method
