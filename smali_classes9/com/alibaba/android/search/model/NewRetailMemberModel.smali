.class public Lcom/alibaba/android/search/model/NewRetailMemberModel;
.super Lcom/alibaba/android/search/model/FriendModel;
.source "NewRetailMemberModel.java"


# static fields
.field private static final MEMBER_PROFILE_URL:Ljava/lang/String; = "http://ulifem.taobao.com/memberProfile?dd_func_wk=true&eaUserId=%s&buyerId=%s"


# instance fields
.field private mFollowerOuterId:Ljava/lang/String;

.field private mOuterId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alibaba/android/search/model/FriendModel;-><init>()V

    .line 36
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->NewRetailMember:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/NewRetailMemberModel;->setModelType(Lcom/alibaba/android/search/model/BaseModel$ModelType;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .param p2, "outerId"    # Ljava/lang/String;
    .param p3, "followerOuterId"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/model/FriendModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 42
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->NewRetailMember:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/NewRetailMemberModel;->setModelType(Lcom/alibaba/android/search/model/BaseModel$ModelType;)V

    .line 43
    iput-object p2, p0, Lcom/alibaba/android/search/model/NewRetailMemberModel;->mOuterId:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/alibaba/android/search/model/NewRetailMemberModel;->mFollowerOuterId:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Activity;Landroid/view/View;)V
    .locals 6
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/android/search/model/NewRetailMemberModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-nez v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 54
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lemt$e;->iv_profile:I

    if-ne v0, v1, :cond_1

    .line 55
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "http://ulifem.taobao.com/memberProfile?dd_func_wk=true&eaUserId=%s&buyerId=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/android/search/model/NewRetailMemberModel;->mFollowerOuterId:Ljava/lang/String;

    .line 56
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alibaba/android/search/model/NewRetailMemberModel;->mOuterId:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 55
    invoke-virtual {v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/android/search/model/NewRetailMemberModel;->openConversation(Landroid/app/Activity;)V

    goto :goto_0
.end method
