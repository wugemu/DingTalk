.class final Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$6;
.super Ljava/lang/Object;
.source "TitleBarWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->resetContentHeight()V
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
    .line 1198
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$6;->a:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$6;->a:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-static {v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->b(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1210
    :goto_0
    return-void

    .line 1207
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$6;->a:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->requestLayout()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1210
    :catch_0
    move-exception v0

    goto :goto_0
.end method
