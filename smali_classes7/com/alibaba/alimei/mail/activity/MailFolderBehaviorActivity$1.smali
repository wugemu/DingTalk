.class final Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity$1;
.super Ljava/lang/Object;
.source "MailFolderBehaviorActivity.java"

# interfaces
.implements Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataChanged()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->a(Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;)V

    .line 58
    :cond_0
    return-void
.end method

.method public final onLoadError(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "error"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 76
    const-string/jumbo v0, "MailFolderBehaviorActivity"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 77
    return-void
.end method

.method public final onLoadStarted()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public final onLoadSuccess()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->a(Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;)V

    .line 72
    :cond_0
    return-void
.end method

.method public final onPreloadSuccess()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;->a(Lcom/alibaba/alimei/mail/activity/MailFolderBehaviorActivity;)V

    .line 65
    :cond_0
    return-void
.end method
