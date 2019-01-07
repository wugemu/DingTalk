.class final Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$3;
.super Ljava/lang/Object;
.source "TopicEmotionGridView.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;
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
        "Lcom/alibaba/android/dingtalkim/models/TopicDataObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$3;->a:Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 113
    check-cast p1, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    .line 1116
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$3;->a:Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->a(Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;Z)Z

    .line 1117
    if-eqz p1, :cond_0

    .line 1118
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$3;->a:Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;

    iget-boolean v1, p1, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->hasMore:Z

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->b(Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;Z)Z

    .line 1119
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$3;->a:Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->cursor:J

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->a(Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;J)J

    .line 1120
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$3;->a:Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicId:J

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->b(Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;J)J

    .line 1121
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$3;->a:Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->d(Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;)Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicEmotionObjectList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;->b(Ljava/util/List;)V

    .line 1123
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$3;->a:Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->a(Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;)Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1124
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$3;->a:Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->a(Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;)Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$a;->a(Lcom/alibaba/android/dingtalkim/models/TopicDataObject;)V

    .line 113
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$3;->a:Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->a(Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;Z)Z

    .line 136
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 131
    return-void
.end method
