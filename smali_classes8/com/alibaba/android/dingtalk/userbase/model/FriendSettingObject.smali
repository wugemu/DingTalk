.class public Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;
.super Ljava/lang/Object;
.source "FriendSettingObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5191983f540ba538L


# instance fields
.field public isHide:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isShield:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isShowMail:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isShowMobile:Z
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

.method public static fromIDLModel(Lcdu;)Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;
    .locals 3
    .param p0, "model"    # Lcdu;

    .prologue
    const/4 v2, 0x0

    .line 32
    if-nez p0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 40
    :goto_0
    return-object v0

    .line 35
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;-><init>()V

    .line 36
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;
    iget-object v1, p0, Lcdu;->a:Ljava/lang/Boolean;

    .line 1022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 36
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;->isShield:Z

    .line 37
    iget-object v1, p0, Lcdu;->b:Ljava/lang/Boolean;

    .line 2022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 37
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;->isHide:Z

    .line 38
    iget-object v1, p0, Lcdu;->c:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 38
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;->isShowMobile:Z

    .line 39
    iget-object v1, p0, Lcdu;->d:Ljava/lang/Boolean;

    .line 4022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 39
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;->isShowMail:Z

    goto :goto_0
.end method


# virtual methods
.method public toIdl()Lcdu;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 44
    new-instance v0, Lcdu;

    invoke-direct {v0}, Lcdu;-><init>()V

    .line 45
    .local v0, "model":Lcdu;
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;->isShield:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcdu;->a:Ljava/lang/Boolean;

    .line 46
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;->isHide:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcdu;->b:Ljava/lang/Boolean;

    .line 47
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;->isShowMobile:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcdu;->c:Ljava/lang/Boolean;

    .line 48
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;->isShowMail:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcdu;->d:Ljava/lang/Boolean;

    .line 49
    return-object v0
.end method
