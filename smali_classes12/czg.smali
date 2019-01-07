.class public final Lczg;
.super Ldab;
.source "UserOAFromViewHolder.java"


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isTo"    # Z

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldab;-><init>(Z)V

    .line 22
    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "entity"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 75
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

    .line 36
    invoke-super {p0, p1, p2, p3}, Ldab;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V

    .line 37
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 38
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v8, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 39
    .local v8, "oa":Ljava/lang/Object;
    instance-of v0, v8, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    if-eqz v0, :cond_1

    move-object v9, v8

    .line 40
    check-cast v9, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    .line 41
    .local v9, "oaDo":Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->bodyTitle:Ljava/lang/String;

    iget-object v1, v9, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->headerTitle:Ljava/lang/String;

    check-cast v8, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    .end local v8    # "oa":Ljava/lang/Object;
    iget-object v2, v8, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->headerBackground:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lczg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->bodyContent:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lczg;->a(Ljava/lang/String;)V

    .line 43
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->contentBackground:Ljava/lang/String;

    .line 1043
    invoke-static {v0, v11}, Lcpz;->a(Ljava/lang/String;I)I

    move-result v0

    .line 43
    invoke-virtual {p0, p1, v0}, Lczg;->a(Landroid/app/Activity;I)V

    .line 44
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->formList:[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAFormDo;

    invoke-virtual {p0, v0}, Lczg;->a([Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAFormDo;)V

    .line 45
    iget v0, v9, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->fileCount:I

    invoke-virtual {p0, v0}, Lczg;->c(I)V

    .line 46
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->author:Ljava/lang/String;

    iget-wide v2, v9, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->dateTs:J

    invoke-virtual {p0, v0, v2, v3}, Lczg;->a(Ljava/lang/String;J)V

    .line 47
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

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

    invoke-virtual/range {v0 .. v7}, Lczg;->a(ZJLandroid/app/Activity;Ljava/util/Map;[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;)V

    .line 48
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->mediaId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lczg;->b(Ljava/lang/String;)V

    .line 49
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->thanksAction:[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;

    invoke-virtual {p0, v0}, Lczg;->a([Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;)V

    .line 50
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->oARichText:Lcom/alibaba/android/dingtalkbase/models/dos/oa/OARichTextDo;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->oARichText:Lcom/alibaba/android/dingtalkbase/models/dos/oa/OARichTextDo;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OARichTextDo;->richText:Ljava/lang/String;

    iget-object v1, v9, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->oARichText:Lcom/alibaba/android/dingtalkbase/models/dos/oa/OARichTextDo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OARichTextDo;->richAppendText:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lczg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    const-string/jumbo v0, "reaction_read_count"

    invoke-static {p2, v0}, Lddq;->c(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lczg;->d(J)V

    .line 55
    invoke-virtual {p0, p2}, Lczg;->b(Lcom/alibaba/wukong/im/Message;)Z

    move-result v10

    .line 57
    .local v10, "shouldShowPadding":Z
    if-eqz v10, :cond_3

    .line 58
    invoke-virtual {p0, v11}, Lczg;->d(I)V

    .line 65
    .end local v9    # "oaDo":Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;
    .end local v10    # "shouldShowPadding":Z
    :cond_1
    :goto_1
    return-void

    .restart local v9    # "oaDo":Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;
    :cond_2
    move v1, v11

    .line 47
    goto :goto_0

    .line 60
    .restart local v10    # "shouldShowPadding":Z
    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lczg;->d(I)V

    goto :goto_1
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 26
    sget v0, Lctk$g;->chatting_item_from:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lctk$g;->chatting_item_from_third_party:I

    return v0
.end method

.method protected final c(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 70
    return-void
.end method
