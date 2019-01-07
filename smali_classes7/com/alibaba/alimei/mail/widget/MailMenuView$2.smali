.class final Lcom/alibaba/alimei/mail/widget/MailMenuView$2;
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
    .line 220
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView$2;->a:Lcom/alibaba/alimei/mail/widget/MailMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 247
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView$2;->a:Lcom/alibaba/alimei/mail/widget/MailMenuView;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/widget/MailMenuView;->d(Lcom/alibaba/alimei/mail/widget/MailMenuView;)Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->getAllDatas()Ljava/util/List;

    move-result-object v0

    .line 248
    .local v0, "folderList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView$2;->a:Lcom/alibaba/alimei/mail/widget/MailMenuView;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/widget/MailMenuView;->b(Lcom/alibaba/alimei/mail/widget/MailMenuView;)Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;

    move-result-object v1

    .line 1126
    iget-object v2, v1, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->f:Lacx;

    if-eqz v2, :cond_0

    .line 1127
    iget-object v2, v1, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->f:Lacx;

    invoke-interface {v2, v0}, Lacx;->a(Ljava/util/List;)V

    .line 1128
    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->notifyDataSetChanged()V

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView$2;->a:Lcom/alibaba/alimei/mail/widget/MailMenuView;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/widget/MailMenuView;->e(Lcom/alibaba/alimei/mail/widget/MailMenuView;)V

    .line 250
    return-void
.end method


# virtual methods
.method public final onDataChanged()V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/widget/MailMenuView$2;->a()V

    .line 229
    return-void
.end method

.method public final onLoadError(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 0
    .param p1, "error"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 244
    return-void
.end method

.method public final onLoadStarted()V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method public final onLoadSuccess()V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/widget/MailMenuView$2;->a()V

    .line 239
    return-void
.end method

.method public final onPreloadSuccess()V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/widget/MailMenuView$2;->a()V

    .line 234
    return-void
.end method
