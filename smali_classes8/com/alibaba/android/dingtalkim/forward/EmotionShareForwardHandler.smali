.class public Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler;
.super Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;
.source "EmotionShareForwardHandler.java"


# instance fields
.field private mDelegate:Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

.field private mPackageFullDesc:Ljava/lang/String;

.field private mPackageId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;)V
    .locals 0
    .param p1, "emotionPackageId"    # Ljava/lang/String;
    .param p2, "emotionPackageFullDesc"    # Ljava/lang/String;
    .param p3, "emotionSendDelegate"    # Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler;->mPackageId:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler;->mPackageFullDesc:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler;->mDelegate:Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler;->mPackageId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler;->mPackageFullDesc:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getForwardTipInfo()Ljava/lang/String;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 51
    const-wide/16 v2, -0x1

    .line 53
    .local v2, "packageId":J
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler;->mPackageId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 57
    :goto_0
    invoke-static {}, Ldpt;->a()Ldpt;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ldpt;->e(J)Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    move-result-object v0

    .line 58
    .local v0, "emotionPackageObject":Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;
    if-nez v0, :cond_0

    .line 59
    const/4 v4, 0x0

    .line 61
    :goto_1
    return-object v4

    .line 54
    .end local v0    # "emotionPackageObject":Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;
    :catch_0
    move-exception v1

    .line 55
    .local v1, "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 61
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    .restart local v0    # "emotionPackageObject":Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Lctk$i;->dt_im_trans_to_multiple_emotion_package:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->name:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public isSupportMultiple()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method protected paramInvalidate()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler;->mPackageId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler;->mDelegate:Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    if-nez v0, :cond_1

    .line 39
    :cond_0
    const/4 v0, 0x1

    .line 41
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;->paramInvalidate()Z

    move-result v0

    goto :goto_0
.end method

.method public send2ConversationsImpl(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 4
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 66
    new-instance v0, Ldiz;

    invoke-direct {v0, p2}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    .line 67
    .local v0, "chatMessageSender":Ldiz;
    invoke-virtual {p0, p2}, Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler;->getTextSender(Lcom/alibaba/wukong/im/Conversation;)Ldiz;

    move-result-object v1

    .line 68
    .local v1, "textSender":Ldiz;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler;->getFromSingleThreadPool()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler$1;-><init>(Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ldiz;Ldiz;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method
