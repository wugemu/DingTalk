.class final Ldpy$9;
.super Ljava/lang/Object;
.source "ImEmotionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldpy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

.field final synthetic b:J

.field final synthetic c:Ldpy;


# direct methods
.method constructor <init>(Ldpy;Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;J)V
    .locals 1
    .param p1, "this$0"    # Ldpy;

    .prologue
    .line 346
    iput-object p1, p0, Ldpy$9;->c:Ldpy;

    iput-object p2, p0, Ldpy$9;->a:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    iput-wide p3, p0, Ldpy$9;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 349
    iget-object v0, p0, Ldpy$9;->c:Ldpy;

    iget-object v1, p0, Ldpy$9;->a:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->likeEmotionObject:Ldro;

    .line 1046
    iput-object v1, v0, Ldpy;->i:Ldro;

    .line 350
    iget-object v0, p0, Ldpy$9;->c:Ldpy;

    iget-object v1, p0, Ldpy$9;->a:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->topicResultObject:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    .line 2046
    iput-object v1, v0, Ldpy;->f:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    .line 351
    iget-object v0, p0, Ldpy$9;->c:Ldpy;

    iget-object v1, p0, Ldpy$9;->a:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->hotSearchWords:Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;

    .line 3046
    iput-object v1, v0, Ldpy;->e:Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;

    .line 352
    iget-object v0, p0, Ldpy$9;->c:Ldpy;

    const-wide/16 v2, 0x0

    .line 4046
    iput-wide v2, v0, Ldpy;->g:J

    .line 353
    iget-object v0, p0, Ldpy$9;->c:Ldpy;

    iget-wide v2, p0, Ldpy$9;->b:J

    .line 5046
    iput-wide v2, v0, Ldpy;->h:J

    .line 354
    iget-object v0, p0, Ldpy$9;->c:Ldpy;

    iget-object v1, p0, Ldpy$9;->a:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->gifEmotionIcon:Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;

    .line 6046
    iput-object v1, v0, Ldpy;->j:Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;

    .line 355
    iget-object v0, p0, Ldpy$9;->c:Ldpy;

    invoke-static {v0}, Ldpy;->b(Ldpy;)V

    .line 356
    iget-object v0, p0, Ldpy$9;->c:Ldpy;

    invoke-static {v0}, Ldpy;->a(Ldpy;)V

    .line 357
    iget-object v0, p0, Ldpy$9;->c:Ldpy;

    invoke-static {v0}, Ldpy;->c(Ldpy;)V

    .line 358
    iget-object v0, p0, Ldpy$9;->c:Ldpy;

    invoke-static {v0}, Ldpy;->d(Ldpy;)V

    .line 359
    iget-object v0, p0, Ldpy$9;->c:Ldpy;

    invoke-static {v0}, Ldpy;->e(Ldpy;)V

    .line 360
    iget-object v0, p0, Ldpy$9;->c:Ldpy;

    invoke-static {v0}, Ldpy;->f(Ldpy;)V

    .line 361
    iget-object v0, p0, Ldpy$9;->c:Ldpy;

    .line 7687
    iget-object v0, v0, Ldpy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldpy$a;

    .line 7688
    if-eqz v0, :cond_0

    .line 7689
    invoke-interface {v0}, Ldpy$a;->f()V

    goto :goto_0

    .line 362
    :cond_1
    return-void
.end method
