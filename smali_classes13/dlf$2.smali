.class final Ldlf$2;
.super Ljava/lang/Object;
.source "RecommendSearchHelper.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldlf;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalkim/models/RecommendEmotionObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldlf;


# direct methods
.method constructor <init>(Ldlf;)V
    .locals 0
    .param p1, "this$0"    # Ldlf;

    .prologue
    .line 144
    iput-object p1, p0, Ldlf$2;->a:Ldlf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 144
    check-cast p1, Lcom/alibaba/android/dingtalkim/models/RecommendEmotionObject;

    .line 3147
    iget-object v0, p0, Ldlf$2;->a:Ldlf;

    .line 4041
    iput-boolean v6, v0, Ldlf;->b:Z

    .line 3150
    iget-object v1, p0, Ldlf$2;->a:Ldlf;

    .line 5179
    if-eqz p1, :cond_3

    .line 5183
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/RecommendEmotionObject;->recommendEmotionDetails:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/RecommendEmotionObject;->recommendEmotionDetails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5184
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/RecommendEmotionObject;->recommendEmotionDetails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5185
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5187
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/RecommendEmotionDetailObject;

    .line 5188
    if-nez v0, :cond_1

    .line 5189
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 5192
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/models/RecommendEmotionDetailObject;->filterEmptyAndTrim()V

    .line 5193
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/models/RecommendEmotionDetailObject;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5194
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 5198
    :cond_2
    iput-object p1, v1, Ldlf;->d:Lcom/alibaba/android/dingtalkim/models/RecommendEmotionObject;

    .line 5200
    :try_start_0
    iget-object v0, v1, Ldlf;->d:Lcom/alibaba/android/dingtalkim/models/RecommendEmotionObject;

    invoke-static {v0}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5201
    const-string/jumbo v2, "pref_key_im_local_recommend_search"

    invoke-static {v2, v0}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5207
    :goto_1
    invoke-virtual {v1}, Ldlf;->a()V

    .line 3151
    :cond_3
    iget-object v0, p0, Ldlf$2;->a:Ldlf;

    .line 6041
    iget-boolean v0, v0, Ldlf;->c:Z

    .line 3151
    if-eqz v0, :cond_4

    .line 3152
    iget-object v0, p0, Ldlf$2;->a:Ldlf;

    .line 7041
    invoke-virtual {v0}, Ldlf;->b()V

    .line 144
    :cond_4
    return-void

    .line 5202
    :catch_0
    move-exception v0

    .line 5203
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5204
    const-string/jumbo v2, "im"

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "[RecommendSearchHelper]"

    aput-object v5, v4, v6

    const/4 v5, 0x1

    const-string/jumbo v6, "set local cache json error "

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 5205
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5204
    invoke-static {v2, v3, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 163
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "[RecommendSearchHelper]"

    aput-object v3, v2, v5

    const/4 v3, 0x1

    const-string/jumbo v4, "getRecommendEmotionByVersion error,code:"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, ",errorMsg:"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p2, v2, v3

    .line 164
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Ldlf$2;->a:Ldlf;

    .line 1041
    iput-boolean v5, v0, Ldlf;->b:Z

    .line 167
    iget-object v0, p0, Ldlf$2;->a:Ldlf;

    .line 2041
    iget-boolean v0, v0, Ldlf;->c:Z

    .line 167
    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Ldlf$2;->a:Ldlf;

    .line 3041
    invoke-virtual {v0}, Ldlf;->b()V

    .line 170
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 159
    return-void
.end method
