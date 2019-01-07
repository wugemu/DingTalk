.class final Ldie$7;
.super Ljava/lang/Object;
.source "TopicEmotionCenter.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldie;


# direct methods
.method constructor <init>(Ldie;)V
    .locals 0
    .param p1, "this$0"    # Ldie;

    .prologue
    .line 374
    iput-object p1, p0, Ldie$7;->a:Ldie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkim/models/TopicDataObject;)V
    .locals 1
    .param p1, "topicDataObject"    # Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    .prologue
    .line 377
    iget-object v0, p0, Ldie$7;->a:Ldie;

    .line 1043
    iget-object v0, v0, Ldie;->l:Ldib$a;

    .line 377
    invoke-interface {v0, p1}, Ldib$a;->a(Lcom/alibaba/android/dingtalkim/models/TopicDataObject;)V

    .line 378
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;)V
    .locals 12
    .param p1, "object"    # Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x0

    .line 383
    invoke-static {}, Lebb;->d()Z

    move-result v1

    if-nez v1, :cond_2

    .line 385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Ldie$7;->a:Ldie;

    .line 2043
    iget-wide v4, v1, Ldie;->a:J

    .line 385
    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    iget-object v1, p0, Ldie$7;->a:Ldie;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3043
    iput-wide v2, v1, Ldie;->a:J

    .line 391
    :cond_2
    iget-object v1, p0, Ldie$7;->a:Ldie;

    .line 4043
    iget-object v1, v1, Ldie;->l:Ldib$a;

    .line 391
    invoke-interface {v1, p1}, Ldib$a;->a(Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;)V

    .line 392
    iget-object v1, p0, Ldie$7;->a:Ldie;

    .line 5043
    iget-object v1, v1, Ldie;->m:Ldiz;

    .line 392
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 394
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->getAuthProvider()Lcom/alibaba/wukong/im/AuthProviderProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/AuthProviderProxy;->useAuth()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;->authMediaId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 395
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;->authMediaId:Ljava/lang/String;

    invoke-static {v1}, Ldkj;->a(Ljava/lang/String;)I

    move-result v6

    .line 400
    .local v6, "type":I
    :goto_1
    iget-object v1, p0, Ldie$7;->a:Ldie;

    .line 6043
    iget-object v1, v1, Ldie;->k:Ljava/util/List;

    .line 400
    iget-object v2, p0, Ldie$7;->a:Ldie;

    .line 7043
    iget-object v2, v2, Ldie;->d:Landroid/support/v4/view/ViewPager;

    .line 400
    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    .line 401
    .local v0, "dataObject":Lcom/alibaba/android/dingtalkim/models/TopicDataObject;
    if-nez v0, :cond_4

    move-object v10, v11

    .line 402
    .local v10, "activityComment":Ljava/lang/String;
    :goto_2
    iget-object v1, p0, Ldie$7;->a:Ldie;

    .line 8043
    iget-object v1, v1, Ldie;->m:Ldiz;

    .line 402
    iget-wide v2, p1, Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;->topicId:J

    iget-wide v4, p1, Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;->emotionId:J

    iget-object v7, p1, Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;->mediaId:Ljava/lang/String;

    iget-object v8, p1, Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;->authMediaId:Ljava/lang/String;

    iget-object v9, p1, Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;->name:Ljava/lang/String;

    invoke-virtual/range {v1 .. v11}, Ldiz;->a(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ldcu;)Z

    .line 403
    iget-object v1, p0, Ldie$7;->a:Ldie;

    .line 9043
    iget-object v1, v1, Ldie;->n:Ldie$a;

    .line 403
    if-eqz v1, :cond_0

    .line 404
    iget-object v1, p0, Ldie$7;->a:Ldie;

    .line 10043
    iget-object v1, v1, Ldie;->n:Ldie$a;

    .line 404
    invoke-interface {v1}, Ldie$a;->a()V

    goto :goto_0

    .line 397
    .end local v0    # "dataObject":Lcom/alibaba/android/dingtalkim/models/TopicDataObject;
    .end local v6    # "type":I
    .end local v10    # "activityComment":Ljava/lang/String;
    :cond_3
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;->mediaId:Ljava/lang/String;

    invoke-static {v1}, Ldkj;->a(Ljava/lang/String;)I

    move-result v6

    .restart local v6    # "type":I
    goto :goto_1

    .line 401
    .restart local v0    # "dataObject":Lcom/alibaba/android/dingtalkim/models/TopicDataObject;
    :cond_4
    iget-object v10, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->activityComment:Ljava/lang/String;

    goto :goto_2
.end method
