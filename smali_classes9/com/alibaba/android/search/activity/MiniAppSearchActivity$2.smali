.class final Lcom/alibaba/android/search/activity/MiniAppSearchActivity$2;
.super Ljava/lang/Object;
.source "MiniAppSearchActivity.java"

# interfaces
.implements Lerg$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/activity/MiniAppSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/activity/MiniAppSearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/activity/MiniAppSearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/activity/MiniAppSearchActivity;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity$2;->a:Lcom/alibaba/android/search/activity/MiniAppSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 180
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity$2;->a:Lcom/alibaba/android/search/activity/MiniAppSearchActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity$2;->a:Lcom/alibaba/android/search/activity/MiniAppSearchActivity;

    invoke-static {v0}, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->c(Lcom/alibaba/android/search/activity/MiniAppSearchActivity;)Lcom/alibaba/android/search/widget/LoadingStatView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/widget/LoadingStatView;->a(I)V

    .line 183
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity$2;->a:Lcom/alibaba/android/search/activity/MiniAppSearchActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->a(Lcom/alibaba/android/search/activity/MiniAppSearchActivity;Ljava/util/List;)V

    .line 162
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 187
    const-string/jumbo v0, "-408"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity$2;->a:Lcom/alibaba/android/search/activity/MiniAppSearchActivity;

    invoke-static {v0}, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->e(Lcom/alibaba/android/search/activity/MiniAppSearchActivity;)V

    .line 190
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity$2;->a:Lcom/alibaba/android/search/activity/MiniAppSearchActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity$2;->a:Lcom/alibaba/android/search/activity/MiniAppSearchActivity;

    invoke-static {v0}, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->c(Lcom/alibaba/android/search/activity/MiniAppSearchActivity;)Lcom/alibaba/android/search/widget/LoadingStatView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/widget/LoadingStatView;->a(I)V

    .line 174
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity$2;->a:Lcom/alibaba/android/search/activity/MiniAppSearchActivity;

    invoke-static {v0}, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->d(Lcom/alibaba/android/search/activity/MiniAppSearchActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity$2;->a:Lcom/alibaba/android/search/activity/MiniAppSearchActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 157
    return-void
.end method
