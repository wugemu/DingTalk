.class public Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestAcceptObject;
.super Ljava/lang/Object;
.source "FriendRequestAcceptObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3b27bed08a723fafL


# instance fields
.field public alias:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isHide:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isShowMobile:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public remark:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public tags:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lcdr;)Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestAcceptObject;
    .locals 3
    .param p0, "model"    # Lcdr;

    .prologue
    const/4 v2, 0x0

    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    .line 39
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestAcceptObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestAcceptObject;-><init>()V

    .line 40
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestAcceptObject;
    iget-object v1, p0, Lcdr;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestAcceptObject;->alias:Ljava/lang/String;

    .line 41
    iget-object v1, p0, Lcdr;->b:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestAcceptObject;->tags:Ljava/util/List;

    .line 42
    iget-object v1, p0, Lcdr;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestAcceptObject;->remark:Ljava/lang/String;

    .line 43
    iget-object v1, p0, Lcdr;->d:Ljava/lang/Boolean;

    .line 1022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 43
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestAcceptObject;->isShowMobile:Z

    .line 44
    iget-object v1, p0, Lcdr;->e:Ljava/lang/Boolean;

    .line 2022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 44
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestAcceptObject;->isHide:Z

    goto :goto_0
.end method


# virtual methods
.method public toIdl()Lcdr;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 49
    new-instance v0, Lcdr;

    invoke-direct {v0}, Lcdr;-><init>()V

    .line 50
    .local v0, "model":Lcdr;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestAcceptObject;->alias:Ljava/lang/String;

    iput-object v1, v0, Lcdr;->a:Ljava/lang/String;

    .line 51
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestAcceptObject;->tags:Ljava/util/List;

    iput-object v1, v0, Lcdr;->b:Ljava/util/List;

    .line 52
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestAcceptObject;->remark:Ljava/lang/String;

    iput-object v1, v0, Lcdr;->c:Ljava/lang/String;

    .line 53
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestAcceptObject;->isShowMobile:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcdr;->d:Ljava/lang/Boolean;

    .line 54
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestAcceptObject;->isHide:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcdr;->e:Ljava/lang/Boolean;

    .line 55
    return-object v0
.end method
