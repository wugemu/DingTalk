.class public Lcom/alibaba/android/dingtalk/userbase/model/FriendTagObject;
.super Ljava/lang/Object;
.source "FriendTagObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4e473b817868c16cL


# instance fields
.field public id:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public tag:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
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

.method public static fromIdl(Lcdv;)Lcom/alibaba/android/dingtalk/userbase/model/FriendTagObject;
    .locals 4
    .param p0, "model"    # Lcdv;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 29
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagObject;-><init>()V

    .line 30
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/FriendTagObject;
    iget-object v1, p0, Lcdv;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 30
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagObject;->id:J

    .line 31
    iget-object v1, p0, Lcdv;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagObject;->tag:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public toIdl()Lcdv;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 36
    new-instance v0, Lcdv;

    invoke-direct {v0}, Lcdv;-><init>()V

    .line 37
    .local v0, "model":Lcdv;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagObject;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcdv;->a:Ljava/lang/Long;

    .line 38
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagObject;->tag:Ljava/lang/String;

    iput-object v1, v0, Lcdv;->b:Ljava/lang/String;

    .line 39
    return-object v0
.end method
