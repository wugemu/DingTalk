.class public Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;
.super Ljava/lang/Object;
.source "UserPermissionObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6e63304d34804276L


# instance fields
.field public canBeSendConference:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public canBeSendDing:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public canBeSentFriendRequest:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public canBeSentMsg:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public couldCreateOrg:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public couldShowMobile:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;->canBeSentMsg:Z

    .line 17
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;->canBeSentFriendRequest:Z

    .line 18
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;->canBeSendDing:Z

    .line 19
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;->canBeSendConference:Z

    .line 20
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;->couldShowMobile:Z

    .line 21
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;->couldCreateOrg:Z

    return-void
.end method

.method public static fromIdl(Lcgh;)Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;
    .locals 4
    .param p0, "model"    # Lcgh;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 25
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;-><init>()V

    .line 26
    .local v0, "userPermissionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;
    if-eqz p0, :cond_0

    .line 27
    iget-object v1, p0, Lcgh;->b:Ljava/lang/Boolean;

    .line 1022
    invoke-static {v1, v3}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 27
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;->canBeSentFriendRequest:Z

    .line 28
    iget-object v1, p0, Lcgh;->a:Ljava/lang/Boolean;

    .line 2022
    invoke-static {v1, v3}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 28
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;->canBeSentMsg:Z

    .line 29
    iget-object v1, p0, Lcgh;->c:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;->canBeSendDing:Z

    .line 30
    iget-object v1, p0, Lcgh;->d:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;->canBeSendConference:Z

    .line 31
    iget-object v1, p0, Lcgh;->e:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;->couldShowMobile:Z

    .line 32
    iget-object v1, p0, Lcgh;->f:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;->couldCreateOrg:Z

    .line 34
    :cond_0
    return-object v0
.end method
