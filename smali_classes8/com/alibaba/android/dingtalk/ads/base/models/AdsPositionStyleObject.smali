.class public Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;
.super Ljava/lang/Object;
.source "AdsPositionStyleObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4d14981d096fb1b6L


# instance fields
.field public actText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public actUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public alertStyleObject:Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public cid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public dingAdsStyleObject:Lblf;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public frontPageStyleObject:Lcom/alibaba/android/dingtalk/ads/base/models/FrontPageStyleObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public guideChatStyleObject:Lcom/alibaba/android/dingtalk/ads/base/models/GuideChatStyleObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isPersistent:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mediaId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public number:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public redPoint:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public splashStyleObject:Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public text:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public tips:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public type:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lblm;J)Lblf;
    .locals 3
    .param p0, "model"    # Lblm;
    .param p1, "ver"    # J

    .prologue
    const/4 v2, 0x0

    .line 148
    if-nez p0, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 162
    :goto_0
    return-object v0

    .line 151
    :cond_0
    new-instance v0, Lblf;

    invoke-direct {v0}, Lblf;-><init>()V

    .line 152
    .local v0, "object":Lblf;
    iget-object v1, p0, Lblm;->a:Ljava/lang/String;

    iput-object v1, v0, Lblf;->a:Ljava/lang/String;

    .line 153
    iget-object v1, p0, Lblm;->b:Ljava/lang/String;

    iput-object v1, v0, Lblf;->b:Ljava/lang/String;

    .line 154
    iget-object v1, p0, Lblm;->c:Ljava/lang/String;

    iput-object v1, v0, Lblf;->c:Ljava/lang/String;

    .line 155
    iget-object v1, p0, Lblm;->d:Ljava/lang/String;

    iput-object v1, v0, Lblf;->d:Ljava/lang/String;

    .line 156
    iget-object v1, p0, Lblm;->e:Ljava/lang/String;

    iput-object v1, v0, Lblf;->e:Ljava/lang/String;

    .line 157
    iget-object v1, p0, Lblm;->f:Ljava/lang/String;

    iput-object v1, v0, Lblf;->f:Ljava/lang/String;

    .line 158
    iget-object v1, p0, Lblm;->g:Ljava/lang/String;

    iput-object v1, v0, Lblf;->g:Ljava/lang/String;

    .line 159
    iput-wide p1, v0, Lblf;->h:J

    .line 160
    iget-object v1, p0, Lblm;->h:Ljava/lang/Boolean;

    .line 10022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 160
    iput-boolean v1, v0, Lblf;->i:Z

    .line 161
    iget-object v1, p0, Lblm;->i:Ljava/lang/Boolean;

    .line 11022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 161
    iput-boolean v1, v0, Lblf;->j:Z

    goto :goto_0
.end method

.method public static fromIDLModel(Lblh;)Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;
    .locals 2
    .param p0, "model"    # Lblh;

    .prologue
    .line 105
    if-nez p0, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 116
    :goto_0
    return-object v0

    .line 108
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;-><init>()V

    .line 109
    .local v0, "object":Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;
    iget-object v1, p0, Lblh;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;->mediaId:Ljava/lang/String;

    .line 110
    iget-object v1, p0, Lblh;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;->title:Ljava/lang/String;

    .line 111
    iget-object v1, p0, Lblh;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;->text:Ljava/lang/String;

    .line 112
    iget-object v1, p0, Lblh;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;->actText1:Ljava/lang/String;

    .line 113
    iget-object v1, p0, Lblh;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;->actText2:Ljava/lang/String;

    .line 114
    iget-object v1, p0, Lblh;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;->actUrl1:Ljava/lang/String;

    .line 115
    iget-object v1, p0, Lblh;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;->actUrl2:Ljava/lang/String;

    goto :goto_0
.end method

