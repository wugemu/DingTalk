.class public Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;
.super Ljava/lang/Object;
.source "QuotaDetailObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public callBuyRemain:J

.field public callBuyTeleRemain:J

.field public callBuyTeleTotal:J

.field public callBuyTeleUsed:J

.field public callBuyTotal:J

.field public callBuyUsed:J

.field public callPersonalRemain:J

.field public callPersonalUsed:J

.field public callPubRemain:J

.field public callPubTotal:J

.field public callPubUsed:J

.field public callUrl:Ljava/lang/String;

.field public cloudCallRemain:J

.field public cloudCallTotal:J

.field public dingBuyRemain:J

.field public dingBuyTotal:J

.field public dingFreeRemain:J

.field public dingPersonalRemain:J

.field public payAuthOrgIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public personLimit:J

.field public personLimitTotal:J

.field public role:I

.field public saveMoney:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lcdg;)Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;
    .locals 6
    .param p0, "model"    # Lcdg;

    .prologue
    const-wide/16 v4, 0x0

    .line 62
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;-><init>()V

    .line 63
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;
    if-eqz p0, :cond_1

    .line 64
    iget-object v1, p0, Lcdg;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 64
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->callPersonalUsed:J

    .line 65
    iget-object v1, p0, Lcdg;->b:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 65
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->callPersonalRemain:J

    .line 66
    iget-object v1, p0, Lcdg;->c:Ljava/lang/Long;

    .line 3044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 66
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->callPubUsed:J

    .line 67
    iget-object v1, p0, Lcdg;->d:Ljava/lang/Long;

    .line 4044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 67
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->callPubRemain:J

    .line 68
    iget-object v1, p0, Lcdg;->e:Ljava/lang/Long;

    .line 5044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 68
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->dingFreeRemain:J

    .line 69
    iget-object v1, p0, Lcdg;->f:Ljava/lang/Long;

    .line 6044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 69
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->dingPersonalRemain:J

    .line 70
    iget-object v1, p0, Lcdg;->g:Ljava/lang/Long;

    .line 7044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 70
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->dingBuyRemain:J

    .line 71
    iget-object v1, p0, Lcdg;->h:Ljava/lang/Long;

    .line 8044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 71
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->dingBuyTotal:J

    .line 72
    iget-object v1, p0, Lcdg;->i:Ljava/lang/Long;

    .line 9044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 72
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->callBuyUsed:J

    .line 73
    iget-object v1, p0, Lcdg;->j:Ljava/lang/Long;

    .line 10044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 73
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->callBuyRemain:J

    .line 74
    iget-object v1, p0, Lcdg;->k:Ljava/lang/Long;

    .line 11044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 74
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->personLimit:J

    .line 75
    iget-object v1, p0, Lcdg;->l:Ljava/lang/Long;

    .line 12044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 75
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->callBuyTotal:J

    .line 76
    iget-object v1, p0, Lcdg;->m:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 77
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcdg;->m:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->payAuthOrgIds:Ljava/util/Map;

    .line 79
    :cond_0
    iget-object v1, p0, Lcdg;->n:Ljava/lang/Long;

    .line 13044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 79
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->callBuyTeleUsed:J

    .line 80
    iget-object v1, p0, Lcdg;->o:Ljava/lang/Long;

    .line 14044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 80
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->callBuyTeleRemain:J

    .line 81
    iget-object v1, p0, Lcdg;->p:Ljava/lang/Long;

    .line 15044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 81
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->callBuyTeleTotal:J

    .line 82
    iget-object v1, p0, Lcdg;->q:Ljava/lang/Long;

    .line 16044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 82
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->callPubTotal:J

    .line 83
    iget-object v1, p0, Lcdg;->r:Ljava/lang/Long;

    .line 17044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 83
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->personLimitTotal:J

    .line 84
    iget-object v1, p0, Lcdg;->s:Ljava/lang/Long;

    .line 18044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 84
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->cloudCallRemain:J

    .line 85
    iget-object v1, p0, Lcdg;->t:Ljava/lang/Long;

    .line 19044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 85
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->cloudCallTotal:J

    .line 86
    iget-object v1, p0, Lcdg;->u:Ljava/lang/Integer;

    .line 20033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 86
    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->role:I

    .line 87
    iget-object v1, p0, Lcdg;->v:Ljava/lang/Long;

    .line 20044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 87
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->saveMoney:J

    .line 88
    iget-object v1, p0, Lcdg;->w:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->callUrl:Ljava/lang/String;

    .line 91
    :cond_1
    return-object v0
.end method

.method public static toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;)Lcdg;
    .locals 4
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;

    .prologue
    .line 96
    new-instance v0, Lcdg;

    invoke-direct {v0}, Lcdg;-><init>()V

    .line 97
    .local v0, "model":Lcdg;
    if-eqz p0, :cond_1

    .line 98
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->callPersonalUsed:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcdg;->a:Ljava/lang/Long;

    .line 99
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->callPersonalRemain:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcdg;->b:Ljava/lang/Long;

    .line 100
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->callPubUsed:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcdg;->c:Ljava/lang/Long;

    .line 101
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->callPubRemain:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcdg;->d:Ljava/lang/Long;

    .line 102
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->dingFreeRemain:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcdg;->e:Ljava/lang/Long;

    .line 103
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->dingPersonalRemain:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcdg;->f:Ljava/lang/Long;

    .line 104
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->dingBuyRemain:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcdg;->g:Ljava/lang/Long;

    .line 105
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->dingBuyTotal:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcdg;->h:Ljava/lang/Long;

    .line 106
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->callBuyUsed:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcdg;->i:Ljava/lang/Long;

    .line 107
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->callBuyRemain:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcdg;->j:Ljava/lang/Long;

    .line 108
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->personLimit:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcdg;->k:Ljava/lang/Long;

    .line 109
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->callBuyTotal:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcdg;->l:Ljava/lang/Long;

    .line 110
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->payAuthOrgIds:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 111
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->payAuthOrgIds:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcdg;->m:Ljava/util/Map;

    .line 113
    :cond_0
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->callBuyTeleUsed:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcdg;->n:Ljava/lang/Long;

    .line 114
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->callBuyTeleRemain:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcdg;->o:Ljava/lang/Long;

    .line 115
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->callBuyTeleTotal:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcdg;->p:Ljava/lang/Long;

    .line 116
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->callPubTotal:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcdg;->q:Ljava/lang/Long;

    .line 117
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->personLimitTotal:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcdg;->r:Ljava/lang/Long;

    .line 118
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->cloudCallRemain:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcdg;->s:Ljava/lang/Long;

    .line 119
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->cloudCallTotal:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcdg;->t:Ljava/lang/Long;

    .line 120
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->role:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcdg;->u:Ljava/lang/Integer;

    .line 121
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->saveMoney:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcdg;->v:Ljava/lang/Long;

    .line 122
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaDetailObject;->callUrl:Ljava/lang/String;

    iput-object v1, v0, Lcdg;->w:Ljava/lang/String;

    .line 124
    :cond_1
    return-object v0
.end method
