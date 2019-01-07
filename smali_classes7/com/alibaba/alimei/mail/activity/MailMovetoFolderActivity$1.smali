.class final Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity$1;
.super Ljava/lang/Object;
.source "MailMovetoFolderActivity.java"

# interfaces
.implements Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataChanged()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->a(Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;)V

    .line 77
    return-void
.end method

.method public final onLoadError(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "error"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 91
    const-string/jumbo v0, "MailMovetoFolderActivity"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 92
    return-void
.end method

.method public final onLoadStarted()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public final onLoadSuccess()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->a(Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;)V

    .line 87
    return-void
.end method

.method public final onPreloadSuccess()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->a(Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;)V

    .line 82
    return-void
.end method
