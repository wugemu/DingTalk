.class final Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$1;
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/alimei/sdk/model/FrequentContactModel;",
        ">;>;"
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
    .line 370
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$1;->b:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "e"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 388
    const-string/jumbo v0, "searchInFrequentContacts"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 389
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 370
    check-cast p1, Ljava/util/List;

    .line 1373
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$1;->b:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1377
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$1;->b:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->a(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1378
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$1;->b:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$1;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->a(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;Ljava/util/List;)V

    .line 1381
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$1;->b:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->o:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1382
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$1;->a:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1383
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$1;->b:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    iget-object v1, v1, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->o:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 370
    :cond_1
    return-void
.end method
