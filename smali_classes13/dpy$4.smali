.class final Ldpy$4;
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
.field final synthetic a:Ldro;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;

.field final synthetic d:J

.field final synthetic e:J

.field final synthetic f:Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;

.field final synthetic g:Ldpy;


# direct methods
.method constructor <init>(Ldpy;Ldro;Lcom/alibaba/android/dingtalkim/models/TopicResultObject;Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;JJLcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;)V
    .locals 1
    .param p1, "this$0"    # Ldpy;

    .prologue
    .line 158
    iput-object p1, p0, Ldpy$4;->g:Ldpy;

    iput-object p2, p0, Ldpy$4;->a:Ldro;

    iput-object p3, p0, Ldpy$4;->b:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    iput-object p4, p0, Ldpy$4;->c:Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;

    iput-wide p5, p0, Ldpy$4;->d:J

    iput-wide p7, p0, Ldpy$4;->e:J

    iput-object p9, p0, Ldpy$4;->f:Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;

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
    .line 161
    iget-object v0, p0, Ldpy$4;->g:Ldpy;

    iget-object v1, p0, Ldpy$4;->a:Ldro;

    .line 1046
    iput-object v1, v0, Ldpy;->i:Ldro;

    .line 162
    iget-object v0, p0, Ldpy$4;->g:Ldpy;

    iget-object v1, p0, Ldpy$4;->b:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    .line 2046
    iput-object v1, v0, Ldpy;->f:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    .line 163
    iget-object v0, p0, Ldpy$4;->g:Ldpy;

    iget-object v1, p0, Ldpy$4;->c:Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;

    .line 3046
    iput-object v1, v0, Ldpy;->e:Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;

    .line 164
    iget-object v0, p0, Ldpy$4;->g:Ldpy;

    iget-wide v2, p0, Ldpy$4;->d:J

    .line 4046
    iput-wide v2, v0, Ldpy;->g:J

    .line 165
    iget-object v0, p0, Ldpy$4;->g:Ldpy;

    iget-wide v2, p0, Ldpy$4;->e:J

    .line 5046
    iput-wide v2, v0, Ldpy;->h:J

    .line 166
    iget-object v0, p0, Ldpy$4;->g:Ldpy;

    iget-object v1, p0, Ldpy$4;->f:Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;

    .line 6046
    iput-object v1, v0, Ldpy;->j:Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;

    .line 167
    iget-object v0, p0, Ldpy$4;->g:Ldpy;

    .line 7647
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

    .line 7648
    if-eqz v0, :cond_0

    .line 7649
    invoke-interface {v0}, Ldpy$a;->a()V

    goto :goto_0

    .line 168
    :cond_1
    return-void
.end method