.method public static fromIDLModel(Lblk;J)Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;
    .locals 3
    .param p0, "model"    # Lblk;
    .param p1, "ver"    # J

    .prologue
    const/4 v2, 0x0

    .line 83
    new-instance v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;-><init>()V

    .line 84
    .local v0, "object":Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;
    if-eqz p0, :cond_0

    .line 85
    iget-object v1, p0, Lblk;->a:Ljava/lang/Integer;

    .line 1033
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 85
    iput v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->type:I

    .line 86
    iget-object v1, p0, Lblk;->b:Ljava/lang/Boolean;

    .line 2022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 86
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->redPoint:Z

    .line 87
    iget-object v1, p0, Lblk;->c:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 87
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->tips:Z

    .line 88
    iget-object v1, p0, Lblk;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->text:Ljava/lang/String;

    .line 89
    iget-object v1, p0, Lblk;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->cid:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lblk;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->actText:Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lblk;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->actUrl:Ljava/lang/String;

    .line 92
    iget-object v1, p0, Lblk;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->mediaId:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lblk;->i:Ljava/lang/Boolean;

    .line 4022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 93
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->isPersistent:Z

    .line 94
    iget-object v1, p0, Lblk;->j:Lblh;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->fromIDLModel(Lblh;)Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->alertStyleObject:Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;

    .line 95
    iget-object v1, p0, Lblk;->k:Lbll;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->fromIDLModel(Lbll;)Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->splashStyleObject:Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;

    .line 96
    iget-object v1, p0, Lblk;->l:Lbln;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->fromIDLModel(Lbln;)Lcom/alibaba/android/dingtalk/ads/base/models/FrontPageStyleObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->frontPageStyleObject:Lcom/alibaba/android/dingtalk/ads/base/models/FrontPageStyleObject;

    .line 97
    iget-object v1, p0, Lblk;->m:Lblm;

    invoke-static {v1, p1, p2}, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->fromIDLModel(Lblm;J)Lblf;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->dingAdsStyleObject:Lblf;

    .line 98
    iget-object v1, p0, Lblk;->n:Lblo;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/ads/base/models/GuideChatStyleObject;->fromIDLModel(Lblo;)Lcom/alibaba/android/dingtalk/ads/base/models/GuideChatStyleObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->guideChatStyleObject:Lcom/alibaba/android/dingtalk/ads/base/models/GuideChatStyleObject;

    .line 101
    :cond_0
    return-object v0
.end method

.method public static fromIDLModel(Lbll;)Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;
    .locals 8
    .param p0, "model"    # Lbll;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 121
    if-nez p0, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    .line 124
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;-><init>()V

    .line 125
    .local v0, "object":Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;
    iget-object v1, p0, Lbll;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;->mediaId:Ljava/lang/String;

    .line 126
    iget-object v1, p0, Lbll;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;->actUrl:Ljava/lang/String;

    .line 127
    iget-object v1, p0, Lbll;->c:Ljava/lang/Long;

    .line 4044
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 127
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;->start:J

    .line 128
    iget-object v1, p0, Lbll;->d:Ljava/lang/Long;

    .line 5044
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 128
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;->end:J

    .line 129
    iget-object v1, p0, Lbll;->e:Ljava/lang/Integer;

    .line 6033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 129
    iput v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;->duration:I

    .line 130
    iget-object v1, p0, Lbll;->f:Ljava/lang/Integer;

    .line 7033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 130
    iput v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;->type:I

    .line 131
    iget-object v1, p0, Lbll;->g:Ljava/lang/Integer;

    .line 8033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 131
    iput v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;->priority:I

    .line 132
    iget-object v1, p0, Lbll;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;->splashId:Ljava/lang/String;

    goto :goto_0
.end method

.method public static fromIDLModel(Lbln;)Lcom/alibaba/android/dingtalk/ads/base/models/FrontPageStyleObject;
    .locals 3
    .param p0, "model"    # Lbln;

    .prologue
    .line 138
    if-nez p0, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 144
    :goto_0
    return-object v0

    .line 141
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/ads/base/models/FrontPageStyleObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/ads/base/models/FrontPageStyleObject;-><init>()V

    .line 142
    .local v0, "object":Lcom/alibaba/android/dingtalk/ads/base/models/FrontPageStyleObject;
    iget-object v1, p0, Lbln;->a:Ljava/lang/Integer;

    .line 9033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 142
    iput v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/FrontPageStyleObject;->type:I

    .line 143
    iget-object v1, p0, Lbln;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/FrontPageStyleObject;->actUrl:Ljava/lang/String;

    goto :goto_0
.end method
