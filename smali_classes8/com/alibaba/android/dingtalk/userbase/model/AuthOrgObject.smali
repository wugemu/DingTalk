.class public Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;
.super Ljava/lang/Object;
.source "AuthOrgObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x597728f221959bbdL


# instance fields
.field public authFromB2b:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public authLevel:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public corpId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public logoMediaId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public originalOrgId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public thirdPartyEncrypt:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public token:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public vipLevel:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lccz;)Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;
    .locals 6
    .param p0, "model"    # Lccz;

    .prologue
    const/4 v3, 0x0

    .line 61
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;-><init>()V

    .line 62
    .local v1, "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;
    if-eqz p0, :cond_1

    .line 63
    iget-object v2, p0, Lccz;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->orgId:Ljava/lang/String;

    .line 64
    iget-object v2, p0, Lccz;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->orgName:Ljava/lang/String;

    .line 65
    iget-object v2, p0, Lccz;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->logoMediaId:Ljava/lang/String;

    .line 66
    iget-object v2, p0, Lccz;->d:Ljava/lang/Integer;

    .line 1033
    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 66
    iput v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->vipLevel:I

    .line 67
    iget-object v2, p0, Lccz;->e:Ljava/lang/Boolean;

    .line 2022
    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 67
    iput-boolean v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->authFromB2b:Z

    .line 68
    iget-object v2, p0, Lccz;->f:Ljava/lang/Integer;

    .line 2033
    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 68
    iput v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->authLevel:I

    .line 69
    iget-object v2, p0, Lccz;->g:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->corpId:Ljava/lang/String;

    .line 70
    iget-object v2, p0, Lccz;->h:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 70
    iput-boolean v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->thirdPartyEncrypt:Z

    .line 71
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->logoMediaId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->logoMediaId:Ljava/lang/String;

    .line 72
    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    :try_start_0
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->logoMediaId:Ljava/lang/String;

    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->logoMediaId:Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_0
    :goto_0
    iget-object v2, p0, Lccz;->i:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->token:Ljava/lang/String;

    .line 80
    iget-object v2, p0, Lccz;->j:Ljava/lang/Long;

    .line 3044
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 80
    iput-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->originalOrgId:J

    .line 82
    :cond_1
    return-object v1

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static fromIdlList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lccz;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "models":Ljava/util/List;, "Ljava/util/List<Lccz;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v1, "authOrgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccz;

    .line 106
    .local v0, "authOrg":Lccz;
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->fromIdl(Lccz;)Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    .end local v0    # "authOrg":Lccz;
    .end local v1    # "authOrgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;>;"
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method public static toIdl(Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;)Lccz;
    .locals 4
    .param p0, "model"    # Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    .prologue
    .line 86
    new-instance v0, Lccz;

    invoke-direct {v0}, Lccz;-><init>()V

    .line 87
    .local v0, "orgModel":Lccz;
    if-eqz p0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->orgId:Ljava/lang/String;

    iput-object v1, v0, Lccz;->a:Ljava/lang/String;

    .line 89
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->orgName:Ljava/lang/String;

    iput-object v1, v0, Lccz;->b:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->logoMediaId:Ljava/lang/String;

    iput-object v1, v0, Lccz;->c:Ljava/lang/String;

    .line 91
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->vipLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lccz;->d:Ljava/lang/Integer;

    .line 92
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->authFromB2b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lccz;->e:Ljava/lang/Boolean;

    .line 93
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->authLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lccz;->f:Ljava/lang/Integer;

    .line 94
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->corpId:Ljava/lang/String;

    iput-object v1, v0, Lccz;->g:Ljava/lang/String;

    .line 95
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->thirdPartyEncrypt:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lccz;->h:Ljava/lang/Boolean;

    .line 96
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->token:Ljava/lang/String;

    iput-object v1, v0, Lccz;->i:Ljava/lang/String;

    .line 97
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->originalOrgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lccz;->j:Ljava/lang/Long;

    .line 99
    :cond_0
    return-object v0
.end method

.method public static toIdlList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lccz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v1, "authOrgList":Ljava/util/List;, "Ljava/util/List<Lccz;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    .line 117
    .local v0, "authOrg":Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->toIdl(Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;)Lccz;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    .end local v0    # "authOrg":Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;
    .end local v1    # "authOrgList":Ljava/util/List;, "Ljava/util/List<Lccz;>;"
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method
