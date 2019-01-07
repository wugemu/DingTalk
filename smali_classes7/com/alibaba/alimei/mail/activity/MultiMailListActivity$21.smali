.class final Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$21;
.super Ljava/lang/Object;
.source "MultiMailListActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->c(Z)V
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
.field final synthetic a:Lcom/alibaba/alimei/sdk/model/FolderModel;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Lcom/alibaba/alimei/sdk/model/FolderModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 1332
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$21;->b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$21;->a:Lcom/alibaba/alimei/sdk/model/FolderModel;

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
    .line 1343
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$21;->b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1348
    :goto_0
    return-void

    .line 1346
    :cond_0
    const-string/jumbo v0, "MultiMailListActivity"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 1347
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$21;->b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$21;->a:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Lcom/alibaba/alimei/framework/model/AbsBaseModel;)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1332
    check-cast p1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 2335
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$21;->b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 2336
    :cond_0
    :goto_0
    return-void

    .line 2338
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$21;->b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Lcom/alibaba/alimei/framework/model/AbsBaseModel;)V

    goto :goto_0
.end method
