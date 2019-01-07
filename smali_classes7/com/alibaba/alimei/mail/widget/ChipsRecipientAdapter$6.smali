.class final Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$6;
.super Ljava/lang/Object;
.source "ChipsRecipientAdapter.java"

# interfaces
.implements Lcma;


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
        "Lcma",
        "<",
        "Labp;",
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
    .line 495
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$6;->b:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 495
    check-cast p1, Labp;

    .line 1498
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$6;->b:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1502
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$6;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$6;->b:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->a(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1503
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$6;->b:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$6;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$6;->b:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    .line 1504
    invoke-static {v2}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->h(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x5

    .line 1503
    invoke-static {v0, v1, p1, v2, v3}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->a(Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;Ljava/lang/String;Labp;Ljava/util/ArrayList;I)V

    .line 1506
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$6;->b:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->o:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1507
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$6;->a:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1508
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$6;->b:Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    iget-object v1, v1, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->o:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 495
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 517
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 513
    return-void
.end method
