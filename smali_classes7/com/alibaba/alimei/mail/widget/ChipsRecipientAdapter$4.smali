.class final Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$4;
.super Ljava/lang/Object;
.source "ChipsRecipientAdapter.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;
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
        "Lcom/alibaba/alimei/contact/model/SearchContactResultModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$4;->b:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "e"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 427
    const-string/jumbo v0, "searchFromAlimeiServerContacts"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 428
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 409
    check-cast p1, Lcom/alibaba/alimei/contact/model/SearchContactResultModel;

    .line 1412
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$4;->b:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1416
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$4;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$4;->b:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->a(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1417
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$4;->b:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$4;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$4;->b:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->g(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->a(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;Ljava/util/ArrayList;Lcom/alibaba/alimei/contact/model/SearchContactResultModel;)V

    .line 1420
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$4;->b:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->o:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1421
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$4;->a:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1422
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$4;->b:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    iget-object v1, v1, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->o:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 409
    :cond_1
    return-void
.end method
