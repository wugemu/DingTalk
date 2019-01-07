.class final Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$3;
.super Ljava/lang/Object;
.source "TitleBarWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->finish(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    .prologue
    .line 1060
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$3;->a:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$3;->a:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-static {v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->b(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1072
    :cond_0
    :goto_0
    return-void

    .line 1069
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$3;->a:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->c:Landroid/view/View;

    instance-of v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;

    if-eqz v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$3;->a:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->c:Landroid/view/View;

    check-cast v0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;->setVisiable(Z)V

    goto :goto_0
.end method
