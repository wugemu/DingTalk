.class public Lcom/ali/user/enterprise/base/data/SessionModel;
.super Lcom/ali/user/enterprise/base/data/AliUserResponseData;
.source "SessionModel.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public bizType:Ljava/lang/String;

.field public corpId:Ljava/lang/String;

.field public showLoginId:Ljava/lang/String;

.field public site:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/data/AliUserResponseData;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 17
    move-object v0, p1

    check-cast v0, Lcom/ali/user/enterprise/base/data/SessionModel;

    .local v0, "a1":Lcom/ali/user/enterprise/base/data/SessionModel;
    move-object v1, p2

    .line 18
    check-cast v1, Lcom/ali/user/enterprise/base/data/SessionModel;

    .line 21
    .local v1, "a2":Lcom/ali/user/enterprise/base/data/SessionModel;
    iget-wide v2, v0, Lcom/ali/user/enterprise/base/data/SessionModel;->loginTime:J

    iget-wide v4, v1, Lcom/ali/user/enterprise/base/data/SessionModel;->loginTime:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 22
    const/4 v2, -0x1

    .line 26
    :goto_0
    return v2

    .line 23
    :cond_0
    iget-wide v2, v0, Lcom/ali/user/enterprise/base/data/SessionModel;->loginTime:J

    iget-wide v4, v1, Lcom/ali/user/enterprise/base/data/SessionModel;->loginTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 24
    const/4 v2, 0x0

    goto :goto_0

    .line 26
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
