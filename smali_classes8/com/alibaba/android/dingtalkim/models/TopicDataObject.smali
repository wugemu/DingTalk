.class public Lcom/alibaba/android/dingtalkim/models/TopicDataObject;
.super Ljava/lang/Object;
.source "TopicDataObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final STATUS_DELETED:I = 0x2

.field private static final STATUS_OFFLINE:I = 0x0

.field private static final STATUS_ONLINE:I = 0x1

.field private static final serialVersionUID:J = 0x261ac9ce285314cdL


# instance fields
.field public activityComment:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "activityComment"
    .end annotation
.end field

.field public activityType:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "activityType"
    .end annotation
.end field

.field public cursor:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "cursor"
    .end annotation
.end field

.field public hasMore:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "hasMore"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "name"
    .end annotation
.end field

.field public sort:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "sort"
    .end annotation
.end field

.field public status:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "status"
    .end annotation
.end field

.field public topicEmotionObjectList:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "topicEmotionObjectList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;",
            ">;"
        }
    .end annotation
.end field

.field public topicId:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "topicId"
    .end annotation
.end field

.field public version:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "version"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Ldur;)Lcom/alibaba/android/dingtalkim/models/TopicDataObject;
    .locals 7
    .param p0, "model"    # Ldur;

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 57
    if-nez p0, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 71
    :goto_0
    return-object v0

    .line 60
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;-><init>()V

    .line 61
    .local v0, "object":Lcom/alibaba/android/dingtalkim/models/TopicDataObject;
    iget-object v1, p0, Ldur;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 61
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicId:J

    .line 62
    iget-object v1, p0, Ldur;->b:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 62
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->version:J

    .line 63
    iget-object v1, p0, Ldur;->c:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;->fromIdlList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicEmotionObjectList:Ljava/util/List;

    .line 64
    iget-object v1, p0, Ldur;->d:Ljava/lang/Long;

    .line 3044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 64
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->cursor:J

    .line 65
    iget-object v1, p0, Ldur;->e:Ljava/lang/Integer;

    .line 4033
    invoke-static {v1, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 65
    iput v1, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->status:I

    .line 66
    iget-object v1, p0, Ldur;->f:Ljava/lang/Long;

    .line 4044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 66
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->sort:J

    .line 67
    iget-object v1, p0, Ldur;->g:Ljava/lang/Boolean;

    .line 5022
    invoke-static {v1, v6}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 67
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->hasMore:Z

    .line 68
    iget-object v1, p0, Ldur;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->name:Ljava/lang/String;

    .line 69
    iget v1, p0, Ldur;->i:I

    iput v1, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->activityType:I

    .line 70
    iget-object v1, p0, Ldur;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->activityComment:Ljava/lang/String;

    goto :goto_0
.end method

.method public static fromIdlList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldur;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/TopicDataObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "modelList":Ljava/util/List;, "Ljava/util/List<Ldur;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 76
    :cond_0
    const/4 v2, 0x0

    .line 85
    :cond_1
    return-object v2

    .line 78
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v2, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/TopicDataObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldur;

    .line 80
    .local v0, "model":Ldur;
    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->fromIdl(Ldur;)Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    move-result-object v1

    .line 81
    .local v1, "object":Lcom/alibaba/android/dingtalkim/models/TopicDataObject;
    if-eqz v1, :cond_3

    .line 82
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public copy()Lcom/alibaba/android/dingtalkim/models/TopicDataObject;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 99
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;-><init>()V

    .line 100
    .local v0, "object":Lcom/alibaba/android/dingtalkim/models/TopicDataObject;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicId:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicId:J

    .line 101
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->version:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->version:J

    .line 102
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->cursor:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->cursor:J

    .line 103
    iget v1, p0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->status:I

    iput v1, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->status:I

    .line 104
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->sort:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->sort:J

    .line 105
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->hasMore:Z

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->hasMore:Z

    .line 106
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->name:Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->activityComment:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->activityComment:Ljava/lang/String;

    .line 108
    iget v1, p0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->activityType:I

    iput v1, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->activityType:I

    .line 109
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicEmotionObjectList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicEmotionObjectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicEmotionObjectList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicEmotionObjectList:Ljava/util/List;

    .line 112
    :cond_0
    return-object v0
.end method

.method public isOnline()Z
    .locals 2
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 90
    iget v1, p0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->status:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicEmotionObjectList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicEmotionObjectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
