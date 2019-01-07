.class final Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment$1;
.super Landroid/text/style/ClickableSpan;
.source "OrgHomepageDetailSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "widget"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 76
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "https://csmobile.alipay.com/detailSolution.htm?questionId=201602153501&knowledgeType=3"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "ds"    # Landroid/text/TextPaint;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lemt$b;->uidic_global_color_c2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    goto :goto_0
.end method
