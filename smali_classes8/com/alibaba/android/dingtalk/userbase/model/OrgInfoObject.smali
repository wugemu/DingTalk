.class public Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;
.super Ljava/lang/Object;
.source "OrgInfoObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3e5eb7bac385b0afL


# instance fields
.field public alertMsg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public authLevel:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public brief:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public corpId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public ext:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public from:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public industryCode:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public industryDesc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public inviteCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isTemp:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public leavePermission:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public logoMediaId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public managePermission:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgOAObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgOAObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public region:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public rightsLevel:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public settingsObject:Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public showCrm:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public spaceId:J
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
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lcfi;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;
    .locals 8
    .param p0, "model"    # Lcfi;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 67
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;-><init>()V

    .line 68
    .local v1, "orgInfoObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;
    if-eqz p0, :cond_2

    .line 69
    iget-object v2, p0, Lcfi;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 69
    iput-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgId:J

    .line 70
    iget-object v2, p0, Lcfi;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgName:Ljava/lang/String;

    .line 71
    iget-object v2, p0, Lcfi;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->logoMediaId:Ljava/lang/String;

    .line 72
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->logoMediaId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->logoMediaId:Ljava/lang/String;

    .line 73
    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    :try_start_0
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->logoMediaId:Ljava/lang/String;

    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->logoMediaId:Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_0
    :goto_0
    iget-object v2, p0, Lcfi;->d:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->brief:Ljava/lang/String;

    .line 81
    iget-object v2, p0, Lcfi;->e:Lcfk;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/userbase/model/OrgOAObject;->fromIDLModel(Lcfk;)Lcom/alibaba/android/dingtalk/userbase/model/OrgOAObject;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgOAObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgOAObject;

    .line 82
    iget-object v2, p0, Lcfi;->f:Ljava/lang/Integer;

    .line 2033
    invoke-static {v2, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 82
    iput v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->authLevel:I

    .line 83
    iget-object v2, p0, Lcfi;->g:Ljava/lang/Long;

    .line 2044
    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 83
    iput-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->uid:J

    .line 84
    iget-object v2, p0, Lcfi;->i:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v2, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 84
    iput-boolean v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->managePermission:Z

    .line 85
    iget-object v2, p0, Lcfi;->j:Ljava/lang/Boolean;

    .line 4022
    invoke-static {v2, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 85
    iput-boolean v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->leavePermission:Z

    .line 86
    iget-object v2, p0, Lcfi;->k:Ljava/lang/Long;

    .line 4044
    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 86
    iput-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->spaceId:J

    .line 87
    iget-object v2, p0, Lcfi;->l:Lcfj;

    if-eqz v2, :cond_1

    .line 88
    iget-object v2, p0, Lcfi;->l:Lcfj;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->fromIDLModel(Lcfj;)Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->settingsObject:Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    .line 89
    iget-object v2, p0, Lcfi;->l:Lcfj;

    iget-object v2, v2, Lcfj;->d:Ljava/lang/Boolean;

    .line 5022
    invoke-static {v2, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 89
    iput-boolean v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->isTemp:Z

    .line 91
    :cond_1
    iget-object v2, p0, Lcfi;->o:Ljava/lang/Boolean;

    .line 6022
    invoke-static {v2, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 91
    iput-boolean v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->showCrm:Z

    .line 92
    iget-object v2, p0, Lcfi;->p:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->inviteCode:Ljava/lang/String;

    .line 93
    iget-object v2, p0, Lcfi;->m:Ljava/lang/Integer;

    .line 6033
    invoke-static {v2, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 93
    iput v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->industryCode:I

    .line 94
    iget-object v2, p0, Lcfi;->n:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->industryDesc:Ljava/lang/String;

    .line 95
    iget-object v2, p0, Lcfi;->q:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->corpId:Ljava/lang/String;

    .line 96
    iget-object v2, p0, Lcfi;->r:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->region:Ljava/lang/String;

    .line 97
    iget-object v2, p0, Lcfi;->s:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->ext:Ljava/lang/String;

    .line 98
    iget-object v2, p0, Lcfi;->t:Ljava/lang/Integer;

    .line 7033
    invoke-static {v2, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 98
    iput v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->from:I

    .line 99
    iget-object v2, p0, Lcfi;->u:Ljava/lang/Integer;

    .line 8033
    invoke-static {v2, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 99
    iput v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->rightsLevel:I

    .line 100
    iget-object v2, p0, Lcfi;->w:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->alertMsg:Ljava/lang/String;

    .line 102
    :cond_2
    return-object v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private getLocale(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 143
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    .end local p2    # "defValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 150
    .restart local p2    # "defValue":Ljava/lang/String;
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->ext:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 151
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->ext:Ljava/lang/String;

    invoke-static {v2}, Lcoo;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 153
    .local v0, "json":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "locale":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    move-object p2, v1

    .line 159
    goto :goto_0

    .line 164
    .end local v0    # "json":Lcom/alibaba/fastjson/JSONObject;
    .end local v1    # "locale":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;)Lcfi;
    .locals 4
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    .prologue
    .line 107
    new-instance v0, Lcfi;

    invoke-direct {v0}, Lcfi;-><init>()V

    .line 108
    .local v0, "model":Lcfi;
    if-eqz p0, :cond_0

    .line 109
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcfi;->a:Ljava/lang/Long;

    .line 110
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgName:Ljava/lang/String;

    iput-object v1, v0, Lcfi;->b:Ljava/lang/String;

    .line 111
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->logoMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcfi;->c:Ljava/lang/String;

    .line 112
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->brief:Ljava/lang/String;

    iput-object v1, v0, Lcfi;->d:Ljava/lang/String;

    .line 113
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgOAObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgOAObject;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgOAObject;->toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/OrgOAObject;)Lcfk;

    move-result-object v1

    iput-object v1, v0, Lcfi;->e:Lcfk;

    .line 114
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->authLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcfi;->f:Ljava/lang/Integer;

    .line 115
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcfi;->g:Ljava/lang/Long;

    .line 116
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->managePermission:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcfi;->i:Ljava/lang/Boolean;

    .line 117
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->leavePermission:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcfi;->j:Ljava/lang/Boolean;

    .line 118
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->spaceId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcfi;->k:Ljava/lang/Long;

    .line 119
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->showCrm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcfi;->o:Ljava/lang/Boolean;

    .line 120
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->inviteCode:Ljava/lang/String;

    iput-object v1, v0, Lcfi;->p:Ljava/lang/String;

    .line 121
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->industryCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcfi;->m:Ljava/lang/Integer;

    .line 122
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->industryDesc:Ljava/lang/String;

    iput-object v1, v0, Lcfi;->n:Ljava/lang/String;

    .line 123
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->corpId:Ljava/lang/String;

    iput-object v1, v0, Lcfi;->q:Ljava/lang/String;

    .line 124
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->region:Ljava/lang/String;

    iput-object v1, v0, Lcfi;->r:Ljava/lang/String;

    .line 125
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->ext:Ljava/lang/String;

    iput-object v1, v0, Lcfi;->s:Ljava/lang/String;

    .line 126
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->from:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcfi;->t:Ljava/lang/Integer;

    .line 127
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->rightsLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcfi;->u:Ljava/lang/Integer;

    .line 128
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->alertMsg:Ljava/lang/String;

    iput-object v1, v0, Lcfi;->w:Ljava/lang/String;

    .line 130
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getLocale()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 134
    const-string/jumbo v0, "locale"

    const-string/jumbo v1, "zh_CN"

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->getLocale(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNation()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 138
    const-string/jumbo v0, "nation"

    const-string/jumbo v1, "CN"

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->getLocale(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
