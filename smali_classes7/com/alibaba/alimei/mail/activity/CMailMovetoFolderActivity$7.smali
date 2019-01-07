.class final Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$7;
.super Ljava/lang/Object;
.source "CMailMovetoFolderActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/alimei/sdk/model/FolderModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$7;->a:Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 2
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 293
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->printStackTrace()V

    .line 294
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$7;->a:Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 295
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 279
    check-cast p1, Ljava/util/List;

    .line 1282
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$7;->a:Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1285
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1286
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$7;->a:Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;)Lact;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1288
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$7;->a:Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$7;->a:Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;Landroid/widget/LinearLayout;Ljava/util/List;I)V

    .line 279
    :cond_1
    return-void
.end method
