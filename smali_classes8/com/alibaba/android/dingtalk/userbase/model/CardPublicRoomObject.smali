.class public Lcom/alibaba/android/dingtalk/userbase/model/CardPublicRoomObject;
.super Ljava/lang/Object;
.source "CardPublicRoomObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x29cf355dc6578b3eL


# instance fields
.field public albumCover:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

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

.field public companyCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public conditions:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public distance:Ljava/lang/String;
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

.field public label:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public location:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public qrCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public timeLeft:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lcgw;)Lcom/alibaba/android/dingtalk/userbase/model/CardPublicRoomObject;
    .locals 7
    .param p0, "model"    # Lcgw;

    .prologue
    const/4 v6, 0x0

    .line 65
    if-nez p0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 88
    :goto_0
    return-object v0

    .line 68
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/CardPublicRoomObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/CardPublicRoomObject;-><init>()V

    .line 69
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/CardPublicRoomObject;
    iget-object v2, p0, Lcgw;->h:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardPublicRoomObject;->albumCover:Ljava/lang/String;

    .line 70
    iget-object v2, p0, Lcgw;->d:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcgw;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardPublicRoomObject;->cardUserObjectList:Ljava/util/List;

    .line 72
    iget-object v2, p0, Lcgw;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lche;

    .line 73
    .local v1, "userModel":Lche;
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardPublicRoomObject;->cardUserObjectList:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->fromIdl(Lche;)Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 76
    .end local v1    # "userModel":Lche;
    :cond_1
    iget-object v2, p0, Lcgw;->k:Ljava/util/Map;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardPublicRoomObject;->conditions:Ljava/util/Map;

    .line 77
    iget-object v2, p0, Lcgw;->g:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardPublicRoomObject;->description:Ljava/lang/String;

    .line 78
    iget-object v2, p0, Lcgw;->l:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardPublicRoomObject;->distance:Ljava/lang/String;

    .line 79
    iget-object v2, p0, Lcgw;->b:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardPublicRoomObject;->gps:Ljava/lang/String;

    .line 80
    iget-object v2, p0, Lcgw;->e:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardPublicRoomObject;->qrCode:Ljava/lang/String;

    .line 81
    iget-object v2, p0, Lcgw;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 81
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardPublicRoomObject;->id:J

    .line 82
    iget-object v2, p0, Lcgw;->j:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardPublicRoomObject;->label:Ljava/lang/String;

    .line 83
    iget-object v2, p0, Lcgw;->c:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardPublicRoomObject;->location:Ljava/lang/String;

    .line 84
    iget-object v2, p0, Lcgw;->f:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardPublicRoomObject;->name:Ljava/lang/String;

    .line 85
    iget-object v2, p0, Lcgw;->i:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardPublicRoomObject;->timeLeft:Ljava/lang/String;

    .line 86
    iget-object v2, p0, Lcgw;->n:Ljava/lang/Integer;

    .line 2033
    invoke-static {v2, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 86
    iput v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardPublicRoomObject;->companyCount:I

    .line 87
    iget-object v2, p0, Lcgw;->m:Ljava/lang/Integer;

    .line 3033
    invoke-static {v2, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 87
    iput v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardPublicRoomObject;->freshCount:I

    goto :goto_0
.end method


# virtual methods
.method public toIdl()Lcgw;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 92
    new-instance v0, Lcgw;

    invoke-direct {v0}, Lcgw;-><init>()V

    .line 93
    .local v0, "model":Lcgw;
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardPublicRoomObject;->cardUserObjectList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardPublicRoomObject;->cardUserObjectList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcgw;->d:Ljava/util/List;

    .line 95
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardPublicRoomObject;->cardUserObjectList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .line 96
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;
    iget-object v4, v0, Lcgw;->d:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->toIdl()Lche;

    move-result-object v2

    goto :goto_1

    .line 99
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardPublicRoomObject;->albumCover:Ljava/lang/String;

    iput-object v2, v0, Lcgw;->h:Ljava/lang/String;

    .line 100
    iget v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardPublicRoomObject;->companyCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcgw;->n:Ljava/lang/Integer;

    .line 101
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardPublicRoomObject;->conditions:Ljava/util/Map;

    iput-object v2, v0, Lcgw;->k:Ljava/util/Map;

    .line 102
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardPublicRoomObject;->description:Ljava/lang/String;

    iput-object v2, v0, Lcgw;->g:Ljava/lang/String;

    .line 103
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardPublicRoomObject;->distance:Ljava/lang/String;

    iput-object v2, v0, Lcgw;->l:Ljava/lang/String;

    .line 104
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardPublicRoomObject;->gps:Ljava/lang/String;

    iput-object v2, v0, Lcgw;->b:Ljava/lang/String;

    .line 105
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardPublicRoomObject;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcgw;->a:Ljava/lang/Long;

    .line 106
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardPublicRoomObject;->label:Ljava/lang/String;

    iput-object v2, v0, Lcgw;->j:Ljava/lang/String;

    .line 107
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardPublicRoomObject;->location:Ljava/lang/String;

    iput-object v2, v0, Lcgw;->c:Ljava/lang/String;

    .line 108
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardPublicRoomObject;->name:Ljava/lang/String;

    iput-object v2, v0, Lcgw;->f:Ljava/lang/String;

    .line 109
    iget v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardPublicRoomObject;->freshCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcgw;->m:Ljava/lang/Integer;

    .line 110
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardPublicRoomObject;->qrCode:Ljava/lang/String;

    iput-object v2, v0, Lcgw;->e:Ljava/lang/String;

    .line 111
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardPublicRoomObject;->timeLeft:Ljava/lang/String;

    iput-object v2, v0, Lcgw;->i:Ljava/lang/String;

    .line 112
    return-object v0
.end method
