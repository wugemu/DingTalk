.class final Lcom/alibaba/alimei/mail/activity/CMailPickerActivity$2;
.super Ljava/lang/Object;
.source "CMailPickerActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->onCreate(Landroid/os/Bundle;)V
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
        "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;)V

    .line 106
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->printStackTrace()V

    .line 107
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 95
    check-cast p1, Ljava/util/List;

    .line 1099
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;)Lacv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lacv;->a(Ljava/util/List;)V

    .line 1100
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;)V

    .line 95
    return-void
.end method
