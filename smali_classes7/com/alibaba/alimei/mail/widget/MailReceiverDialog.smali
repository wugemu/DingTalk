.class public Lcom/alibaba/alimei/mail/widget/MailReceiverDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "MailReceiverDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    sget v0, Lcig$k;->CustomDialog:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/alimei/mail/widget/MailReceiverDialog;-><init>(Landroid/content/Context;I)V

    .line 52
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 56
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 157
    if-nez p1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 162
    .local v0, "id":I
    sget v1, Laxo$f;->close_btn:I

    if-ne v0, v1, :cond_2

    .line 163
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/MailReceiverDialog;->dismiss()V

    goto :goto_0

    .line 164
    :cond_2
    sget v1, Laxo$f;->delete:I

    if-ne v0, v1, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/MailReceiverDialog;->dismiss()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 60
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/widget/MailReceiverDialog;->requestWindowFeature(I)Z

    .line 61
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 62
    sget v1, Laxo$g;->mail_receiver_dialog:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/widget/MailReceiverDialog;->setContentView(I)V

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/MailReceiverDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 65
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 66
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 1074
    :cond_0
    sget v1, Laxo$f;->user_profile_avatar:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/widget/MailReceiverDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/MailReceiverDialog;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1075
    sget v1, Laxo$f;->receiver_tv:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/widget/MailReceiverDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/MailReceiverDialog;->a:Landroid/widget/TextView;

    .line 1076
    sget v1, Laxo$f;->name_tv:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/widget/MailReceiverDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/MailReceiverDialog;->c:Landroid/widget/TextView;

    .line 1077
    sget v1, Laxo$f;->email_tv:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/widget/MailReceiverDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/MailReceiverDialog;->d:Landroid/widget/TextView;

    .line 1078
    sget v1, Laxo$f;->close_btn:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/widget/MailReceiverDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/MailReceiverDialog;->e:Landroid/widget/ImageView;

    .line 1079
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/MailReceiverDialog;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1080
    sget v1, Laxo$f;->remind_tv:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/widget/MailReceiverDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/MailReceiverDialog;->b:Landroid/widget/TextView;

    .line 1082
    sget v1, Laxo$f;->delete:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/widget/MailReceiverDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 174
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onDetachedFromWindow()V

    .line 175
    return-void
.end method
