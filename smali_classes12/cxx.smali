.class public final Lcxx;
.super Ldab;
.source "UserCMailToViewHolder.java"


# instance fields
.field protected Y:Ldac;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isTo"    # Z

    .prologue
    .line 19
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ldab;-><init>(Z)V

    .line 20
    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "entity"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 30
    iget-object v0, p0, Lcxx;->Y:Ldac;

    iget-boolean v1, p0, Lcxx;->T:Z

    invoke-virtual {v0, p1, p2, v1}, Ldac;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Z)V

    .line 31
    return-void
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    invoke-super {p0, p1, p2, p3}, Ldab;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V

    .line 47
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v2, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v2, :cond_1

    .line 48
    check-cast p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local p2    # "message":Lcom/alibaba/wukong/im/Message;
    iget-object v0, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 49
    .local v0, "mail":Ljava/lang/Object;
    instance-of v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 50
    check-cast v1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    .line 51
    .local v1, "mailDo":Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;
    iget-object v2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailTitle:Ljava/lang/String;

    .line 52
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lctk$i;->mail_header:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "#FFF25643"

    .line 51
    invoke-virtual {p0, v2, v3, v4}, Lcxx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailContent:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcxx;->a(Ljava/lang/String;)V

    .line 55
    iget v2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailFileCount:I

    invoke-virtual {p0, v2}, Lcxx;->c(I)V

    .line 56
    iget-object v2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailAuthor:Ljava/lang/String;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailDate:J

    invoke-virtual {p0, v2, v4, v5}, Lcxx;->a(Ljava/lang/String;J)V

    .line 57
    iget-object v2, p0, Lcxx;->w:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 58
    iget-object v2, p0, Lcxx;->w:Landroid/widget/ImageView;

    sget v3, Lctk$e;->mail_setting_icon:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    :cond_0
    iget-object v2, p0, Lcxx;->H:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    .end local v0    # "mail":Ljava/lang/Object;
    .end local v1    # "mailDo":Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;
    :cond_1
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lctk$g;->chatting_item_to:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lctk$g;->chatting_item_to_third_party:I

    return v0
.end method

.method protected final c(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 24
    iget-object v0, p0, Lcxx;->P:Lcts$b;

    invoke-static {p1, v0}, Ldac;->a(Landroid/view/View;Lcts$b;)Ldac;

    move-result-object v0

    iput-object v0, p0, Lcxx;->Y:Ldac;

    .line 25
    return-void
.end method
