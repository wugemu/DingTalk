.class public Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;
.super Ljava/lang/Object;
.source "OrganizationSettingsObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3e5eb7bac385b0afL


# instance fields
.field public aclEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public allStaffSecurityPasscode:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public authFromB2b:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public closeExtContact:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public contactWaterMark:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public desensitizeMobile:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public devOnly:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public eduIndustry:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public enterpriseEncryption:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public experience:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public fromH5:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public groupCreated:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public groupRealName:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public groupWaterMark:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public hideLabelBanner:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public hideMedal:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isCcp:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isCcpAuth:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isOpenPublicAccount:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isTemp:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public newRetail:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public openInvite:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public recruitmentOrg:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public showMobile:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public thirdPartyEcryptPriority:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public thirdPartyEncryptBurn:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public thirdPartyEncryptFileAudioImage:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lcfj;)Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;
    .locals 3
    .param p0, "model"    # Lcfj;

    .prologue
    const/4 v2, 0x0

    .line 119
    if-nez p0, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 150
    :goto_0
    return-object v0

    .line 122
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;-><init>()V

    .line 123
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;
    iget-object v1, p0, Lcfj;->c:Ljava/lang/Boolean;

    .line 1022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 123
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->aclEnabled:Z

    .line 124
    iget-object v1, p0, Lcfj;->f:Ljava/lang/Boolean;

    .line 2022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 124
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->contactWaterMark:Z

    .line 125
    iget-object v1, p0, Lcfj;->g:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 125
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->groupWaterMark:Z

    .line 126
    iget-object v1, p0, Lcfj;->e:Ljava/lang/Boolean;

    .line 4022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 126
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->isOpenPublicAccount:Z

    .line 127
    iget-object v1, p0, Lcfj;->d:Ljava/lang/Boolean;

    .line 5022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 127
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->isTemp:Z

    .line 128
    iget-object v1, p0, Lcfj;->b:Ljava/lang/Boolean;

    .line 6022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 128
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->openInvite:Z

    .line 129
    iget-object v1, p0, Lcfj;->a:Ljava/lang/Boolean;

    .line 7022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 129
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->showMobile:Z

    .line 130
    iget-object v1, p0, Lcfj;->h:Ljava/lang/Boolean;

    .line 8022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 130
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->experience:Z

    .line 131
    iget-object v1, p0, Lcfj;->i:Ljava/lang/Boolean;

    .line 9022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 131
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->fromH5:Z

    .line 132
    iget-object v1, p0, Lcfj;->j:Ljava/lang/Boolean;

    .line 10022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 132
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->authFromB2b:Z

    .line 133
    iget-object v1, p0, Lcfj;->k:Ljava/lang/Boolean;

    .line 11022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 133
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->groupRealName:Z

    .line 134
    iget-object v1, p0, Lcfj;->l:Ljava/lang/Boolean;

    .line 12022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 134
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->thirdPartyEcryptPriority:Z

    .line 135
    iget-object v1, p0, Lcfj;->m:Ljava/lang/Boolean;

    .line 13022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 135
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->allStaffSecurityPasscode:Z

    .line 136
    iget-object v1, p0, Lcfj;->n:Ljava/lang/Boolean;

    .line 14022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 136
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->desensitizeMobile:Z

    .line 137
    iget-object v1, p0, Lcfj;->o:Ljava/lang/Boolean;

    .line 15022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 137
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->closeExtContact:Z

    .line 138
    iget-object v1, p0, Lcfj;->p:Ljava/lang/Boolean;

    .line 16022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 138
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->thirdPartyEncryptBurn:Z

    .line 139
    iget-object v1, p0, Lcfj;->q:Ljava/lang/Boolean;

    .line 17022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 139
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->thirdPartyEncryptFileAudioImage:Z

    .line 140
    iget-object v1, p0, Lcfj;->r:Ljava/lang/Boolean;

    .line 18022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 140
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->devOnly:Z

    .line 141
    iget-object v1, p0, Lcfj;->s:Ljava/lang/Boolean;

    .line 19022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 141
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->groupCreated:Z

    .line 142
    iget-object v1, p0, Lcfj;->t:Ljava/lang/Boolean;

    .line 20022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 142
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->enterpriseEncryption:Z

    .line 143
    iget-object v1, p0, Lcfj;->u:Ljava/lang/Boolean;

    .line 21022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 143
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->hideLabelBanner:Z

    .line 144
    iget-object v1, p0, Lcfj;->v:Ljava/lang/Boolean;

    .line 22022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 144
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->newRetail:Z

    .line 145
    iget-object v1, p0, Lcfj;->w:Ljava/lang/Boolean;

    .line 23022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 145
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->hideMedal:Z

    .line 146
    iget-object v1, p0, Lcfj;->x:Ljava/lang/Boolean;

    .line 24022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 146
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->recruitmentOrg:Z

    .line 147
    iget-object v1, p0, Lcfj;->y:Ljava/lang/Boolean;

    .line 25022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 147
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->isCcp:Z

    .line 148
    iget-object v1, p0, Lcfj;->z:Ljava/lang/Boolean;

    .line 26022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 148
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->isCcpAuth:Z

    .line 149
    iget-object v1, p0, Lcfj;->A:Ljava/lang/Boolean;

    .line 27022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 149
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->eduIndustry:Z

    goto/16 :goto_0
