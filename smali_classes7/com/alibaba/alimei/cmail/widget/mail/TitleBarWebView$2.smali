.class final Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$2;
.super Ljava/lang/Object;
.source "TitleBarWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    .prologue
    .line 847
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$2;->c:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    iput-object p2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 852
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$2;->c:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-static {v2}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->b(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 863
    :goto_0
    return-void

    .line 855
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 856
    .local v0, "ddsb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v2, "javascript:if(typeof window.loadImage != \"undefined\"){window.loadImage(\""

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 857
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 858
    const-string/jumbo v2, "\",\""

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 859
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 860
    const-string/jumbo v2, "\");}"

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 861
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 862
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$2;->c:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v2, v1}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
