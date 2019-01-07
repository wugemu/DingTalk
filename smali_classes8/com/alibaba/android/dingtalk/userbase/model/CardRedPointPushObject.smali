.class public Lcom/alibaba/android/dingtalk/userbase/model/CardRedPointPushObject;
.super Ljava/lang/Object;
.source "CardRedPointPushObject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/userbase/model/CardRedPointPushObject$TYPE;
    }
.end annotation


# static fields
.field public static final FACE2FACE:I = 0x1

.field public static final SQUARE:I = 0x2

.field private static final serialVersionUID:J = -0x620bb26f55f47e6aL


# instance fields
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

    .line 63
    return-void
.end method

.method public static fromIdl(Lcgx;)Lcom/alibaba/android/dingtalk/userbase/model/CardRedPointPushObject;
    .locals 6
    .param p0, "model"    # Lcgx;

    .prologue
    const-wide/16 v4, 0x0

    .line 42
    if-nez p0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    .line 45
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/CardRedPointPushObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/CardRedPointPushObject;-><init>()V

    .line 46
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/CardRedPointPushObject;
    iget-object v1, p0, Lcgx;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 46
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardRedPointPushObject;->uid:J

    .line 47
    iget-object v1, p0, Lcgx;->c:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 47
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardRedPointPushObject;->roomId:J

    .line 48
    iget-object v1, p0, Lcgx;->b:Ljava/lang/Integer;

    .line 3033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 48
    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardRedPointPushObject;->type:I

    goto :goto_0
.end method


# virtual methods
.method public toIdl()Lcgx;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 53
    new-instance v0, Lcgx;

    invoke-direct {v0}, Lcgx;-><init>()V

    .line 54
    .local v0, "model":Lcgx;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardRedPointPushObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcgx;->a:Ljava/lang/Long;

    .line 55
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardRedPointPushObject;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcgx;->b:Ljava/lang/Integer;

    .line 56
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardRedPointPushObject;->roomId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcgx;->c:Ljava/lang/Long;

    .line 57
    return-object v0
.end method
