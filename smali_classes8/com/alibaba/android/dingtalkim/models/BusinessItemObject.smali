.class public final Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;
.super Ljava/lang/Object;
.source "BusinessItemObject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/models/BusinessItemObject$a;
    }
.end annotation


# static fields
.field public static BUSI_TYPE_ADD:I = 0x0

.field public static BUSI_TYPE_NORMAL:I = 0x0

.field public static BUSI_TYPE_SYSTEM:I = 0x0

.field private static final CONVERT_STACK_THRESHOLD:I = 0x64


# instance fields
.field public actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;",
            ">;"
        }
    .end annotation
.end field

.field public content:Ljava/lang/String;

.field public createAt:J

.field public creatorType:I

.field public icon:Ljava/lang/String;

.field public id:J

.field public orgId:J

.field public pcUrl:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public titleFormat:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/FormatObject;",
            ">;"
        }
    .end annotation
.end field

.field public uid:J

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    sput v0, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->BUSI_TYPE_NORMAL:I

    .line 25
    const/4 v0, 0x2

    sput v0, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->BUSI_TYPE_SYSTEM:I

    .line 26
    const/4 v0, 0x3

    sput v0, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->BUSI_TYPE_ADD:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    return-void
.end method

.method public static fromIdlModel(Ldsk;)Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;
    .locals 7
    .param p0, "model"    # Ldsk;

    .prologue
    const/4 v4, 0x0

    .line 55
    if-nez p0, :cond_0

    .line 82
    :goto_0
    return-object v4

    .line 59
    :cond_0
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    .line 60
    .local v3, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/alibaba/android/dingtalkim/models/BusinessItemObject$a;>;"
    new-instance v2, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject$a;

    invoke-direct {v2, p0, v4}, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject$a;-><init>(Ldsk;Lcom/alibaba/android/dingtalkim/models/BusinessItemObject$a;)V

    .line 61
    .local v2, "root":Lcom/alibaba/android/dingtalkim/models/BusinessItemObject$a;
    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_1
    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 64
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject$a;

    .line 65
    .local v1, "node":Lcom/alibaba/android/dingtalkim/models/BusinessItemObject$a;
    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject$a;->a:Ldsk;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->shadowConvert(Ldsk;)Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject$a;->b:Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;

    .line 66
    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject$a;->c:Lcom/alibaba/android/dingtalkim/models/BusinessItemObject$a;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject$a;->c:Lcom/alibaba/android/dingtalkim/models/BusinessItemObject$a;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject$a;->b:Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject$a;->c:Lcom/alibaba/android/dingtalkim/models/BusinessItemObject$a;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject$a;->b:Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->actions:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 67
    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject$a;->c:Lcom/alibaba/android/dingtalkim/models/BusinessItemObject$a;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject$a;->b:Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->actions:Ljava/util/List;

    iget-object v5, v1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject$a;->b:Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_2
    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject$a;->a:Ldsk;

    iget-object v4, v4, Ldsk;->l:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 72
    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject$a;->a:Ldsk;

    iget-object v4, v4, Ldsk;->l:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "index":I
    :goto_1
    if-ltz v0, :cond_1

    .line 73
    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v4

    const/16 v5, 0x64

    if-ge v4, v5, :cond_4

    .line 74
    new-instance v5, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject$a;

    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject$a;->a:Ldsk;

    iget-object v4, v4, Ldsk;->l:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldsk;

    invoke-direct {v5, v4, v1}, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject$a;-><init>(Ldsk;Lcom/alibaba/android/dingtalkim/models/BusinessItemObject$a;)V

    invoke-virtual {v3, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 76
    :cond_4
    const-string/jumbo v4, "BusinessItemObject convert failed: stack overflow"

    .line 1050
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v5

    sget v6, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v5, v6, :cond_3

    .line 1051
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 82
    .end local v0    # "index":I
    .end local v1    # "node":Lcom/alibaba/android/dingtalkim/models/BusinessItemObject$a;
    :cond_5
    iget-object v4, v2, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject$a;->b:Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;

    goto/16 :goto_0
.end method

.method private static shadowConvert(Ldsk;)Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;
    .locals 8
    .param p0, "model"    # Ldsk;

    .prologue
    const-wide/16 v6, 0x0

    .line 87
    new-instance v2, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;-><init>()V

    .line 88
    .local v2, "object":Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;
    iget-object v3, p0, Ldsk;->a:Ljava/lang/Long;

    .line 2044
    invoke-static {v3, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 88
    iput-wide v4, v2, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->id:J

    .line 89
    iget-object v3, p0, Ldsk;->b:Ljava/lang/Long;

    .line 3044
    invoke-static {v3, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 89
    iput-wide v4, v2, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->orgId:J

    .line 90
    iget-object v3, p0, Ldsk;->c:Ljava/lang/Integer;

    .line 4033
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 90
    iput v3, v2, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->creatorType:I

    .line 91
    iget-object v3, p0, Ldsk;->d:Ljava/lang/Long;

    .line 4044
    invoke-static {v3, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 91
    iput-wide v4, v2, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->createAt:J

    .line 92
    iget-object v3, p0, Ldsk;->e:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->icon:Ljava/lang/String;

    .line 93
    iget-object v3, v2, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->icon:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->icon:Ljava/lang/String;

    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    :try_start_0
    iget-object v3, v2, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->icon:Ljava/lang/String;

    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->icon:Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_0
    :goto_0
    iget-object v3, p0, Ldsk;->f:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->title:Ljava/lang/String;

    .line 101
    iget-object v3, p0, Ldsk;->h:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->content:Ljava/lang/String;

    .line 102
    iget-object v3, p0, Ldsk;->i:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->url:Ljava/lang/String;

    .line 103
    iget-object v3, p0, Ldsk;->j:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->pcUrl:Ljava/lang/String;

    .line 104
    iget-object v3, p0, Ldsk;->k:Ljava/lang/Long;

    .line 5044
    invoke-static {v3, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 104
    iput-wide v4, v2, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->uid:J

    .line 105
    iget-object v3, p0, Ldsk;->g:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 106
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->titleFormat:Ljava/util/List;

    .line 107
    iget-object v3, p0, Ldsk;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldti;

    .line 108
    .local v1, "m":Ldti;
    if-eqz v1, :cond_1

    .line 111
    iget-object v4, v2, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->titleFormat:Ljava/util/List;

    new-instance v5, Lcom/alibaba/android/dingtalkim/models/FormatObject;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalkim/models/FormatObject;-><init>()V

    invoke-virtual {v5, v1}, Lcom/alibaba/android/dingtalkim/models/FormatObject;->fromModelIDL(Ldti;)Lcom/alibaba/android/dingtalkim/models/FormatObject;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 96
    .end local v1    # "m":Ldti;
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0

    .line 115
    .end local v0    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_2
    iget-object v3, p0, Ldsk;->l:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p0, Ldsk;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 116
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->actions:Ljava/util/List;

    .line 119
    :cond_3
    return-object v2
.end method
