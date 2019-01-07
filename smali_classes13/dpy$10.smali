.class final Ldpy$10;
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

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Z

.field final synthetic f:Z

.field final synthetic g:Ldpy;


# direct methods
.method constructor <init>(Ldpy;Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;ZZZZZ)V
    .locals 0
    .param p1, "this$0"    # Ldpy;

    .prologue
    .line 475
    iput-object p1, p0, Ldpy$10;->g:Ldpy;

    iput-object p2, p0, Ldpy$10;->a:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    iput-boolean p3, p0, Ldpy$10;->b:Z

    iput-boolean p4, p0, Ldpy$10;->c:Z

    iput-boolean p5, p0, Ldpy$10;->d:Z

    iput-boolean p6, p0, Ldpy$10;->e:Z

    iput-boolean p7, p0, Ldpy$10;->f:Z

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
    .line 478
    iget-object v0, p0, Ldpy$10;->g:Ldpy;

    iget-object v1, p0, Ldpy$10;->a:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->likeEmotionObject:Ldro;

    .line 1046
    iput-object v1, v0, Ldpy;->i:Ldro;

    .line 479
    iget-object v0, p0, Ldpy$10;->g:Ldpy;

    iget-object v1, p0, Ldpy$10;->a:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->topicResultObject:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    .line 2046
    iput-object v1, v0, Ldpy;->f:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    .line 480
    iget-object v0, p0, Ldpy$10;->g:Ldpy;

    iget-object v1, p0, Ldpy$10;->a:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->hotSearchWords:Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;

    .line 3046
    iput-object v1, v0, Ldpy;->e:Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;

    .line 481
    iget-object v0, p0, Ldpy$10;->g:Ldpy;

    iget-object v1, p0, Ldpy$10;->a:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->iconRedPointVer:J

    .line 4046
    iput-wide v2, v0, Ldpy;->h:J

    .line 482
    iget-object v0, p0, Ldpy$10;->g:Ldpy;

    iget-object v1, p0, Ldpy$10;->a:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->gifEmotionIcon:Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;

    .line 5046
    iput-object v1, v0, Ldpy;->j:Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;

    .line 483
    iget-boolean v0, p0, Ldpy$10;->b:Z

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Ldpy$10;->g:Ldpy;

    invoke-static {v0}, Ldpy;->b(Ldpy;)V

    .line 486
    :cond_0
    iget-boolean v0, p0, Ldpy$10;->c:Z

    if-eqz v0, :cond_1

    .line 487
    iget-object v0, p0, Ldpy$10;->g:Ldpy;

    invoke-static {v0}, Ldpy;->a(Ldpy;)V

    .line 489
    :cond_1
    iget-boolean v0, p0, Ldpy$10;->d:Z

    if-eqz v0, :cond_2

    .line 490
    iget-object v0, p0, Ldpy$10;->g:Ldpy;

    invoke-static {v0}, Ldpy;->c(Ldpy;)V

    .line 492
    :cond_2
    iget-boolean v0, p0, Ldpy$10;->e:Z

    if-eqz v0, :cond_3

    .line 493
    iget-object v0, p0, Ldpy$10;->g:Ldpy;

    invoke-static {v0}, Ldpy;->d(Ldpy;)V

    .line 495
    :cond_3
    iget-boolean v0, p0, Ldpy$10;->f:Z

    if-eqz v0, :cond_4

    .line 496
    iget-object v0, p0, Ldpy$10;->g:Ldpy;

    invoke-static {v0}, Ldpy;->f(Ldpy;)V

    .line 499
    :cond_4
    return-void
.end method
