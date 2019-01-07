.class public Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;
.super Ljava/lang/Object;
.source "FriendObject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4ed882fd0598410aL


# instance fields
.field public alias:Ljava/lang/String;

.field public card:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

.field public cardPhoneNumber:Ljava/lang/String;

.field public gmtCreate:J

.field public initiator:Z

.field public location:Ljava/lang/String;

.field public modifyAt:J

.field public picUrl:Ljava/lang/String;

.field public remark:Ljava/lang/String;

.field public roomCreate:J

.field public roomId:J

.field public setting:Lcdu;

.field public showMobile:Z

.field public status:Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;

.field public tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public uid:J

.field public uidEnc:Ljava/lang/String;

.field public userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    return-void
.end method

.method public static fromIdl(Lcdp;)Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;
    .locals 7
    .param p0, "model"    # Lcdp;

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 89
    if-nez p0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 111
    :goto_0
    return-object v0

    .line 92
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;-><init>()V

    .line 93
    .local v0, "friendObject":Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;
    iget-object v1, p0, Lcdp;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 93
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->uid:J

    .line 94
    iget-object v1, p0, Lcdp;->b:Ljava/lang/Integer;

    .line 2033
    invoke-static {v1, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 94
    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;->fromValue(I)Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->status:Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;

    .line 95
    iget-object v1, p0, Lcdp;->c:Lcgk;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->fromIDLModel(Lcgk;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 96
    iget-object v1, p0, Lcdp;->d:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v1, v6}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 96
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->initiator:Z

    .line 97
    iget-object v1, p0, Lcdp;->e:Ljava/lang/Boolean;

    .line 4022
    invoke-static {v1, v6}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 97
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->showMobile:Z

    .line 98
    iget-object v1, p0, Lcdp;->f:Lcgv;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->fromIdl(Lcgv;)Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->card:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    .line 99
    iget-object v1, p0, Lcdp;->g:Ljava/lang/Long;

    .line 4044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 99
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->roomId:J

    .line 100
    iget-object v1, p0, Lcdp;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->location:Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lcdp;->i:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->tags:Ljava/util/List;

    .line 102
    iget-object v1, p0, Lcdp;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->remark:Ljava/lang/String;

    .line 103
    iget-object v1, p0, Lcdp;->k:Ljava/lang/Long;

    .line 5044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 103
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->gmtCreate:J

    .line 104
    iget-object v1, p0, Lcdp;->l:Lcdu;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->setting:Lcdu;

    .line 105
    iget-object v1, p0, Lcdp;->m:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->uidEnc:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lcdp;->n:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->alias:Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lcdp;->o:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->picUrl:Ljava/lang/String;

    .line 108
    iget-object v1, p0, Lcdp;->p:Ljava/lang/Long;

    .line 6044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 108
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->modifyAt:J

    .line 109
    iget-object v1, p0, Lcdp;->q:Ljava/lang/Long;

    .line 7044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 109
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->roomCreate:J

    .line 110
    iget-object v1, p0, Lcdp;->r:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->cardPhoneNumber:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public toIdl()Lcdp;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 115
    new-instance v0, Lcdp;

    invoke-direct {v0}, Lcdp;-><init>()V

    .line 116
    .local v0, "model":Lcdp;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcdp;->a:Ljava/lang/Long;

    .line 117
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->status:Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;->access$000(Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcdp;->b:Ljava/lang/Integer;

    .line 118
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->toIDLModel()Lcgk;

    move-result-object v1

    iput-object v1, v0, Lcdp;->c:Lcgk;

    .line 121
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->initiator:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcdp;->d:Ljava/lang/Boolean;

    .line 122
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->showMobile:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcdp;->e:Ljava/lang/Boolean;

    .line 123
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->card:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    if-eqz v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->card:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->toIdl()Lcgv;

    move-result-object v1

    iput-object v1, v0, Lcdp;->f:Lcgv;

    .line 127
    :cond_1
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->roomId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcdp;->g:Ljava/lang/Long;

    .line 128
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->location:Ljava/lang/String;

    iput-object v1, v0, Lcdp;->h:Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->tags:Ljava/util/List;

    iput-object v1, v0, Lcdp;->i:Ljava/util/List;

    .line 130
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->remark:Ljava/lang/String;

    iput-object v1, v0, Lcdp;->j:Ljava/lang/String;

    .line 131
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->gmtCreate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcdp;->k:Ljava/lang/Long;

    .line 132
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->setting:Lcdu;

    iput-object v1, v0, Lcdp;->l:Lcdu;

    .line 133
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->uidEnc:Ljava/lang/String;

    iput-object v1, v0, Lcdp;->m:Ljava/lang/String;

    .line 134
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->alias:Ljava/lang/String;

    iput-object v1, v0, Lcdp;->n:Ljava/lang/String;

    .line 135
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->picUrl:Ljava/lang/String;

    iput-object v1, v0, Lcdp;->o:Ljava/lang/String;

    .line 136
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->modifyAt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcdp;->p:Ljava/lang/Long;

    .line 137
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->roomCreate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcdp;->q:Ljava/lang/Long;

    .line 138
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->cardPhoneNumber:Ljava/lang/String;

    iput-object v1, v0, Lcdp;->r:Ljava/lang/String;

    .line 139
    return-object v0
.end method
