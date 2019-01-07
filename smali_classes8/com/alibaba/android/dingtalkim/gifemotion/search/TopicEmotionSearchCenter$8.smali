.class final Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$8;
.super Ljava/lang/Object;
.source "TopicEmotionSearchCenter.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    .prologue
    .line 553
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$8;->a:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;)V
    .locals 8
    .param p1, "object"    # Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 556
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$8;->a:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    .line 1053
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->q:Ldiz;

    .line 556
    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$8;->a:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    .line 2053
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->q:Ldiz;

    .line 557
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;->dynamicEmotionId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;->mediaId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;->authMediaId:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;->thumbUrl:Ljava/lang/String;

    iget v5, p1, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;->width:I

    iget v6, p1, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;->height:I

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Ldiz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILdcu;)Z

    .line 558
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$8;->a:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    .line 3053
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->r:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$a;

    .line 558
    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$8;->a:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    .line 4053
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->r:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$a;

    .line 559
    invoke-interface {v0}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$a;->a()V

    .line 562
    :cond_0
    return-void
.end method
