.class public final Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;
.super Ljava/lang/Object;
.source "NewRequestObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:I

.field public c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:J

.field public i:Ljava/lang/String;

.field public j:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

.field public k:Z

.field public l:Z

.field public m:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;)Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;
    .locals 1
    .param p1, "status"    # Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    .prologue
    .line 72
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->getValue()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->b:I

    .line 73
    return-object p0
.end method

.method public final a()Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 132
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$1;)V

    return-object v0
.end method
