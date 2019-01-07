.class public final Lczh;
.super Ldab;
.source "UserOAToViewHolder.java"


# instance fields
.field protected Y:Ldac;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isTo"    # Z

    .prologue
    .line 23
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ldab;-><init>(Z)V

    .line 24
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
    .line 34
    iget-object v0, p0, Lczh;->Y:Ldac;

    iget-boolean v1, p0, Lczh;->T:Z

    invoke-virtual {v0, p1, p2, v1}, Ldac;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Z)V

    .line 35
    return-void
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x0

    .line 49
    invoke-super {p0, p1, p2, p3}, Ldab;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V

    .line 50
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v0, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v0, :cond_2

    move-object v0, p2

    .line 51
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v8, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 52
    .local v8, "oa":Ljava/lang/Object;
    instance-of v0, v8, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    if-eqz v0, :cond_2

    move-object v9, v8

    .line 53
    check-cast v9, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    .line 54
    .local v9, "oaDo":Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->bodyTitle:Ljava/lang/String;

    iget-object v1, v9, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->headerTitle:Ljava/lang/String;

    check-cast v8, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    .end local v8    # "oa":Ljava/lang/Object;
    iget-object v2, v8, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->headerBackground:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lczh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->bodyContent:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lczh;->a(Ljava/lang/String;)V

    .line 56
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->contentBackground:Ljava/lang/String;

    .line 1043
    invoke-static {v0, v11}, Lcpz;->a(Ljava/lang/String;I)I

    move-result v0

    .line 56
    invoke-virtual {p0, p1, v0}, Lczh;->a(Landroid/app/Activity;I)V

    .line 57
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->formList:[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAFormDo;

    invoke-virtual {p0, v0}, Lczh;->a([Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAFormDo;)V

    .line 58
    iget v0, v9, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->fileCount:I

    invoke-virtual {p0, v0}, Lczh;->c(I)V

    .line 59
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->author:Ljava/lang/String;

    iget-wide v2, v9, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->dateTs:J

    invoke-virtual {p0, v0, v2, v3}, Lczh;->a(Ljava/lang/String;J)V

    .line 60
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->localExtras()Ljava/util/Map;

    move-result-object v5

    iget-object v6, v9, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->oaReceiverActionDos:[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;

    iget-object v7, v9, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->oaSenderActionDos:[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v7}, Lczh;->a(ZJLandroid/app/Activity;Ljava/util/Map;[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;)V

    .line 61
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->thanksAction:[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->thanksAction:[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;

    invoke-virtual {p0, v0}, Lczh;->a([Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;)V

    .line 64
    :cond_0
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->mediaId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lczh;->b(Ljava/lang/String;)V

    .line 65
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->oARichText:Lcom/alibaba/android/dingtalkbase/models/dos/oa/OARichTextDo;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->oARichText:Lcom/alibaba/android/dingtalkbase/models/dos/oa/OARichTextDo;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OARichTextDo;->richText:Ljava/lang/String;

    iget-object v1, v9, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->oARichText:Lcom/alibaba/android/dingtalkbase/models/dos/oa/OARichTextDo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OARichTextDo;->richAppendText:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lczh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_1
    const-string/jumbo v0, "reaction_read_count"

    invoke-static {p2, v0}, Lddq;->c(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lczh;->d(J)V

    .line 70
    invoke-virtual {p0, p2}, Lczh;->b(Lcom/alibaba/wukong/im/Message;)Z

    move-result v10

    .line 72
    .local v10, "shouldShowPadding":Z
    if-eqz v10, :cond_4

    .line 73
    invoke-virtual {p0, v11}, Lczh;->d(I)V

    .line 80
    .end local v9    # "oaDo":Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;
    .end local v10    # "shouldShowPadding":Z
    :cond_2
    :goto_1
    return-void

    .restart local v9    # "oaDo":Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;
    :cond_3
    move v1, v11

    .line 60
    goto :goto_0

    .line 75
    .restart local v10    # "shouldShowPadding":Z
    :cond_4
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lczh;->d(I)V

    goto :goto_1
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lctk$g;->chatting_item_to:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lctk$g;->chatting_item_to_third_party:I

    return v0
.end method

.method protected final c(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 28
    iget-object v0, p0, Lczh;->P:Lcts$b;

    invoke-static {p1, v0}, Ldac;->a(Landroid/view/View;Lcts$b;)Ldac;

    move-result-object v0

    iput-object v0, p0, Lczh;->Y:Ldac;

    .line 29
    return-void
.end method
