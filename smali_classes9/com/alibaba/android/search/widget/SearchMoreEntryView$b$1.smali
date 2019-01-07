.class final Lcom/alibaba/android/search/widget/SearchMoreEntryView$b$1;
.super Ljava/lang/Object;
.source "SearchMoreEntryView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/widget/SearchMoreEntryView$b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/widget/SearchMoreEntryView$a;

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/android/search/widget/SearchMoreEntryView$b;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/widget/SearchMoreEntryView$b;Lcom/alibaba/android/search/widget/SearchMoreEntryView$a;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/search/widget/SearchMoreEntryView$b;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView$b$1;->c:Lcom/alibaba/android/search/widget/SearchMoreEntryView$b;

    iput-object p2, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView$b$1;->a:Lcom/alibaba/android/search/widget/SearchMoreEntryView$a;

    iput p3, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView$b$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView$b$1;->a:Lcom/alibaba/android/search/widget/SearchMoreEntryView$a;

    iget-object v0, v0, Lcom/alibaba/android/search/widget/SearchMoreEntryView$a;->a:Lcom/alibaba/android/search/SearchGroupType;

    if-eqz v0, :cond_0

    .line 158
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView$b$1;->c:Lcom/alibaba/android/search/widget/SearchMoreEntryView$b;

    iget-object v1, v1, Lcom/alibaba/android/search/widget/SearchMoreEntryView$b;->c:Lcom/alibaba/android/search/widget/SearchMoreEntryView;

    invoke-virtual {v1}, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/search/search_more.html"

    new-instance v2, Lcom/alibaba/android/search/widget/SearchMoreEntryView$b$1$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/search/widget/SearchMoreEntryView$b$1$1;-><init>(Lcom/alibaba/android/search/widget/SearchMoreEntryView$b$1;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 170
    :cond_0
    return-void
.end method
