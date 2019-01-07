.class final Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$5;
.super Ljava/lang/Object;
.source "CMailMovetoFolderActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$5;->b:Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;

    iput-boolean p2, p0, Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$5;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 2
    .param p1, "e"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 215
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$5;->b:Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$5$2;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$5$2;-><init>(Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$5;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 224
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 198
    .line 1201
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$5;->b:Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$5$1;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$5$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$5;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 198
    return-void
.end method
