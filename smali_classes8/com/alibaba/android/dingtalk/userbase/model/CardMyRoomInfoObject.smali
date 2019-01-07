.class public Lcom/alibaba/android/dingtalk/userbase/model/CardMyRoomInfoObject;
.super Ljava/lang/Object;
.source "CardMyRoomInfoObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x238196772024bb9eL


# instance fields
.field public exchangeDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public gps:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public location:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public picUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public remark:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public tagList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lcgr;)Lcom/alibaba/android/dingtalk/userbase/model/CardMyRoomInfoObject;
    .locals 2
    .param p0, "model"    # Lcgr;

    .prologue
    .line 38
    if-nez p0, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    .line 41
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/CardMyRoomInfoObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/CardMyRoomInfoObject;-><init>()V

    .line 42
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/CardMyRoomInfoObject;
    iget-object v1, p0, Lcgr;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardMyRoomInfoObject;->exchangeDate:Ljava/lang/String;

    .line 43
    iget-object v1, p0, Lcgr;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardMyRoomInfoObject;->gps:Ljava/lang/String;

    .line 44
    iget-object v1, p0, Lcgr;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardMyRoomInfoObject;->location:Ljava/lang/String;

    .line 45
    iget-object v1, p0, Lcgr;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardMyRoomInfoObject;->picUrl:Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lcgr;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardMyRoomInfoObject;->remark:Ljava/lang/String;

    .line 47
    iget-object v1, p0, Lcgr;->c:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardMyRoomInfoObject;->tagList:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public toIdl()Lcgr;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 52
    new-instance v0, Lcgr;

    invoke-direct {v0}, Lcgr;-><init>()V

    .line 53
    .local v0, "model":Lcgr;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardMyRoomInfoObject;->exchangeDate:Ljava/lang/String;

    iput-object v1, v0, Lcgr;->f:Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardMyRoomInfoObject;->gps:Ljava/lang/String;

    iput-object v1, v0, Lcgr;->d:Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardMyRoomInfoObject;->location:Ljava/lang/String;

    iput-object v1, v0, Lcgr;->e:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardMyRoomInfoObject;->picUrl:Ljava/lang/String;

    iput-object v1, v0, Lcgr;->b:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardMyRoomInfoObject;->remark:Ljava/lang/String;

    iput-object v1, v0, Lcgr;->a:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardMyRoomInfoObject;->tagList:Ljava/util/List;

    iput-object v1, v0, Lcgr;->c:Ljava/util/List;

    .line 59
    return-object v0
.end method
