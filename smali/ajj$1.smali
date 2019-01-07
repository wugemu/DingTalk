.class public final Lajj$1;
.super Ljava/lang/Object;
.source "CMailSettingsUtil.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lajj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
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
.field final synthetic a:Lxv;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lxv;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lajj$1;->a:Lxv;

    iput-object p2, p0, Lajj$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 3
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 107
    const-string/jumbo v0, "CMailSettingsUtil"

    const-string/jumbo v1, " getMailNotificationTips: "

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lajj$1;->a:Lxv;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lajj$1;->a:Lxv;

    invoke-interface {v0, p1}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 111
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 84
    check-cast p1, Ljava/util/List;

    .line 1087
    if-eqz p1, :cond_4

    .line 1088
    const-string/jumbo v1, ""

    .line 1090
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 1091
    if-eqz v0, :cond_5

    .line 1092
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isInboxFolder()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isCustomMailFolder()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1093
    :cond_0
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lrx;->a(Landroid/content/Context;Lcom/alibaba/alimei/framework/model/AbsBaseModel;)Ljava/lang/String;

    move-result-object v3

    .line 1094
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v1, v4, v0

    const/4 v5, 0x1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    :goto_1
    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v3, v4, v0

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v1, v0

    .line 1097
    goto :goto_0

    .line 1094
    :cond_1
    const-string/jumbo v0, "\u3001"

    goto :goto_1

    .line 1098
    :cond_2
    iget-object v0, p0, Lajj$1;->a:Lxv;

    if-eqz v0, :cond_4

    .line 1099
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lajj$1;->b:Landroid/content/Context;

    sget v1, Laxo$i;->dt_mail_notification_close_description:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1100
    :cond_3
    iget-object v0, p0, Lajj$1;->a:Lxv;

    invoke-interface {v0, v1}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 84
    :cond_4
    return-void

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method
