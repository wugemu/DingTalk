.class final Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$42;
.super Ljava/lang/Object;
.source "MultiMailListActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->i()V
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
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 602
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$42;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 614
    const-string/jumbo v0, "MultiMailListActivity"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 615
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$42;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    :goto_0
    return-void

    .line 618
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 602
    check-cast p1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 1606
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$42;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1607
    :cond_0
    :goto_0
    return-void

    .line 1609
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$42;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Lcom/alibaba/alimei/sdk/model/FolderModel;)V

    goto :goto_0
.end method
