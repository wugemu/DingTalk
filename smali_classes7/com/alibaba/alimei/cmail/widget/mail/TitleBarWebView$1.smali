.class final Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$1;
.super Ljava/lang/Object;
.source "TitleBarWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    .prologue
    .line 780
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$1;->b:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    iput p2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$1;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 785
    iget-object v3, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$1;->b:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-static {v3}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->b(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 788
    :cond_1
    iget-object v3, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$1;->b:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$1;->b:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-static {v5}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->c(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v3, v4}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;F)F

    .line 790
    iget v3, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$1;->a:F

    iget-object v4, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$1;->b:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-static {v4}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->d(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;)F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v1, v3

    .line 793
    .local v1, "height":I
    iget-object v3, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$1;->b:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-static {v3}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->e(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 794
    int-to-float v3, v1

    iget-object v4, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$1;->b:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getScale()F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v1, v3

    .line 796
    :cond_2
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 797
    .local v0, "ddsb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v3, "javascript:if(typeof window.setBarFillDivHeight != \"undefined\"){window.setBarFillDivHeight("

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 798
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 799
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 800
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 801
    const-string/jumbo v3, ");}"

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 802
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 803
    .local v2, "result":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$1;->b:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 805
    iget-object v3, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$1;->b:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-static {v3}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->b(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 808
    iget-object v3, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$1;->b:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v3, v2}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
