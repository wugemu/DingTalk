.class final Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$41;
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
        "Lcom/alibaba/alimei/sdk/model/FolderModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 544
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$41;->b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$41;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 566
    const-string/jumbo v0, "MultiMailListActivity"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 567
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 544
    check-cast p1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 1547
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$41;->b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1550
    if-nez p1, :cond_1

    .line 1551
    const-string/jumbo v0, "MultiMailListActivity"

    const-string/jumbo v1, "preload mail fail for folder is null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    const-string/jumbo v0, "mail preload"

    const-string/jumbo v1, "preload error"

    const-string/jumbo v2, "preload mail fail for folder is null"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lyo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    :cond_0
    :goto_0
    return-void

    .line 1555
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$41;->a:Ljava/lang/String;

    invoke-static {v0}, Lafw;->f(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;

    move-result-object v0

    .line 1556
    if-eqz v0, :cond_2

    .line 1557
    const-string/jumbo v1, "MultiMailListActivity"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "preload mail time: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->switchToFolder(Lcom/alibaba/alimei/framework/model/AbsBaseModel;)V

    goto :goto_0

    .line 1560
    :cond_2
    const-string/jumbo v0, "MultiMailListActivity"

    const-string/jumbo v1, "preload mail fail for displayer is null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
