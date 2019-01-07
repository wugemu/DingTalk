.class public abstract Ldav;
.super Lctv;
.source "AbsResumeAuthViewHolder.java"


# instance fields
.field protected S:Landroid/widget/TextView;

.field protected Y:Landroid/view/View;

.field protected Z:Landroid/widget/TextView;

.field protected a:Landroid/widget/TextView;

.field protected aa:J

.field protected ab:I

.field protected b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isToMessage"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lctv;-><init>(Z)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Ldav;->ab:I

    .line 37
    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 120
    sget v0, Lctk$f;->chatting_resume_auth_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldav;->a:Landroid/widget/TextView;

    .line 121
    sget v0, Lctk$f;->chatting_resume_auth_left:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldav;->b:Landroid/widget/TextView;

    .line 122
    sget v0, Lctk$f;->chatting_resume_auth_right:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldav;->S:Landroid/widget/TextView;

    .line 123
    sget v0, Lctk$f;->chatting_resume_auth_line:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldav;->Y:Landroid/view/View;

    .line 124
    sget v0, Lctk$f;->chatting_resume_auth_status:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldav;->Z:Landroid/widget/TextView;

    .line 126
    return-void
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 41
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    if-eqz v4, :cond_1

    instance-of v4, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v4, :cond_1

    .line 42
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    iput-wide v4, p0, Ldav;->aa:J

    move-object v4, p2

    .line 43
    check-cast v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v2, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 44
    .local v2, "thirdPartyDo":Ljava/lang/Object;
    instance-of v4, v2, Lcom/alibaba/android/dingtalkim/base/model/ResumeAuthDo;

    if-eqz v4, :cond_5

    move-object v0, v2

    .line 45
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/ResumeAuthDo;

    .line 46
    .local v0, "resumeAuthDo":Lcom/alibaba/android/dingtalkim/base/model/ResumeAuthDo;
    iget-object v5, p0, Ldav;->a:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/ResumeAuthDo;->text:Ljava/lang/String;

    if-nez v4, :cond_2

    const-string/jumbo v4, ""

    :goto_0
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    const-string/jumbo v4, "im_campus_resume_result"

    invoke-interface {p2, v4}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "val":Ljava/lang/String;
    invoke-static {v3, v8}, Ligb;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ldav;->ab:I

    .line 1144
    .local v1, "status":I
    if-nez v1, :cond_3

    .line 1145
    iget-object v4, p0, Ldav;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1146
    iget-object v4, p0, Ldav;->S:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1147
    iget-object v4, p0, Ldav;->Y:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1148
    iget-object v4, p0, Ldav;->Z:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1149
    iget-object v4, p0, Ldav;->Z:Landroid/widget/TextView;

    sget v5, Lctk$i;->dt_im_message_card_resume_auth_status_not_allowed:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 50
    :goto_1
    if-eqz v1, :cond_0

    if-eq v1, v9, :cond_0

    .line 51
    iget-object v4, p0, Ldav;->b:Landroid/widget/TextView;

    new-instance v5, Ldav$1;

    invoke-direct {v5, p0, v0, p2, p1}, Ldav$1;-><init>(Ldav;Lcom/alibaba/android/dingtalkim/base/model/ResumeAuthDo;Lcom/alibaba/wukong/im/Message;Landroid/app/Activity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v4, p0, Ldav;->S:Landroid/widget/TextView;

    new-instance v5, Ldav$2;

    invoke-direct {v5, p0, v0, p2, p1}, Ldav$2;-><init>(Ldav;Lcom/alibaba/android/dingtalkim/base/model/ResumeAuthDo;Lcom/alibaba/wukong/im/Message;Landroid/app/Activity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    :cond_0
    iget-object v4, p0, Ldav;->r:Landroid/view/View;

    new-instance v5, Ldav$3;

    invoke-direct {v5, p0}, Ldav$3;-><init>(Ldav;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 115
    .end local v0    # "resumeAuthDo":Lcom/alibaba/android/dingtalkim/base/model/ResumeAuthDo;
    .end local v1    # "status":I
    .end local v2    # "thirdPartyDo":Ljava/lang/Object;
    .end local v3    # "val":Ljava/lang/String;
    :cond_1
    :goto_2
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    .line 116
    return-void

    .line 46
    .restart local v0    # "resumeAuthDo":Lcom/alibaba/android/dingtalkim/base/model/ResumeAuthDo;
    .restart local v2    # "thirdPartyDo":Ljava/lang/Object;
    :cond_2
    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/ResumeAuthDo;->text:Ljava/lang/String;

    goto :goto_0

    .line 1150
    .restart local v1    # "status":I
    .restart local v3    # "val":Ljava/lang/String;
    :cond_3
    if-ne v1, v9, :cond_4

    .line 1151
    iget-object v4, p0, Ldav;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1152
    iget-object v4, p0, Ldav;->S:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1153
    iget-object v4, p0, Ldav;->Y:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1154
    iget-object v4, p0, Ldav;->Z:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1155
    iget-object v4, p0, Ldav;->Z:Landroid/widget/TextView;

    sget v5, Lctk$i;->dt_im_message_card_resume_auth_status_allowed:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1157
    :cond_4
    iget-object v4, p0, Ldav;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1158
    iget-object v4, p0, Ldav;->S:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1159
    iget-object v4, p0, Ldav;->Y:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1160
    iget-object v4, p0, Ldav;->Z:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 112
    .end local v0    # "resumeAuthDo":Lcom/alibaba/android/dingtalkim/base/model/ResumeAuthDo;
    .end local v1    # "status":I
    .end local v3    # "val":Ljava/lang/String;
    :cond_5
    iput v8, p0, Ldav;->ab:I

    goto :goto_2
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Ldav;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Ldav;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Ldav;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Ldav;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
