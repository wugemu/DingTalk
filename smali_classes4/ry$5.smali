.class final Lry$5;
.super Ljava/lang/Object;
.source "ChoosePeopleFromMailHelper.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lry;


# direct methods
.method constructor <init>(Lry;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lry;

    .prologue
    .line 267
    iput-object p1, p0, Lry$5;->b:Lry;

    iput-object p2, p0, Lry$5;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 267
    check-cast p1, Ljava/util/List;

    .line 1270
    iget-object v0, p0, Lry$5;->b:Lry;

    invoke-static {v0}, Lry;->c(Lry;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-result-object v0

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1273
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1275
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1276
    const-string/jumbo v0, "ding_source"

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1277
    const-string/jumbo v2, "seleced_members"

    iget-object v0, p0, Lry$5;->a:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1278
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    .line 1279
    const-string/jumbo v2, "ding_attachment"

    invoke-static {v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->getAttachment(Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;)Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1280
    const-string/jumbo v0, "ding_text_content"

    iget-object v2, p0, Lry$5;->b:Lry;

    invoke-static {v2}, Lry;->c(Lry;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-result-object v2

    sget v3, Laxo$i;->cmail_ding_default_title:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    .line 1282
    iget-object v2, p0, Lry$5;->b:Lry;

    invoke-static {v2}, Lry;->c(Lry;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 267
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 294
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 289
    return-void
.end method
