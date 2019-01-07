.class final Lcom/alibaba/alimei/mail/activity/MailComposeActivity$4;
.super Ljava/lang/Object;
.source "MailComposeActivity.java"

# interfaces
.implements Laew$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    .prologue
    .line 1156
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$4;->b:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$4;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;I)V
    .locals 2
    .param p2, "requestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1159
    .local p1, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$4;->b:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v1}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1170
    :cond_0
    :goto_0
    return-void

    .line 1162
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$4;->b:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->dismissLoadingDialog()V

    .line 1163
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$4;->b:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    iget-object v1, v1, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    if-eqz v1, :cond_0

    .line 1164
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$4;->b:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    iget-object v1, v1, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .line 5558
    invoke-virtual {v1, p2, p1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(ILjava/util/List;)V

    .line 1165
    if-nez p1, :cond_2

    const/4 v0, 0x0

    .line 1166
    .local v0, "resultSize":I
    :goto_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$4;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1167
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$4;->b:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v1}, Lacp;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 1165
    .end local v0    # "resultSize":I
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1
.end method
