.class public Lcom/alibaba/android/dingtalk/userbase/model/UserPushObject;
.super Ljava/lang/Object;
.source "UserPushObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5c95ceda8d2ed337L


# instance fields
.field public card:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;
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

.field public user:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
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

.method public static fromIdl(Lchf;)Lcom/alibaba/android/dingtalk/userbase/model/UserPushObject;
    .locals 6
    .param p0, "model"    # Lchf;

    .prologue
    const/4 v2, 0x0

    .line 29
    if-nez p0, :cond_0

    .line 37
    :goto_0
    return-object v2

    .line 32
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserPushObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserPushObject;-><init>()V

    .line 33
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserPushObject;
    iget-object v1, p0, Lchf;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v4, 0x0

    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 33
    iput-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserPushObject;->uid:J

    .line 34
    iget-object v1, p0, Lchf;->b:Ljava/lang/Integer;

    .line 2033
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 34
    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserPushObject;->type:I

    .line 35
    iget-object v1, p0, Lchf;->c:Lcgk;

    if-nez v1, :cond_1

    move-object v1, v2

    :goto_1
    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserPushObject;->user:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 36
    iget-object v1, p0, Lchf;->d:Lcgv;

    if-nez v1, :cond_2

    :goto_2
    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserPushObject;->card:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    move-object v2, v0

    .line 37
    goto :goto_0

    .line 35
    :cond_1
    iget-object v1, p0, Lchf;->c:Lcgk;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->fromIDLModel(Lcgk;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v1

    goto :goto_1

    .line 36
    :cond_2
    iget-object v1, p0, Lchf;->d:Lcgv;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->fromIdl(Lcgv;)Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    move-result-object v2

    goto :goto_2
.end method


# virtual methods
.method public toIdl()Lchf;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 41
    new-instance v0, Lchf;

    invoke-direct {v0}, Lchf;-><init>()V

    .line 42
    .local v0, "model":Lchf;
    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserPushObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lchf;->a:Ljava/lang/Long;

    .line 43
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserPushObject;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lchf;->b:Ljava/lang/Integer;

    .line 44
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserPushObject;->user:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-nez v1, :cond_0

    move-object v1, v2

    :goto_0
    iput-object v1, v0, Lchf;->c:Lcgk;

    .line 45
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserPushObject;->card:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    if-nez v1, :cond_1

    :goto_1
    iput-object v2, v0, Lchf;->d:Lcgv;

    .line 46
    return-object v0

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserPushObject;->user:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->toIDLModel()Lcgk;

    move-result-object v1

    goto :goto_0

    .line 45
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserPushObject;->card:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->toIdl()Lcgv;

    move-result-object v2

    goto :goto_1
.end method
