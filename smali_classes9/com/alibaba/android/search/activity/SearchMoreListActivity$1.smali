.class final Lcom/alibaba/android/search/activity/SearchMoreListActivity$1;
.super Ljava/lang/Object;
.source "SearchMoreListActivity.java"

# interfaces
.implements Lerw$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/activity/SearchMoreListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/activity/SearchMoreListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/activity/SearchMoreListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/activity/SearchMoreListActivity;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity$1;->a:Lcom/alibaba/android/search/activity/SearchMoreListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public final a(Lcom/alibaba/android/search/SearchGroupType;)V
    .locals 3
    .param p1, "type"    # Lcom/alibaba/android/search/SearchGroupType;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 107
    if-nez p1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 111
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity$1;->a:Lcom/alibaba/android/search/activity/SearchMoreListActivity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/search/search_more.html"

    new-instance v2, Lcom/alibaba/android/search/activity/SearchMoreListActivity$1$1;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/search/activity/SearchMoreListActivity$1$1;-><init>(Lcom/alibaba/android/search/activity/SearchMoreListActivity$1;Lcom/alibaba/android/search/SearchGroupType;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/search/SearchGroupType;I)V
    .locals 0
    .param p1, "type"    # Lcom/alibaba/android/search/SearchGroupType;
    .param p2, "count"    # I

    .prologue
    .line 130
    return-void
.end method

.method public final a(Lcom/alibaba/android/search/SearchGroupType;Z)V
    .locals 0
    .param p1, "type"    # Lcom/alibaba/android/search/SearchGroupType;
    .param p2, "showAnim"    # Z

    .prologue
    .line 125
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Leob;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "tabModelList":Ljava/util/List;, "Ljava/util/List<Leob;>;"
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 93
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity$1;->a:Lcom/alibaba/android/search/activity/SearchMoreListActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 73
    return-void
.end method
