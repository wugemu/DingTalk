.class public Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;
.super Ljava/lang/Object;
.source "CardRoomObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4b65636852a1953bL


# instance fields
.field public cardUserObjectList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;",
            ">;"
        }
    .end annotation
.end field

.field public createTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public creator:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public freshCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public gps:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public id:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public location:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public passwd:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public qrCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public roomToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public total:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
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

.method public static fromIdl(Lcgy;)Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;
    .locals 7
    .param p0, "model"    # Lcgy;

    .prologue
    const/4 v6, 0x0

    .line 55
    if-nez p0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    .line 58
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;-><init>()V

    .line 59
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;
    iget-object v2, p0, Lcgy;->b:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;->gps:Ljava/lang/String;

    .line 60
    iget-object v2, p0, Lcgy;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 60
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;->id:J

    .line 61
    iget-object v2, p0, Lcgy;->c:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;->location:Ljava/lang/String;

    .line 62
    iget-object v2, p0, Lcgy;->f:Ljava/lang/Integer;

    .line 2033
    invoke-static {v2, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 62
    iput v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;->freshCount:I

    .line 63
    iget-object v2, p0, Lcgy;->e:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;->qrCode:Ljava/lang/String;

    .line 64
    iget-object v2, p0, Lcgy;->d:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcgy;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 65
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;->cardUserObjectList:Ljava/util/List;

    .line 66
    iget-object v2, p0, Lcgy;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lche;

    .line 67
    .local v1, "userModel":Lche;
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;->cardUserObjectList:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->fromIdl(Lche;)Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 70
    .end local v1    # "userModel":Lche;
    :cond_1
    iget-object v2, p0, Lcgy;->g:Lche;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->fromIdl(Lche;)Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;->creator:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .line 71
    iget-object v2, p0, Lcgy;->h:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;->createTime:Ljava/lang/String;

    .line 72
    iget-object v2, p0, Lcgy;->i:Ljava/lang/Integer;

    .line 3033
    invoke-static {v2, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 72
    iput v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;->total:I

    .line 73
    iget-object v2, p0, Lcgy;->j:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;->roomToken:Ljava/lang/String;

    .line 74
    iget-object v2, p0, Lcgy;->k:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;->passwd:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public toIdl()Lcgy;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 79
    new-instance v0, Lcgy;

    invoke-direct {v0}, Lcgy;-><init>()V

    .line 80
    .local v0, "model":Lcgy;
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;->cardUserObjectList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;->cardUserObjectList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 81
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcgy;->d:Ljava/util/List;

    .line 82
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;->cardUserObjectList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .line 83
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;
    iget-object v5, v0, Lcgy;->d:Ljava/util/List;

    if-nez v1, :cond_0

    move-object v2, v3

    :goto_1
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->toIdl()Lche;

    move-result-object v2

    goto :goto_1

    .line 86
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;->gps:Ljava/lang/String;

    iput-object v2, v0, Lcgy;->b:Ljava/lang/String;

    .line 87
    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcgy;->a:Ljava/lang/Long;

    .line 88
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;->location:Ljava/lang/String;

    iput-object v2, v0, Lcgy;->c:Ljava/lang/String;

    .line 89
    iget v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;->freshCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcgy;->f:Ljava/lang/Integer;

    .line 90
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;->qrCode:Ljava/lang/String;

    iput-object v2, v0, Lcgy;->e:Ljava/lang/String;

    .line 91
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;->creator:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    if-nez v2, :cond_2

    :goto_2
    iput-object v3, v0, Lcgy;->g:Lche;

    .line 92
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;->createTime:Ljava/lang/String;

    iput-object v2, v0, Lcgy;->h:Ljava/lang/String;

    .line 93
    iget v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;->total:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcgy;->i:Ljava/lang/Integer;

    .line 94
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;->roomToken:Ljava/lang/String;

    iput-object v2, v0, Lcgy;->j:Ljava/lang/String;

    .line 95
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;->passwd:Ljava/lang/String;

    iput-object v2, v0, Lcgy;->k:Ljava/lang/String;

    .line 96
    return-object v0

    .line 91
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;->creator:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->toIdl()Lche;

    move-result-object v3

    goto :goto_2
.end method
