.class public Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;
.super Ljava/lang/Object;
.source "FriendRequestObject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;,
        Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;
    }
.end annotation


# static fields
.field public static final FRIEND_MOBILE_SOURCE_LOCAL:I = 0x1

.field public static final FRIEND_MOBILE_SOURCE_NONE:I = 0x0

.field public static final FRIEND_MOBILE_SOURCE_SEARCH:I = 0x3

.field public static final FRIEND_MOBILE_SOURCE_SHARE:I = 0x2

.field public static final FRIEND_SOURCE_PRE_WORK_MATE:I = 0x6e

.field private static final serialVersionUID:J = -0x18029aa3e18c7f31L


# instance fields
.field public card:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isHide:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isRead:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public keyword:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mobile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mobileSource:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public modifyAt:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public remark:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public showMobile:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public source:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public status:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public uid:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public uidEnc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    return-void
.end method

.method public static fromIdl(Lcds;)Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;
    .locals 8
    .param p0, "friendRequestModel"    # Lcds;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 96
    const/4 v0, 0x0

    .line 98
    .local v0, "friendRequestObject":Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;
    if-eqz p0, :cond_0

    .line 99
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;

    .end local v0    # "friendRequestObject":Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;
    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;-><init>()V

    .line 100
    .restart local v0    # "friendRequestObject":Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;
    iget-object v1, p0, Lcds;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 100
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->uid:J

    .line 101
    iget-object v1, p0, Lcds;->b:Ljava/lang/Integer;

    .line 2033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 101
    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->fromValue(I)Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->status:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    .line 102
    iget-object v1, p0, Lcds;->c:Lcgk;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->fromIDLModel(Lcgk;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 103
    iget-object v1, p0, Lcds;->d:Ljava/lang/Integer;

    .line 3033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 103
    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;->fromValue(I)Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->source:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;

    .line 104
    iget-object v1, p0, Lcds;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->remark:Ljava/lang/String;

    .line 105
    iget-object v1, p0, Lcds;->f:Ljava/lang/Boolean;

    .line 4022
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 105
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->isRead:Z

    .line 106
    iget-object v1, p0, Lcds;->g:Ljava/lang/Boolean;

    .line 5022
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 106
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->showMobile:Z

    .line 107
    iget-object v1, p0, Lcds;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->mobile:Ljava/lang/String;

    .line 108
    iget-object v1, p0, Lcds;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->uidEnc:Ljava/lang/String;

    .line 109
    iget-object v1, p0, Lcds;->k:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->keyword:Ljava/lang/String;

    .line 110
    iget-object v1, p0, Lcds;->l:Ljava/lang/Integer;

    .line 5033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 110
    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->mobileSource:I

    .line 111
    iget-object v1, p0, Lcds;->m:Ljava/lang/Long;

    .line 5044
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 111
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->modifyAt:J

    .line 112
    iget-object v1, p0, Lcds;->n:Ljava/lang/Boolean;

    .line 6022
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 112
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->isHide:Z

    .line 113
    iget-object v1, p0, Lcds;->o:Lcgv;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->fromIdl(Lcgv;)Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->card:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    .line 116
    :cond_0
    return-object v0
.end method


# virtual methods
.method public toIdl()Lcds;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 120
    new-instance v0, Lcds;

    invoke-direct {v0}, Lcds;-><init>()V

    .line 121
    .local v0, "friendRequestModel":Lcds;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcds;->a:Ljava/lang/Long;

    .line 122
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->remark:Ljava/lang/String;

    iput-object v1, v0, Lcds;->e:Ljava/lang/String;

    .line 123
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->source:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->source:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;->access$000(Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcds;->d:Ljava/lang/Integer;

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->status:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    if-eqz v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->status:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->access$100(Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcds;->b:Ljava/lang/Integer;

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v1, :cond_2

    .line 130
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->toIDLModel()Lcgk;

    move-result-object v1

    iput-object v1, v0, Lcds;->c:Lcgk;

    .line 132
    :cond_2
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->isRead:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcds;->f:Ljava/lang/Boolean;

    .line 133
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->showMobile:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcds;->g:Ljava/lang/Boolean;

    .line 134
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->mobile:Ljava/lang/String;

    iput-object v1, v0, Lcds;->h:Ljava/lang/String;

    .line 135
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->uidEnc:Ljava/lang/String;

    iput-object v1, v0, Lcds;->j:Ljava/lang/String;

    .line 136
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->keyword:Ljava/lang/String;

    iput-object v1, v0, Lcds;->k:Ljava/lang/String;

    .line 137
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->mobileSource:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcds;->l:Ljava/lang/Integer;

    .line 138
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->modifyAt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcds;->m:Ljava/lang/Long;

    .line 139
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->isHide:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcds;->n:Ljava/lang/Boolean;

    .line 140
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->card:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    if-eqz v1, :cond_3

    .line 141
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->card:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->toIdl()Lcgv;

    move-result-object v1

    iput-object v1, v0, Lcds;->o:Lcgv;

    .line 143
    :cond_3
    return-object v0
.end method
