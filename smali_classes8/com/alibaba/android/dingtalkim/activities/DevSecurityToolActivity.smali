.class public Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "DevSecurityToolActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/alibaba/wukong/im/Message;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 42
    const-string/jumbo v0, "DevSecurityToolActivity"

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/wukong/im/Message;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;->f:Lcom/alibaba/wukong/im/Message;

    return-object p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 66
    .local v2, "vId":I
    sget v3, Lctk$f;->btn_load_message:I

    if-ne v2, v3, :cond_3

    .line 68
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 69
    :cond_0
    const-string/jumbo v3, "cid or mId is empty."

    invoke-static {v3}, Lcms;->a(Ljava/lang/String;)V

    .line 1177
    :cond_1
    :goto_0
    return-void

    .line 72
    :cond_2
    const-string/jumbo v3, "DevSecurityToolActivity"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "cId="

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, ", mId="

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "cId":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "mId":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1088
    const-string/jumbo v3, "crypto"

    const-string/jumbo v4, "DevSecurityToolActivity"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "loadMessageFromConverstaion cId="

    aput-object v9, v5, v8

    const/4 v8, 0x1

    aput-object v0, v5, v8

    const/4 v8, 0x2

    const-string/jumbo v9, ", mid="

    aput-object v9, v5, v8

    const/4 v8, 0x3

    .line 1089
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1088
    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    const-class v3, Lcom/alibaba/wukong/im/ConversationService;

    .line 1092
    invoke-static {v3}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/ConversationService;

    const-string/jumbo v4, "EVENTBUTLER"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity$1;

    invoke-direct {v5, p0, v6, v7}, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;J)V

    const-class v6, Lcom/alibaba/wukong/Callback;

    invoke-interface {v4, v5, v6, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/Callback;

    invoke-interface {v3, v4, v0}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 79
    .end local v0    # "cId":Ljava/lang/String;
    .end local v1    # "mId":Ljava/lang/String;
    :cond_3
    sget v3, Lctk$f;->btn_decrypt_message:I

    if-ne v2, v3, :cond_1

    .line 80
    const-string/jumbo v3, "DevSecurityToolActivity"

    const-string/jumbo v4, "decryptMessage begin"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;->f:Lcom/alibaba/wukong/im/Message;

    .line 1162
    instance-of v3, v4, Lcom/alibaba/wukong/im/message/MessageImpl;

    if-eqz v3, :cond_1

    move-object v3, v4

    .line 1163
    check-cast v3, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 1164
    invoke-virtual {v3}, Lcom/alibaba/wukong/im/message/MessageImpl;->decrypt()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1166
    const-string/jumbo v3, "crypto"

    const-string/jumbo v5, "DevSecurityToolActivity"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "decrypt message success. mid="

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    .line 1169
    if-eqz v4, :cond_1

    .line 1170
    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    .line 1172
    :pswitch_0
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;->e:Landroid/widget/TextView;

    move-object v3, v4

    check-cast v3, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1173
    const-string/jumbo v3, "crypto"

    const-string/jumbo v5, "DevSecurityToolActivity"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "decrypt message success. text="

    aput-object v8, v6, v7

    const/4 v7, 0x1

    check-cast v4, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v5, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1179
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;->e:Landroid/widget/TextView;

    const-string/jumbo v5, "\u89e3\u5bc6\u5931\u8d25"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1181
    const-string/jumbo v3, "crypto"

    const-string/jumbo v5, "DevSecurityToolActivity"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "decrypt message failed. mid="

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->localExtras()Ljava/util/Map;

    move-result-object v3

    .line 1183
    if-eqz v3, :cond_1

    .line 1184
    const-string/jumbo v5, "decrypt_reason"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1185
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1187
    const-string/jumbo v5, "crypto"

    const-string/jumbo v6, "DevSecurityToolActivity"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "decrypt message failed. reason="

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    const/4 v3, 0x2

    const-string/jumbo v8, ", mid="

    aput-object v8, v7, v3

    const/4 v3, 0x3

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1170
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    sget v0, Lctk$g;->activity_dev_security_tool:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;->setContentView(I)V

    .line 55
    sget v0, Lctk$f;->et_cid:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;->b:Landroid/widget/EditText;

    .line 56
    sget v0, Lctk$f;->et_mid:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;->c:Landroid/widget/EditText;

    .line 57
    sget v0, Lctk$f;->tv_load_message_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;->d:Landroid/widget/TextView;

    .line 58
    sget v0, Lctk$f;->tv_decrypt_message:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;->e:Landroid/widget/TextView;

    .line 60
    return-void
.end method
