.class final Ldps$7;
.super Ljava/lang/Object;
.source "CustomEmotionMgr.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldps;


# direct methods
.method constructor <init>(Ldps;)V
    .locals 0
    .param p1, "this$0"    # Ldps;

    .prologue
    .line 553
    iput-object p1, p0, Ldps$7;->a:Ldps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 553
    check-cast p1, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    check-cast p2, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    .line 1556
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 1557
    const/4 v0, 0x0

    .line 1561
    :goto_0
    return v0

    .line 1558
    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 1559
    const/4 v0, 0x1

    goto :goto_0

    .line 1560
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    .line 1561
    const/4 v0, -0x1

    goto :goto_0

    .line 1564
    :cond_2
    iget-wide v0, p2, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->emotionId:J

    iget-wide v2, p1, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->emotionId:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 553
    goto :goto_0
.end method