.end method

.method public static toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;)Lcfj;
    .locals 3
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    .prologue
    const/4 v2, 0x0

    .line 154
    new-instance v0, Lcfj;

    invoke-direct {v0}, Lcfj;-><init>()V

    .line 156
    .local v0, "model":Lcfj;
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->aclEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 28022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 156
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcfj;->c:Ljava/lang/Boolean;

    .line 157
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->contactWaterMark:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 29022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 157
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcfj;->f:Ljava/lang/Boolean;

    .line 158
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->groupWaterMark:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 30022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 158
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcfj;->g:Ljava/lang/Boolean;

    .line 159
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->isOpenPublicAccount:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 31022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 159
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcfj;->e:Ljava/lang/Boolean;

    .line 160
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->isTemp:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 32022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 160
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcfj;->d:Ljava/lang/Boolean;

    .line 161
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->openInvite:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 33022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 161
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcfj;->b:Ljava/lang/Boolean;

    .line 162
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->showMobile:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 34022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 162
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcfj;->a:Ljava/lang/Boolean;

    .line 163
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->experience:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 35022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 163
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcfj;->h:Ljava/lang/Boolean;

    .line 164
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->fromH5:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 36022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 164
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcfj;->i:Ljava/lang/Boolean;

    .line 165
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->authFromB2b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 37022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 165
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcfj;->j:Ljava/lang/Boolean;

    .line 166
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->groupRealName:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 38022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 166
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcfj;->k:Ljava/lang/Boolean;

    .line 167
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->thirdPartyEcryptPriority:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 39022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 167
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcfj;->l:Ljava/lang/Boolean;

    .line 168
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->allStaffSecurityPasscode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 40022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 168
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcfj;->m:Ljava/lang/Boolean;

    .line 169
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->desensitizeMobile:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcfj;->n:Ljava/lang/Boolean;

    .line 170
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->closeExtContact:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcfj;->o:Ljava/lang/Boolean;

    .line 171
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->thirdPartyEncryptBurn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcfj;->p:Ljava/lang/Boolean;

    .line 172
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->thirdPartyEncryptFileAudioImage:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcfj;->q:Ljava/lang/Boolean;

    .line 173
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->devOnly:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcfj;->r:Ljava/lang/Boolean;

    .line 174
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->groupCreated:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcfj;->s:Ljava/lang/Boolean;

    .line 175
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->enterpriseEncryption:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcfj;->t:Ljava/lang/Boolean;

    .line 176
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->hideLabelBanner:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcfj;->u:Ljava/lang/Boolean;

    .line 177
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->newRetail:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcfj;->v:Ljava/lang/Boolean;

    .line 178
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->hideMedal:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcfj;->w:Ljava/lang/Boolean;

    .line 179
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->recruitmentOrg:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcfj;->x:Ljava/lang/Boolean;

    .line 180
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->isCcp:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcfj;->y:Ljava/lang/Boolean;

    .line 181
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->isCcpAuth:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcfj;->z:Ljava/lang/Boolean;

    .line 182
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->eduIndustry:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcfj;->A:Ljava/lang/Boolean;

    .line 183
    return-object v0
.end method
