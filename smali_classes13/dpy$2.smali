.class public final Ldpy$2;
.super Ljava/lang/Object;
.source "ImEmotionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldpy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ldpy;


# direct methods
.method public constructor <init>(Ldpy;J)V
    .locals 0
    .param p1, "this$0"    # Ldpy;

    .prologue
    .line 570
    iput-object p1, p0, Ldpy$2;->b:Ldpy;

    iput-wide p2, p0, Ldpy$2;->a:J

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
    .line 573
    iget-object v0, p0, Ldpy$2;->b:Ldpy;

    iget-wide v2, p0, Ldpy$2;->a:J

    .line 1579
    iget-object v1, v0, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    if-eqz v1, :cond_0

    iget-object v1, v0, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->emotionResultObject:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    if-nez v1, :cond_1

    .line 1580
    :cond_0
    :goto_0
    return-void

    .line 1583
    :cond_1
    iget-object v1, v0, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->emotionResultObject:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->iconRedPointVer:J

    cmp-long v1, v4, v2

    if-ltz v1, :cond_0

    .line 1587
    iget-object v1, v0, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->localIconRedPointVer:J

    cmp-long v1, v4, v2

    if-gez v1, :cond_0

    .line 1590
    iget-object v1, v0, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    iput-wide v2, v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->localIconRedPointVer:J

    .line 1591
    iget-object v1, v0, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    invoke-virtual {v0, v1}, Ldpy;->a(Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;)V

    .line 1592
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v4, Ldpy$3;

    invoke-direct {v4, v0, v2, v3}, Ldpy$3;-><init>(Ldpy;J)V

    invoke-virtual {v1, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
