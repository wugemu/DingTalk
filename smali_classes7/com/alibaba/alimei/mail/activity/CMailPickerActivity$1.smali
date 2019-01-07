.class final Lcom/alibaba/alimei/mail/activity/CMailPickerActivity$1;
.super Ljava/lang/Object;
.source "CMailPickerActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;
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
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity$1;->b:Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity$1;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 57
    check-cast p1, Ljava/util/List;

    .line 1060
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity$1;->a:Landroid/content/Intent;

    const-string/jumbo v1, "msg_entity_list"

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1061
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity$1;->b:Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity$1;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1063
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity$1;->b:Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->finish()V

    .line 57
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 74
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 69
    return-void
.end method
