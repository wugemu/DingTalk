.class final Ldpy$1;
.super Ljava/lang/Object;
.source "ImEmotionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldpy;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldpy;


# direct methods
.method constructor <init>(Ldpy;)V
    .locals 0
    .param p1, "this$0"    # Ldpy;

    .prologue
    .line 81
    iput-object p1, p0, Ldpy$1;->a:Ldpy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 84
    iget-object v2, p0, Ldpy$1;->a:Ldpy;

    .line 1090
    iget-boolean v0, v2, Ldpy;->k:Z

    if-nez v0, :cond_6

    .line 1093
    iput-boolean v11, v2, Ldpy;->k:Z

    .line 1095
    iget-object v0, v2, Ldpy;->c:Ljava/lang/String;

    invoke-static {v0}, Ldpx;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 1097
    if-eqz v3, :cond_a

    .line 1098
    invoke-static {v3}, Ldpx;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 1100
    :try_start_0
    const-class v4, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    invoke-static {v0, v4}, Lcoo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1106
    :goto_0
    if-nez v0, :cond_0

    .line 1107
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1109
    :cond_0
    invoke-static {}, Ldpy;->c()J

    move-result-wide v4

    .line 1111
    if-eqz v0, :cond_3

    .line 1112
    iget-object v6, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->language:Ljava/lang/String;

    invoke-static {}, Lcms;->n()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-wide v6, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->lastMainOrgId:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 1114
    :cond_1
    if-eqz v3, :cond_2

    .line 1115
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1117
    :cond_2
    const-string/jumbo v3, "im"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "[ImEmotionManager]"

    aput-object v5, v4, v8

    const-string/jumbo v5, "language not matched, preLocal:"

    aput-object v5, v4, v11

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->language:Ljava/lang/String;

    aput-object v0, v4, v9

    const-string/jumbo v0, ",cur:"

    aput-object v0, v4, v10

    const/4 v0, 0x4

    .line 1118
    invoke-static {}, Lcms;->n()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 1117
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1123
    :cond_3
    :goto_1
    iput-object v0, v2, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    .line 1126
    const-wide/16 v8, 0x0

    .line 1127
    const-wide/16 v6, 0x0

    .line 1128
    iget-object v0, v2, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    if-eqz v0, :cond_9

    iget-object v0, v2, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->emotionResultObject:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    if-eqz v0, :cond_9

    .line 1129
    iget-object v0, v2, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->emotionResultObject:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->topicResultObject:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    if-eqz v0, :cond_4

    .line 1131
    iget-object v0, v2, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->emotionResultObject:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->topicResultObject:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->filterNotOnlineOrEmptyTopic()V

    .line 1133
    :cond_4
    iget-object v0, v2, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->emotionResultObject:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->copy()Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    move-result-object v0

    .line 1134
    iget-object v3, v2, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->emotionResultObject:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    iget-wide v8, v3, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->iconRedPointVer:J

    .line 1136
    :goto_2
    iget-object v3, v2, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    if-eqz v3, :cond_5

    .line 1137
    iget-object v3, v2, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    iget-wide v6, v3, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->localIconRedPointVer:J

    .line 1145
    :cond_5
    if-eqz v0, :cond_8

    .line 1146
    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->topicResultObject:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    .line 1147
    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->likeEmotionObject:Ldro;

    .line 1148
    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->hotSearchWords:Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;

    .line 1149
    iget-object v10, v0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->gifEmotionIcon:Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;

    .line 1158
    :goto_3
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Ldpy$4;

    invoke-direct/range {v1 .. v10}, Ldpy$4;-><init>(Ldpy;Ldro;Lcom/alibaba/android/dingtalkim/models/TopicResultObject;Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;JJLcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1170
    iget-object v0, v2, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    if-nez v0, :cond_7

    .line 1171
    invoke-virtual {v2, v11}, Ldpy;->a(Z)V

    :cond_6
    :goto_4
    return-void

    .line 1101
    :catch_0
    move-exception v0

    .line 1102
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1103
    const-string/jumbo v4, "im"

    new-array v5, v10, [Ljava/lang/String;

    const-string/jumbo v6, "[ImEmotionManager]"

    aput-object v6, v5, v8

    const-string/jumbo v6, "loadFromLocalImpl parseJson error, errMsg:"

    aput-object v6, v5, v11

    .line 1104
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v9

    .line 1103
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 1172
    :cond_7
    iget-object v0, v2, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->lastUpdateTime:J

    invoke-static {}, Lcms;->u()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lcog;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1173
    invoke-virtual {v2, v11}, Ldpy;->a(Z)V

    goto :goto_4

    :cond_8
    move-object v10, v1

    move-object v5, v1

    move-object v3, v1

    move-object v4, v1

    goto :goto_3

    :cond_9
    move-object v0, v1

    goto :goto_2

    :cond_a
    move-object v0, v1

    goto/16 :goto_1
.end method
