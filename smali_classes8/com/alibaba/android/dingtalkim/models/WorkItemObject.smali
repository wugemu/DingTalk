.class public final Lcom/alibaba/android/dingtalkim/models/WorkItemObject;
.super Ljava/lang/Object;
.source "WorkItemObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/ActionObject;",
            ">;"
        }
    .end annotation
.end field

.field public contents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldth;",
            ">;"
        }
    .end annotation
.end field

.field public createAt:J

.field public icon:Ljava/lang/String;

.field public id:J

.field public itemType:Ljava/lang/String;

.field public pcUrl:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromModelIDL(Lduy;)Lcom/alibaba/android/dingtalkim/models/WorkItemObject;
    .locals 8
    .param p1, "model"    # Lduy;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 41
    new-instance v2, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;-><init>()V

    .line 42
    .local v2, "object":Lcom/alibaba/android/dingtalkim/models/WorkItemObject;
    if-eqz p1, :cond_2

    .line 43
    iget-object v3, p1, Lduy;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v3, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 43
    iput-wide v4, v2, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->id:J

    .line 44
    iget-object v3, p1, Lduy;->c:Ljava/lang/Long;

    .line 2044
    invoke-static {v3, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 44
    iput-wide v4, v2, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->createAt:J

    .line 45
    iget-object v3, p1, Lduy;->d:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->icon:Ljava/lang/String;

    .line 46
    iget-object v3, v2, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->icon:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->icon:Ljava/lang/String;

    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    :try_start_0
    iget-object v3, v2, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->icon:Ljava/lang/String;

    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->icon:Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_0
    :goto_0
    iget-object v3, p1, Lduy;->f:Ljava/util/List;

    iput-object v3, v2, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->contents:Ljava/util/List;

    .line 54
    iget-object v3, p1, Lduy;->e:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->title:Ljava/lang/String;

    .line 55
    iget-object v3, p1, Lduy;->g:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->url:Ljava/lang/String;

    .line 56
    iget-object v3, p1, Lduy;->h:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->pcUrl:Ljava/lang/String;

    .line 57
    iget-object v3, p1, Lduy;->i:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 58
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->actions:Ljava/util/List;

    .line 59
    iget-object v3, p1, Lduy;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldsg;

    .line 60
    .local v1, "m":Ldsg;
    iget-object v4, v2, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->actions:Ljava/util/List;

    new-instance v5, Lcom/alibaba/android/dingtalkim/models/ActionObject;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalkim/models/ActionObject;-><init>()V

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/models/ActionObject;->fromModelIDL(Ldsg;)Lcom/alibaba/android/dingtalkim/models/ActionObject;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 49
    .end local v1    # "m":Ldsg;
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0

    .line 63
    .end local v0    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_1
    iget-object v3, p1, Lduy;->j:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->itemType:Ljava/lang/String;

    .line 65
    :cond_2
    return-object v2
.end method
