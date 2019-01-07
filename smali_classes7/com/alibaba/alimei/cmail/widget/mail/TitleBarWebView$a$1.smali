.class final Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$a$1;
.super Ljava/lang/Object;
.source "TitleBarWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

.field final synthetic b:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$a;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$a;Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$a;

    .prologue
    .line 570
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$a$1;->b:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$a;

    iput-object p2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$a$1;->a:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

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
    .line 573
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$a$1;->a:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    iget-object v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$a$1;->b:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$a;

    .line 1548
    iget-object v1, v1, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$a;->a:Ljava/lang/String;

    .line 573
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$a$1;->b:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$a;

    .line 2548
    iget-object v2, v2, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$a;->b:Lsh;

    .line 573
    invoke-static {v0, v1, v2}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;Ljava/lang/String;Lsh;)V

    .line 574
    return-void
.end method
