.class public final Ldlf;
.super Ljava/lang/Object;
.source "RecommendSearchHelper.java"


# instance fields
.field public a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field b:Z

.field c:Z

.field d:Lcom/alibaba/android/dingtalkim/models/RecommendEmotionObject;

.field public e:I

.field public f:Z

.field public g:Lcmt$a;

.field private h:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldlf;->a:Ljava/util/HashMap;

    .line 75
    new-instance v0, Ldlf$1;

    invoke-direct {v0, p0}, Ldlf$1;-><init>(Ldlf;)V

    iput-object v0, p0, Ldlf;->g:Lcmt$a;

    .line 58
    if-nez p1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iput-object p1, p0, Ldlf;->h:Landroid/app/Activity;

    .line 1241
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v3, "f_im_emotion_fast_send_recommend"

    invoke-virtual {v0, v3}, Lchx;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 62
    :goto_0
    iput-boolean v0, p0, Ldlf;->f:Z

    .line 63
    iget-boolean v0, p0, Ldlf;->f:Z

    if-eqz v0, :cond_2

    .line 2089
    const-string/jumbo v0, "pref_key_im_local_recommend_search"

    invoke-static {v0, v6}, Lcpk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2090
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2092
    :try_start_0
    const-class v3, Lcom/alibaba/android/dingtalkim/models/RecommendEmotionObject;

    invoke-static {v0, v3}, Lcoo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/RecommendEmotionObject;

    iput-object v0, p0, Ldlf;->d:Lcom/alibaba/android/dingtalkim/models/RecommendEmotionObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2100
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ldlf;->a()V

    .line 65
    invoke-virtual {p0}, Ldlf;->b()V

    .line 3072
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v0

    iget-object v1, p0, Ldlf;->g:Lcmt$a;

    invoke-virtual {v0, v1}, Lcmt;->a(Lcmt$a;)V

    .line 69
    :cond_2
    return-void

    .line 1244
    :cond_3
    invoke-static {}, Lcms;->c()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 1245
    goto :goto_0

    :cond_4
    move v0, v2

    .line 1247
    goto :goto_0

    .line 2093
    :catch_0
    move-exception v0

    .line 2094
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2095
    const-string/jumbo v3, "im"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "[RecommendSearchHelper]"

    aput-object v5, v4, v1

    const-string/jumbo v1, "parse prefs json error"

    aput-object v1, v4, v2

    const/4 v1, 0x2

    .line 2096
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2095
    invoke-static {v3, v6, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 106
    iget-object v1, p0, Ldlf;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 107
    const/4 v1, 0x0

    iput v1, p0, Ldlf;->e:I

    .line 108
    iget-object v1, p0, Ldlf;->d:Lcom/alibaba/android/dingtalkim/models/RecommendEmotionObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ldlf;->d:Lcom/alibaba/android/dingtalkim/models/RecommendEmotionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/models/RecommendEmotionObject;->recommendEmotionDetails:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ldlf;->d:Lcom/alibaba/android/dingtalkim/models/RecommendEmotionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/models/RecommendEmotionObject;->recommendEmotionDetails:Ljava/util/List;

    .line 109
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 110
    iget-object v1, p0, Ldlf;->d:Lcom/alibaba/android/dingtalkim/models/RecommendEmotionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/models/RecommendEmotionObject;->recommendEmotionDetails:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/RecommendEmotionDetailObject;

    .line 111
    .local v0, "detailObject":Lcom/alibaba/android/dingtalkim/models/RecommendEmotionDetailObject;
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/models/RecommendEmotionDetailObject;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    iget-object v2, p0, Ldlf;->a:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/models/RecommendEmotionDetailObject;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/models/RecommendEmotionDetailObject;->mediaIds:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/models/RecommendEmotionDetailObject;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Ldlf;->e:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Ldlf;->e:I

    goto :goto_0

    .line 120
    .end local v0    # "detailObject":Lcom/alibaba/android/dingtalkim/models/RecommendEmotionDetailObject;
    :cond_1
    return-void
.end method

.method b()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 124
    iget-boolean v7, p0, Ldlf;->b:Z

    if-eqz v7, :cond_1

    .line 125
    iput-boolean v13, p0, Ldlf;->c:Z

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iput-boolean v14, p0, Ldlf;->c:Z

    .line 130
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v7

    const-string/jumbo v10, "dt_emotion"

    const-string/jumbo v11, "im_chat_recommend_emotion_version"

    invoke-virtual {v7, v10, v11}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 131
    .local v6, "timeStamp":Ljava/lang/String;
    const-wide/16 v4, -0x1

    .line 132
    .local v4, "serverVersion":J
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 134
    :try_start_0
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 3214
    :cond_2
    :goto_1
    iget-object v7, p0, Ldlf;->d:Lcom/alibaba/android/dingtalkim/models/RecommendEmotionObject;

    if-eqz v7, :cond_3

    .line 3215
    iget-object v7, p0, Ldlf;->d:Lcom/alibaba/android/dingtalkim/models/RecommendEmotionObject;

    iget-wide v2, v7, Lcom/alibaba/android/dingtalkim/models/RecommendEmotionObject;->version:J

    .line 142
    .local v2, "localVersion":J
    :goto_2
    cmp-long v7, v4, v8

    if-lez v7, :cond_0

    cmp-long v7, v4, v2

    if-lez v7, :cond_0

    .line 143
    iput-boolean v13, p0, Ldlf;->b:Z

    .line 144
    new-instance v0, Ldlf$2;

    invoke-direct {v0, p0}, Ldlf$2;-><init>(Ldlf;)V

    .line 172
    .local v0, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/models/RecommendEmotionObject;>;"
    const-class v7, Lcma;

    iget-object v8, p0, Ldlf;->h:Landroid/app/Activity;

    invoke-static {v0, v7, v8}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/models/RecommendEmotionObject;>;"
    check-cast v0, Lcma;

    .line 173
    .restart local v0    # "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/models/RecommendEmotionObject;>;"
    invoke-static {}, Ldyc;->a()Ldyc;

    move-result-object v8

    .line 3351
    const-class v7, Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;

    invoke-static {v7}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;

    .line 3352
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-instance v10, Ldyc$8;

    invoke-direct {v10, v8, v0}, Ldyc$8;-><init>(Ldyc;Lcma;)V

    invoke-interface {v7, v9, v10}, Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;->getRecommendEmotionByVersion(Ljava/lang/Long;Liyv;)V

    goto :goto_0

    .line 135
    .end local v0    # "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/models/RecommendEmotionObject;>;"
    .end local v2    # "localVersion":J
    :catch_0
    move-exception v1

    .line 136
    .local v1, "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 137
    const-string/jumbo v7, "im"

    const/4 v10, 0x0

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "[RecommendSearchHelper]"

    aput-object v12, v11, v14

    const-string/jumbo v12, "load from server_version not right, version:"

    aput-object v12, v11, v13

    const/4 v12, 0x2

    aput-object v6, v11, v12

    .line 138
    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 137
    invoke-static {v7, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :cond_3
    move-wide v2, v8

    .line 3217
    goto :goto_2
.end method
