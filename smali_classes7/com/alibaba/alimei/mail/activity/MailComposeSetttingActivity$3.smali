.class final Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$3;
.super Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;
.source "MailComposeSetttingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter",
        "<",
        "Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/view/LayoutInflater;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;Landroid/content/Context;Ljava/util/List;Landroid/view/LayoutInflater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;
    .param p2, "mContext"    # Landroid/content/Context;

    .prologue
    .line 234
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$b;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$3;->b:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    iput-object p4, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$3;->a:Landroid/view/LayoutInflater;

    invoke-direct {p0, p2, p3}, Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 238
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$3;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$b;

    .line 242
    .local v0, "option":Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$b;
    if-nez p2, :cond_2

    .line 243
    new-instance v1, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$a;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$3;->b:Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    invoke-direct {v1, v2, v4}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$a;-><init>(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;B)V

    .line 244
    .local v1, "viewHolder":Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$a;
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$3;->a:Landroid/view/LayoutInflater;

    sget v3, Laxo$g;->quick_reply_option_layout:I

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 245
    sget v2, Laxo$f;->option_title:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$a;->a:Landroid/widget/TextView;

    .line 246
    sget v2, Laxo$f;->option_desc:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$a;->b:Landroid/widget/TextView;

    .line 248
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 253
    :goto_0
    iget-object v2, v1, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$a;->a:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 254
    iget-object v2, v1, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$a;->a:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :cond_0
    iget-object v2, v1, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$a;->b:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 258
    iget-object v2, v1, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$a;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1424
    :cond_1
    iget-object v2, v0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$b;->c:Ljava/util/Date;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    .line 261
    if-eqz v2, :cond_3

    .line 262
    sget v2, Laxo$c;->ui_common_alert_button_disabled_bg_color:I

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 263
    invoke-virtual {p2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 264
    invoke-virtual {p2, v5}, Landroid/view/View;->setClickable(Z)V

    .line 271
    :goto_1
    return-object p2

    .line 250
    .end local v1    # "viewHolder":Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$a;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$a;

    .restart local v1    # "viewHolder":Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$a;
    goto :goto_0

    .line 266
    :cond_3
    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 267
    invoke-virtual {p2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 268
    invoke-virtual {p2, v4}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1
.end method
