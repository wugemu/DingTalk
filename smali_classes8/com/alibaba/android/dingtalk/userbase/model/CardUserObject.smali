.class public Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;
.super Ljava/lang/Object;
.source "CardUserObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2f18f62630b3ef0dL


# instance fields
.field public avatarMediaId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public encodeUid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public friendStatus:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public myFriend:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public name:Ljava/lang/String;
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

.field public tags:Ljava/util/List;
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

.field public tel:Ljava/lang/String;
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
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lche;)Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;
    .locals 5
    .param p0, "model"    # Lche;

    .prologue
    const/4 v4, 0x0

    .line 54
    if-nez p0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    .line 57
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;-><init>()V

    .line 58
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;
    iget-object v1, p0, Lche;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 58
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->uid:J

    .line 59
    iget-object v1, p0, Lche;->b:Lcgv;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->fromIdl(Lcgv;)Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    .line 60
    iget-object v1, p0, Lche;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->name:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lche;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->avatarMediaId:Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lche;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->tel:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lche;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->encodeUid:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lche;->g:Ljava/lang/Boolean;

    .line 2022
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 64
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->myFriend:Z

    .line 65
    iget-object v1, p0, Lche;->h:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->tags:Ljava/util/List;

    .line 66
    iget-object v1, p0, Lche;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->remark:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lche;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->picUrl:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lche;->k:Ljava/lang/Integer;

    .line 2033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 68
    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->friendStatus:I

    goto :goto_0
.end method


# virtual methods
.method public toIdl()Lche;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 73
    new-instance v0, Lche;

    invoke-direct {v0}, Lche;-><init>()V

    .line 74
    .local v0, "model":Lche;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lche;->a:Ljava/lang/Long;

    .line 75
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->toIdl()Lcgv;

    move-result-object v1

    iput-object v1, v0, Lche;->b:Lcgv;

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->name:Ljava/lang/String;

    iput-object v1, v0, Lche;->c:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->avatarMediaId:Ljava/lang/String;

    iput-object v1, v0, Lche;->d:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->tel:Ljava/lang/String;

    iput-object v1, v0, Lche;->e:Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->encodeUid:Ljava/lang/String;

    iput-object v1, v0, Lche;->f:Ljava/lang/String;

    .line 82
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->myFriend:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lche;->g:Ljava/lang/Boolean;

    .line 83
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->tags:Ljava/util/List;

    iput-object v1, v0, Lche;->h:Ljava/util/List;

    .line 84
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->remark:Ljava/lang/String;

    iput-object v1, v0, Lche;->i:Ljava/lang/String;

    .line 85
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->picUrl:Ljava/lang/String;

    iput-object v1, v0, Lche;->j:Ljava/lang/String;

    .line 86
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->friendStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lche;->k:Ljava/lang/Integer;

    .line 87
    return-object v0
.end method
