.class public final Lcxw;
.super Ldab;
.source "UserCMailFromViewHolder.java"


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isTo"    # Z

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldab;-><init>(Z)V

    .line 19
    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "entity"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 59
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
    .line 33
    invoke-super {p0, p1, p2, p3}, Ldab;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V

    .line 34
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    if-eqz v2, :cond_0

    instance-of v2, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v2, :cond_0

    .line 35
    check-cast p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local p2    # "message":Lcom/alibaba/wukong/im/Message;
    iget-object v0, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 36
    .local v0, "mail":Ljava/lang/Object;
    instance-of v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 37
    check-cast v1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    .line 38
    .local v1, "mailDo":Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;
    iget-object v2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailTitle:Ljava/lang/String;

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

    invoke-virtual {p0, v2, v3, v4}, Lcxw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailContent:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcxw;->a(Ljava/lang/String;)V

    .line 40
    iget v2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailFileCount:I

    invoke-virtual {p0, v2}, Lcxw;->c(I)V

    .line 41
    iget-object v2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailAuthor:Ljava/lang/String;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailDate:J

    invoke-virtual {p0, v2, v4, v5}, Lcxw;->a(Ljava/lang/String;J)V

    .line 42
    iget-object v2, p0, Lcxw;->w:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 43
    iget-object v2, p0, Lcxw;->w:Landroid/widget/ImageView;

    sget v3, Lctk$e;->mail_setting_icon:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    .end local v0    # "mail":Ljava/lang/Object;
    .end local v1    # "mailDo":Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;
    :cond_0
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 23
    sget v0, Lctk$g;->chatting_item_from:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lctk$g;->chatting_item_from_third_party:I

    return v0
.end method

.method protected final c(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 54
    return-void
.end method
