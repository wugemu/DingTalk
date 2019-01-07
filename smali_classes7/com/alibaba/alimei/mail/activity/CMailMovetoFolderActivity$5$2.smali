.class final Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$5$2;
.super Ljava/lang/Object;
.source "CMailMovetoFolderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$5;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$5;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$5;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$5$2;->a:Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$5;

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
    .line 218
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$5$2;->a:Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$5;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$5;->b:Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$5$2;->a:Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$5;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$5;->b:Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$5$2;->a:Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$5;

    iget-boolean v1, v1, Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$5;->a:Z

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;Z)V

    goto :goto_0
.end method
