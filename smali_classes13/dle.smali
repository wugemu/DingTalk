.class public final Ldle;
.super Ljava/lang/Object;
.source "FastSendEmotionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldle$a;
    }
.end annotation


# instance fields
.field public a:Landroid/os/Handler;

.field b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

.field c:Ldle$a;

.field public d:Ldiz;

.field public e:Z

.field public f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;",
            ">;>;"
        }
    .end annotation
.end field

.field public g:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

.field public h:Landroid/view/ViewGroup;

.field i:Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter;

.field j:Landroid/view/View;

.field k:Landroid/view/View;

.field public l:I

.field public m:Ldlf;

.field private n:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Ldle$a;)V
    .locals 3
    .param p1, "chatMsgBaseActivity"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;
    .param p2, "listView"    # Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;
    .param p3, "listViewContainer"    # Landroid/view/ViewGroup;
    .param p4, "alignView"    # Landroid/view/View;
    .param p5, "arrowView"    # Landroid/view/View;
    .param p6, "listener"    # Ldle$a;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    new-instance v0, Ldle$3;

    invoke-direct {v0, p0}, Ldle$3;-><init>(Ldle;)V

    iput-object v0, p0, Ldle;->n:Landroid/os/Handler$Callback;

    .line 65
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "[FastSendEmotionManager] construct params chatMsgBaseActivity or listView or listViewContainer or alignView or arrowView cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    iput-object p1, p0, Ldle;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 70
    iput-object p6, p0, Ldle;->c:Ldle$a;

    .line 71
    iput-object p2, p0, Ldle;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    .line 72
    iput-object p3, p0, Ldle;->h:Landroid/view/ViewGroup;

    .line 73
    iput-object p4, p0, Ldle;->j:Landroid/view/View;

    .line 74
    iput-object p5, p0, Ldle;->k:Landroid/view/View;

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Ldle;->n:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Ldle;->a:Landroid/os/Handler;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldle;->f:Ljava/util/HashMap;

    .line 77
    new-instance v0, Ldlf;

    invoke-direct {v0, p1}, Ldlf;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Ldle;->m:Ldlf;

    .line 1082
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter;

    iget-object v1, p0, Ldle;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ldle;->i:Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter;

    .line 1083
    iget-object v0, p0, Ldle;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    iget-object v1, p0, Ldle;->i:Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1084
    iget-object v0, p0, Ldle;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    new-instance v1, Ldle$1;

    invoke-direct {v1, p0}, Ldle$1;-><init>(Ldle;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1099
    iget-object v0, p0, Ldle;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    new-instance v1, Ldle$2;

    invoke-direct {v1, p0}, Ldle$2;-><init>(Ldle;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setOnScrollStateChangedListener(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener;)V

    .line 1113
    iget-object v0, p0, Ldle;->h:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 79
    return-void
.end method

.method public static a(Ldpz;)V
    .locals 6
    .param p0, "recommendSearchPart"    # Ldpz;

    .prologue
    .line 239
    if-eqz p0, :cond_0

    iget-object v3, p0, Ldpz;->b:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ldpz;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 250
    :cond_0
    return-void

    .line 242
    :cond_1
    const-string/jumbo v3, "IMAGE"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 243
    .local v1, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Ldpz;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 244
    iget-object v3, p0, Ldpz;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    .line 245
    .local v0, "emotionGridItemModel":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 248
    iget-object v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->a:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v5}, Lcom/alibaba/doraemon/image/ImageMagician;->preDownloadImage(Ljava/lang/String;ZLjava/util/Map;)V

    .line 243
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 135
    iget-object v4, p0, Ldle;->f:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 136
    const/4 v4, 0x0

    iput v4, p0, Ldle;->l:I

    .line 1404
    invoke-static {}, Ldpt;->a()Ldpt;

    move-result-object v4

    invoke-virtual {v4}, Ldpt;->b()Ljava/util/List;

    move-result-object v4

    .line 1405
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1406
    :cond_0
    const/4 v2, 0x0

    .line 138
    .local v2, "installedEmotionList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;>;"
    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 156
    :cond_2
    return-void

    .line 1408
    .end local v2    # "installedEmotionList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;>;"
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1409
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;

    .line 1410
    if-eqz v4, :cond_4

    iget-object v6, v4, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->emotions:Ljava/util/List;

    if-eqz v6, :cond_4

    iget-object v6, v4, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->emotions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1413
    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->emotions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    .line 1414
    invoke-static {v4}, Ldpu;->b(Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    move-result-object v4

    .line 1415
    if-eqz v4, :cond_5

    .line 1416
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    .restart local v2    # "installedEmotionList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;>;"
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    .line 142
    .local v1, "emtionGridItemModel":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    if-eqz v1, :cond_7

    iget-object v5, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->f:Lcrd;

    instance-of v5, v5, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    if-eqz v5, :cond_7

    .line 145
    iget-object v3, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->f:Lcrd;

    check-cast v3, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    .line 146
    .local v3, "object":Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;
    if-eqz v1, :cond_7

    iget-object v5, v3, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 147
    iget-object v5, p0, Ldle;->f:Ljava/util/HashMap;

    iget-object v6, v3, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 148
    .local v0, "emotionGridItemModelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;>;"
    if-nez v0, :cond_8

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "emotionGridItemModelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .restart local v0    # "emotionGridItemModelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;>;"
    iget-object v5, p0, Ldle;->f:Ljava/util/HashMap;

    iget-object v6, v3, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_8
    iget-object v5, v3, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Ldle;->l:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Ldle;->l:I

    .line 153
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 317
    invoke-virtual {p0}, Ldle;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    iget-object v0, p0, Ldle;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 321
    iget-object v0, p0, Ldle;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 322
    iget-object v0, p0, Ldle;->h:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Ldle;->h:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 339
    iget-boolean v1, p0, Ldle;->e:Z

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
