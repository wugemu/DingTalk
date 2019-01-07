.class final Lcom/alibaba/alimei/mail/widget/MailMenuView$1;
.super Ljava/lang/Object;
.source "MailMenuView.java"

# interfaces
.implements Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/widget/MailMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/widget/MailMenuView;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/widget/MailMenuView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/widget/MailMenuView;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView$1;->a:Lcom/alibaba/alimei/mail/widget/MailMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 211
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView$1;->a:Lcom/alibaba/alimei/mail/widget/MailMenuView;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/widget/MailMenuView;->a(Lcom/alibaba/alimei/mail/widget/MailMenuView;)Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;->getAllDatas()Ljava/util/List;

    move-result-object v0

    .line 212
    .local v0, "tagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView$1;->a:Lcom/alibaba/alimei/mail/widget/MailMenuView;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/widget/MailMenuView;->b(Lcom/alibaba/alimei/mail/widget/MailMenuView;)Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;

    move-result-object v1

    .line 1133
    iget-object v2, v1, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->f:Lacx;

    if-eqz v2, :cond_0

    .line 1134
    iget-object v2, v1, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->f:Lacx;

    invoke-interface {v2, v0}, Lacx;->b(Ljava/util/List;)V

    .line 1135
    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->notifyDataSetChanged()V

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView$1;->a:Lcom/alibaba/alimei/mail/widget/MailMenuView;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/widget/MailMenuView;->c(Lcom/alibaba/alimei/mail/widget/MailMenuView;)Lcom/alibaba/alimei/mail/widget/MailMenuView$a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView$1;->a:Lcom/alibaba/alimei/mail/widget/MailMenuView;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/widget/MailMenuView;->c(Lcom/alibaba/alimei/mail/widget/MailMenuView;)Lcom/alibaba/alimei/mail/widget/MailMenuView$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/alimei/mail/widget/MailMenuView$a;->k()V

    .line 217
    :cond_1
    return-void
.end method


# virtual methods
.method public final onDataChanged()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/widget/MailMenuView$1;->a()V

    .line 193
    return-void
.end method

.method public final onLoadError(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 0
    .param p1, "error"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 208
    return-void
.end method

.method public final onLoadStarted()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public final onLoadSuccess()V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/widget/MailMenuView$1;->a()V

    .line 203
    return-void
.end method

.method public final onPreloadSuccess()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/widget/MailMenuView$1;->a()V

    .line 198
    return-void
.end method
