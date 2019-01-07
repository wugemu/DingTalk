.class public Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;
.super Ljava/lang/Object;
.source "CSpaceLinkShareAclResultObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final LINK_SHARE_ACL_ALL_BROWSE:Ljava/lang/String; = "3"

.field public static final LINK_SHARE_ACL_ALL_BROWSE_EDIT:Ljava/lang/String; = "4"

.field public static final LINK_SHARE_ACL_CLOSE:Ljava/lang/String; = "1"

.field public static final LINK_SHARE_ACL_LIMIT_BROWSE_EDIT:Ljava/lang/String; = "2"


# instance fields
.field public acl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public dentryId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public inherit:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public resultCode:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public resultMsg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public shortLink:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public spaceId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lgjw;)Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;
    .locals 4
    .param p0, "model"    # Lgjw;

    .prologue
    .line 66
    if-nez p0, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    .line 70
    :cond_0
    new-instance v0, Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;-><init>()V

    .line 71
    .local v0, "object":Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;
    iget-object v1, p0, Lgjw;->a:Ljava/lang/Long;

    const-wide/16 v2, -0x1

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;->resultCode:J

    .line 72
    iget-object v1, p0, Lgjw;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;->resultMsg:Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lgjw;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;->shortLink:Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lgjw;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;->acl:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lgjw;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;->dentryId:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lgjw;->f:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 76
    iput-wide v2, v0, Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;->spaceId:J

    .line 77
    iget-object v1, p0, Lgjw;->g:Ljava/lang/Boolean;

    .line 2022
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 77
    iput-boolean v1, v0, Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;->inherit:Z

    goto :goto_0
.end method

.method public static toIDLModel(Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;)Lgjw;
    .locals 4
    .param p0, "object"    # Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;

    .prologue
    .line 84
    if-nez p0, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 97
    :goto_0
    return-object v0

    .line 88
    :cond_0
    new-instance v0, Lgjw;

    invoke-direct {v0}, Lgjw;-><init>()V

    .line 89
    .local v0, "model":Lgjw;
    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;->resultCode:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lgjw;->a:Ljava/lang/Long;

    .line 90
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;->resultMsg:Ljava/lang/String;

    iput-object v1, v0, Lgjw;->b:Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;->shortLink:Ljava/lang/String;

    iput-object v1, v0, Lgjw;->c:Ljava/lang/String;

    .line 92
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;->acl:Ljava/lang/String;

    iput-object v1, v0, Lgjw;->d:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;->dentryId:Ljava/lang/String;

    iput-object v1, v0, Lgjw;->e:Ljava/lang/String;

    .line 94
    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;->spaceId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lgjw;->f:Ljava/lang/Long;

    .line 95
    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;->inherit:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lgjw;->g:Ljava/lang/Boolean;

    goto :goto_0
.end method
