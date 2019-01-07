.class final Ldpy$5;
.super Ljava/lang/Object;
.source "ImEmotionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldpy;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ldpy;


# direct methods
.method constructor <init>(Ldpy;Z)V
    .locals 0
    .param p1, "this$0"    # Ldpy;

    .prologue
    .line 179
    iput-object p1, p0, Ldpy$5;->b:Ldpy;

    iput-boolean p2, p0, Ldpy$5;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 182
    iget-object v0, p0, Ldpy$5;->b:Ldpy;

    iget-boolean v1, p0, Ldpy$5;->a:Z

    .line 1248
    iget-boolean v2, v0, Ldpy;->l:Z

    if-nez v2, :cond_1

    .line 1251
    if-nez v1, :cond_0

    .line 1254
    iget-object v1, v0, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    if-eqz v1, :cond_0

    .line 1255
    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    iget-object v1, v0, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->lastUpdateTime:J

    sub-long/2addr v2, v4

    iget-wide v4, v0, Ldpy;->m:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 1259
    :cond_0
    invoke-virtual {v0}, Ldpy;->b()V

    .line 183
    :cond_1
    return-void
.end method
