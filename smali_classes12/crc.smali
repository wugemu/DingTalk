.class public Lcrc;
.super Ljava/lang/Object;
.source "RecentInnerEmotionManager.java"


# static fields
.field private static volatile b:Lcrc;


# instance fields
.field public a:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method private constructor <init>()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/16 v8, 0x15

    const/4 v7, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0x16

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcrc;->c:Ljava/util/List;

    .line 1097
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v3, "im_inner_emotion_recent"

    invoke-static {v1, v3}, Lhcy;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1098
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1099
    const-class v3, Ljava/lang/String;

    invoke-static {v1, v3}, Lcoo;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 1100
    if-nez v1, :cond_0

    .line 1101
    const-string/jumbo v3, "im"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "[RecentInnerEmotionManager]"

    aput-object v5, v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "getFileKeyList exception ret null"

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1105
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1106
    sget-object v2, Lcqz;->g:Ljava/util/List;

    .line 1107
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1108
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1112
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v8, :cond_4

    .line 1113
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1, v7, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 47
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 48
    iget-object v1, p0, Lcrc;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 50
    :cond_3
    iput v7, p0, Lcrc;->a:I

    .line 51
    return-void

    .end local v0    # "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    move-object v0, v1

    .line 1115
    goto :goto_1

    :cond_5
    move-object v1, v2

    goto :goto_0
.end method

.method public static a()Lcrc;
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcrc;->b:Lcrc;

    if-nez v0, :cond_1

    .line 35
    const-class v1, Lcrc;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcrc;->b:Lcrc;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcrc;

    invoke-direct {v0}, Lcrc;-><init>()V

    sput-object v0, Lcrc;->b:Lcrc;

    .line 39
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_1
    sget-object v0, Lcrc;->b:Lcrc;

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v4, 0x15

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v1, p0, Lcrc;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 58
    .local v0, "index":I
    if-gez v0, :cond_3

    .line 59
    iget-object v1, p0, Lcrc;->c:Ljava/util/List;

    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 60
    iput-boolean v3, p0, Lcrc;->d:Z

    .line 61
    iget-object v1, p0, Lcrc;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_2

    .line 62
    iget-object v1, p0, Lcrc;->c:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 69
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcrc;->d:Z

    if-eqz v1, :cond_0

    .line 70
    iget v1, p0, Lcrc;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcrc;->a:I

    goto :goto_0

    .line 64
    :cond_3
    if-lez v0, :cond_2

    .line 65
    iget-object v1, p0, Lcrc;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 66
    iget-object v1, p0, Lcrc;->c:Ljava/util/List;

    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 67
    iput-boolean v3, p0, Lcrc;->d:Z

    goto :goto_1
.end method

.method public final b()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 82
    iget-boolean v2, p0, Lcrc;->d:Z

    if-nez v2, :cond_0

    .line 93
    :goto_0
    return-void

    .line 85
    :cond_0
    const/4 v1, 0x0

    .line 87
    .local v1, "jsonString":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcrc;->c:Ljava/util/List;

    invoke-static {v2}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 91
    :goto_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "im_inner_emotion_recent"

    invoke-static {v2, v3, v1}, Lhcy;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iput-boolean v7, p0, Lcrc;->d:Z

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "im"

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "[RecentInnerEmotionManager]"

    aput-object v5, v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "flush2File exception:"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final c()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 148
    iget-object v5, p0, Lcrc;->c:Ljava/util/List;

    .line 149
    .local v5, "recentDbKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 150
    :cond_0
    const/4 v1, 0x0

    .line 175
    :cond_1
    return-object v1

    .line 152
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v1, "gridItemModelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 154
    .local v3, "key":Ljava/lang/String;
    invoke-static {v3}, Lcqz;->b(Ljava/lang/String;)Lcqz$a;

    move-result-object v0

    .line 156
    .local v0, "ei":Lcqz$a;
    if-eqz v0, :cond_4

    .line 157
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;-><init>()V

    .line 158
    .local v4, "model":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    iput v8, v4, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->e:I

    .line 159
    iput v9, v4, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->h:I

    .line 1865
    iget v7, v0, Lcqz$a;->b:I

    .line 160
    iput v7, v4, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->d:I

    .line 161
    iput-object v0, v4, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->f:Lcrd;

    .line 162
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    .end local v4    # "model":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    :cond_4
    invoke-static {}, Lcqx;->a()Lcqx;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcqx;->b(Ljava/lang/String;)Lcqy;

    move-result-object v2

    .line 165
    .local v2, "identifier":Lcqy;
    if-eqz v2, :cond_3

    .line 166
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;-><init>()V

    .line 167
    .restart local v4    # "model":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    iput v8, v4, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->e:I

    .line 168
    iput v9, v4, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->h:I

    .line 2031
    iget-object v7, v2, Lcqy;->c:Ljava/lang/String;

    .line 169
    iput-object v7, v4, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->a:Ljava/lang/String;

    .line 170
    iput-object v2, v4, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->f:Lcrd;

    .line 171
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
