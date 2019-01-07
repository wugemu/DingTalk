.class final Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$30;
.super Ljava/lang/Object;
.source "MultiMailListActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;
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
.field final synthetic a:Lcom/alibaba/alimei/sdk/model/FolderModel;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Lcom/alibaba/alimei/sdk/model/FolderModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 1684
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$30;->b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$30;->a:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 3
    .param p1, "e"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1718
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "MultiMailListActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "checkAlimail, getFolderApi, e:"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 1719
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->printStackTrace()V

    .line 1720
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$30;->b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$30;->a:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/sdk/model/FolderModel;)V

    .line 1721
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1684
    check-cast p1, Ljava/util/HashMap;

    .line 2687
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$30;->b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 2688
    :cond_0
    :goto_0
    return-void

    .line 2690
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$30;->a:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 2691
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2693
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$30;->a:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isOutgoingFolder()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2694
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$30;->a:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/alibaba/alimei/sdk/model/FolderModel;->totalCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2708
    :goto_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$30;->b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$30$1;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$30$1;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$30;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2696
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$30;->a:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/alibaba/alimei/sdk/model/FolderModel;->unreadCount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2698
    :catch_0
    move-exception v0

    .line 2699
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2702
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$30;->a:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isOutgoingFolder()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2703
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$30;->a:Lcom/alibaba/alimei/sdk/model/FolderModel;

    iput v2, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->totalCount:I

    goto :goto_1

    .line 2705
    :cond_4
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$30;->a:Lcom/alibaba/alimei/sdk/model/FolderModel;

    iput v2, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->unreadCount:I

    goto :goto_1
.end method
