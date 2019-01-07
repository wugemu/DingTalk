.class final Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$17$1;
.super Ljava/lang/Object;
.source "MultiMailListActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$17;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$17;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$17;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$17;

    .prologue
    .line 1114
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$17$1;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 1128
    const-string/jumbo v0, "MultiMailListActivity"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 1129
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1114
    check-cast p1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 2117
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$17$1;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$17;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$17;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2118
    const-string/jumbo v0, "MultiMailListActivity"

    const-string/jumbo v1, "send mail err view click fail for activity is destroy"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2119
    :cond_0
    :goto_0
    return-void

    .line 2121
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$17$1;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$17;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$17;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2122
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$17$1;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$17;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$17;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->a(Lcom/alibaba/alimei/framework/model/AbsBaseModel;)V

    goto :goto_0
.end method
