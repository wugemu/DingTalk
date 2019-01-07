.class final Ldmn$1;
.super Ljava/lang/Object;
.source "QuickPraiseSceneRender.java"

# interfaces
.implements Ldct$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldmn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldmn;


# direct methods
.method constructor <init>(Ldmn;)V
    .locals 0
    .param p1, "this$0"    # Ldmn;

    .prologue
    .line 119
    iput-object p1, p0, Ldmn$1;->a:Ldmn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Ldmn$1;->a:Ldmn;

    invoke-virtual {v0}, Ldmn;->b()V

    .line 123
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;)V
    .locals 6
    .param p1, "object"    # Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 132
    if-eqz p1, :cond_3

    .line 134
    iget-object v3, p0, Ldmn$1;->a:Ldmn;

    iget-object v3, v3, Ldmn;->b:Ldiz;

    if-eqz v3, :cond_1

    iget-object v3, p0, Ldmn$1;->a:Ldmn;

    iget-object v3, v3, Ldmn;->b:Ldiz;

    invoke-virtual {v3}, Ldiz;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;-><init>()V

    .line 137
    .local v0, "builder":Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;
    iget-wide v4, p1, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->packageId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;->a(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;

    .line 138
    iget-wide v4, p1, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->emotionId:J

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;->a(J)Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;

    .line 139
    iget v3, p1, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->type:I

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;->a(I)Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;

    .line 140
    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->emotionMediaId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;

    .line 141
    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->authMediaId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;->c(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;

    .line 142
    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;->d(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;

    .line 143
    instance-of v3, p1, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;

    if-eqz v3, :cond_2

    move-object v1, p1

    .line 145
    check-cast v1, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;

    .line 146
    .local v1, "detail":Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;
    iget-object v3, v1, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;->praiseUuid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;->e(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;

    .line 147
    iget v3, v1, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;->praiseType:I

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;->b(I)Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;

    .line 148
    iget-object v3, v1, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;->urlPrefix:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;->f(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;

    .line 149
    iget-object v3, v1, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;->thumbMediaId:Ljava/lang/String;

    .line 1193
    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;->a:Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;

    invoke-static {v4, v3}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->access$1502(Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    iget v3, v1, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;->praiseType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, v1, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;->praiseUuid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 153
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 154
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "type"

    iget v4, v1, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;->praiseType:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string/jumbo v3, "uuid"

    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;->praiseUuid:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "chat_quickenmotion_like_longpress"

    invoke-interface {v3, v4, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 160
    .end local v1    # "detail":Lcom/alibaba/android/dingtalkim/imtools/QuickPraiseEmotionDetail;
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    iget-object v3, p0, Ldmn$1;->a:Ldmn;

    iget-object v3, v3, Ldmn;->b:Ldiz;

    .line 1204
    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;->a:Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;

    .line 160
    new-instance v5, Ldmn$1$1;

    invoke-direct {v5, p0}, Ldmn$1$1;-><init>(Ldmn$1;)V

    invoke-virtual {v3, v4, v5}, Ldiz;->a(Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;Ldcu;)Z

    .line 176
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;
    :cond_1
    :goto_1
    return-void

    .line 158
    .restart local v0    # "builder":Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;
    :cond_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "chat_quickenmotion_like_longpress"

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;
    :cond_3
    iget-object v3, p0, Ldmn$1;->a:Ldmn;

    .line 2036
    iget-object v3, v3, Ldmn;->e:Ldkj;

    .line 172
    if-eqz v3, :cond_1

    .line 173
    iget-object v3, p0, Ldmn$1;->a:Ldmn;

    .line 3036
    iget-object v3, v3, Ldmn;->e:Ldkj;

    .line 173
    invoke-virtual {v3}, Ldkj;->a()V

    goto :goto_1
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Ldmn$1;->a:Ldmn;

    invoke-virtual {v0}, Ldmn;->c()V

    .line 128
    return-void
.end method
