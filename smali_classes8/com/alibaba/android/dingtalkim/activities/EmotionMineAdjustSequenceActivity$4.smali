.class final Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity$4;
.super Ljava/lang/Object;
.source "EmotionMineAdjustSequenceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity$4;->b:Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity$4;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 203
    new-instance v0, Ldhj;

    invoke-direct {v0}, Ldhj;-><init>()V

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity$4;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ldhj;->a(Ljava/util/List;)Z

    .line 204
    return-void
.end method
