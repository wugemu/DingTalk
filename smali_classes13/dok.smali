.class public final Ldok;
.super Ljava/lang/Object;
.source "MdUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;
    .locals 9
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/16 v8, 0x4b4

    .line 97
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v6

    if-nez v6, :cond_2

    .line 98
    :cond_0
    const/4 v5, 0x0

    .line 143
    :cond_1
    :goto_0
    return-object v5

    .line 100
    :cond_2
    const/4 v5, 0x0

    .line 101
    .local v5, "text":Ljava/lang/String;
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    .line 102
    .local v2, "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v6

    const/16 v7, 0x4b0

    if-ne v6, v7, :cond_4

    .line 103
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;->text()Ljava/lang/String;

    move-result-object v5

    .line 122
    :cond_3
    :goto_1
    instance-of v6, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v6, :cond_1

    move-object v0, p0

    .line 123
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .line 124
    .local v0, "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    iget-object v6, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v6, v6, Lcom/alibaba/android/dingtalkim/base/model/MarkdownBaseDo;

    if-eqz v6, :cond_1

    .line 125
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/MarkdownBaseDo;

    .line 126
    .local v1, "markdownBaseDo":Lcom/alibaba/android/dingtalkim/base/model/MarkdownBaseDo;
    iget v6, v1, Lcom/alibaba/android/dingtalkim/base/model/MarkdownBaseDo;->mdVersion:I

    const/4 v7, 0x4

    if-gt v6, v7, :cond_1

    .line 127
    iget-object v6, v1, Lcom/alibaba/android/dingtalkim/base/model/MarkdownBaseDo;->mdNew:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 128
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v6

    if-ne v6, v8, :cond_9

    instance-of v6, v2, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconExContent;

    if-eqz v6, :cond_9

    .line 131
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconExContent;

    .line 132
    .local v4, "robotMarkdownIconExContent":Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconExContent;
    iget-object v6, v1, Lcom/alibaba/android/dingtalkim/base/model/MarkdownBaseDo;->mdNew:Ljava/lang/String;

    invoke-static {v4, v6}, Ldoh;->a(Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconExContent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 104
    .end local v0    # "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    .end local v1    # "markdownBaseDo":Lcom/alibaba/android/dingtalkim/base/model/MarkdownBaseDo;
    .end local v4    # "robotMarkdownIconExContent":Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconExContent;
    :cond_4
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v6

    const/16 v7, 0x4b1

    if-ne v6, v7, :cond_5

    .line 105
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;->text()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 106
    :cond_5
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v6

    const/16 v7, 0x4b2

    if-ne v6, v7, :cond_6

    .line 107
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconContent;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconContent;->text()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 108
    :cond_6
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v6

    if-ne v6, v8, :cond_7

    .line 109
    instance-of v6, v2, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconExContent;

    if-eqz v6, :cond_3

    .line 111
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconExContent;

    .line 112
    .restart local v4    # "robotMarkdownIconExContent":Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconExContent;
    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconExContent;->text()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Ldoh;->a(Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconExContent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 113
    goto :goto_1

    .line 114
    .end local v4    # "robotMarkdownIconExContent":Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconExContent;
    :cond_7
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v6

    const/16 v7, 0x578

    if-ne v6, v7, :cond_8

    .line 115
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;->text()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 116
    :cond_8
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v6

    const/16 v7, 0x4b3

    if-ne v6, v7, :cond_3

    .line 117
    invoke-static {p0}, Ldkc;->K(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;

    move-result-object v3

    .line 118
    .local v3, "miniAppDo":Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;
    if-eqz v3, :cond_3

    .line 119
    iget-object v5, v3, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->markdown:Ljava/lang/String;

    goto/16 :goto_1

    .line 134
    .end local v3    # "miniAppDo":Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;
    .restart local v0    # "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    .restart local v1    # "markdownBaseDo":Lcom/alibaba/android/dingtalkim/base/model/MarkdownBaseDo;
    :cond_9
    iget-object v5, v1, Lcom/alibaba/android/dingtalkim/base/model/MarkdownBaseDo;->mdNew:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "markdownContent"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 56
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-object v3

    .line 60
    :cond_1
    :try_start_0
    const-string/jumbo v4, "!\\[.*?\\]\\((.*?)\\)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 61
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 62
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 65
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "pattern":Ljava/util/regex/Pattern;
    :catch_0
    move-exception v0

    .line 66
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Lldm;Ljava/lang/String;JLjava/lang/String;)Lldd;
    .locals 10
    .param p0, "parser"    # Lldm;
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "messageId"    # J
    .param p4, "displayText"    # Ljava/lang/String;

    .prologue
    .line 73
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 74
    :cond_0
    const/4 v0, 0x0

    .line 88
    :goto_0
    return-object v0

    .line 78
    :cond_1
    const/4 v4, 0x2

    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "text:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p4, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 80
    .local v2, "startTime":J
    invoke-virtual {p0, p4}, Lldm;->a(Ljava/lang/String;)Lldd;

    move-result-object v0

    .line 81
    .local v0, "node":Lldd;
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "text:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p4, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "\n consumes:"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    .end local v0    # "node":Lldd;
    .end local v2    # "startTime":J
    :catch_0
    move-exception v1

    .line 83
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    const-string/jumbo v4, "Markdown-Parse"

    const/4 v5, 0x0

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, " error,text"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 85
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, ",error:"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 84
    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {p4}, Ldog;->a(Ljava/lang/String;)Lldd;

    move-result-object v0

    .restart local v0    # "node":Lldd;
    goto :goto_0
.end method

.method static synthetic a(Landroid/app/Activity;)V
    .locals 1
    .param p0, "x0"    # Landroid/app/Activity;

    .prologue
    .line 51
    .line 1299
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-nez v0, :cond_1

    .line 1300
    .end local p0    # "x0":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 1302
    .restart local p0    # "x0":Landroid/app/Activity;
    :cond_1
    check-cast p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .end local p0    # "x0":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    goto :goto_0
.end method
