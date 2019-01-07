.class public Lcom/alibaba/alimei/mail/adapter/MailSignTemplateAdapter$1;
.super Landroid/webkit/WebViewClient;
.source "MailSignTemplateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ladd;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ladd$b;

.field final synthetic b:Laca;

.field final synthetic c:Ladd;


# direct methods
.method public constructor <init>(Ladd;Ladd$b;Laca;)V
    .locals 0
    .param p1, "this$0"    # Ladd;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/alibaba/alimei/mail/adapter/MailSignTemplateAdapter$1;->c:Ladd;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/adapter/MailSignTemplateAdapter$1;->a:Ladd$b;

    iput-object p3, p0, Lcom/alibaba/alimei/mail/adapter/MailSignTemplateAdapter$1;->b:Laca;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 112
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/alibaba/alimei/mail/adapter/MailSignTemplateAdapter$1;->a:Ladd$b;

    iput-boolean v0, v1, Ladd$b;->d:Z

    .line 114
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/adapter/MailSignTemplateAdapter$1;->b:Laca;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/alibaba/alimei/mail/adapter/MailSignTemplateAdapter$1;->c:Ladd;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/adapter/MailSignTemplateAdapter$1;->b:Laca;

    iget-wide v2, v2, Laca;->b:J

    iget-object v4, p0, Lcom/alibaba/alimei/mail/adapter/MailSignTemplateAdapter$1;->c:Ladd;

    invoke-static {v4}, Ladd;->a(Ladd;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :goto_0
    invoke-static {v1, p1, v0}, Ladd;->a(Ladd;Landroid/webkit/WebView;Z)V

    .line 117
    :cond_0
    return-void

    .line 115
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
