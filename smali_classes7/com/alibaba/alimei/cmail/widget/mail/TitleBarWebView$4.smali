.class final Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$4;
.super Ljava/lang/Object;
.source "TitleBarWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->finishAll()V
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
    .line 1086
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$4;->a:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

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
    .line 1089
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$4;->a:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$b;

    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$4;->a:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$b;->a(Z)V

    .line 1092
    :cond_0
    return-void
.end method
