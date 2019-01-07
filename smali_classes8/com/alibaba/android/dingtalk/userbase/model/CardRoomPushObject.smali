.class public Lcom/alibaba/android/dingtalk/userbase/model/CardRoomPushObject;
.super Ljava/lang/Object;
.source "CardRoomPushObject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/userbase/model/CardRoomPushObject$TYPE;
    }
.end annotation


# static fields
.field public static final ENTER:I = 0x1

.field public static final LEAVE:I = 0x2

.field private static final serialVersionUID:J = 0x486665aa7e68eabcL


# instance fields
.field public cardUser:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public passwd:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public roomId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public type:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public uid:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method public static fromIdl(Lcgz;)Lcom/alibaba/android/dingtalk/userbase/model/CardRoomPushObject;
    .locals 6
    .param p0, "model"    # Lcgz;

    .prologue
    const-wide/16 v4, 0x0

    .line 45
    if-nez p0, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 56
    :goto_0
    return-object v0

    .line 48
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomPushObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomPushObject;-><init>()V

    .line 49
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/CardRoomPushObject;
    iget-object v1, p0, Lcgz;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 49
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomPushObject;->uid:J

    .line 50
    iget-object v1, p0, Lcgz;->b:Ljava/lang/Integer;

    .line 2033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 50
    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomPushObject;->type:I

    .line 51
    iget-object v1, p0, Lcgz;->c:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 51
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomPushObject;->roomId:J

    .line 52
    iget-object v1, p0, Lcgz;->d:Lche;

    if-eqz v1, :cond_1

    .line 53
    iget-object v1, p0, Lcgz;->d:Lche;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->fromIdl(Lche;)Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomPushObject;->cardUser:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .line 55
    :cond_1
    iget-object v1, p0, Lcgz;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomPushObject;->passwd:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public toIdl()Lcgz;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 60
    new-instance v0, Lcgz;

    invoke-direct {v0}, Lcgz;-><init>()V

    .line 61
    .local v0, "model":Lcgz;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomPushObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcgz;->a:Ljava/lang/Long;

    .line 62
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomPushObject;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcgz;->b:Ljava/lang/Integer;

    .line 63
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomPushObject;->roomId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcgz;->c:Ljava/lang/Long;

    .line 64
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomPushObject;->cardUser:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lcgz;->d:Lche;

    .line 65
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomPushObject;->passwd:Ljava/lang/String;

    iput-object v1, v0, Lcgz;->e:Ljava/lang/String;

    .line 66
    return-object v0

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomPushObject;->cardUser:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->toIdl()Lche;

    move-result-object v1

    goto :goto_0
.end method
