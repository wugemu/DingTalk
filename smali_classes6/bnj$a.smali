.class public final Lbnj$a;
.super Ljava/lang/Object;
.source "CircleContactSimpleInfoPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcgc;)V
    .locals 8
    .param p1, "employeeInfoModel"    # Lcgc;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iget-object v0, p1, Lcgc;->b:Lcet;

    .line 102
    .local v0, "model":Lcet;
    if-nez v0, :cond_0

    .line 103
    const-string/jumbo v2, ""

    iput-object v2, p0, Lbnj$a;->a:Ljava/lang/String;

    .line 104
    const-string/jumbo v2, ""

    iput-object v2, p0, Lbnj$a;->b:Ljava/lang/String;

    .line 105
    const-string/jumbo v2, ""

    iput-object v2, p0, Lbnj$a;->c:Ljava/lang/String;

    .line 118
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-static {}, Lbnw;->a()Lbnw;

    move-result-object v2

    iget-object v3, p1, Lcgc;->b:Lcet;

    iget-object v3, v3, Lcet;->a:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1186
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    .line 1187
    const-string/jumbo v2, "uid <= 0"

    .line 2076
    const/4 v3, 0x0

    invoke-static {v3, v2}, Lbqh;->a(ZLjava/lang/String;)V

    .line 1188
    const/4 v1, 0x0

    .line 108
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :goto_1
    if-nez v1, :cond_2

    .line 109
    const-string/jumbo v2, ""

    iput-object v2, p0, Lbnj$a;->a:Ljava/lang/String;

    .line 110
    const-string/jumbo v2, ""

    iput-object v2, p0, Lbnj$a;->b:Ljava/lang/String;

    .line 111
    const-string/jumbo v2, ""

    iput-object v2, p0, Lbnj$a;->c:Ljava/lang/String;

    goto :goto_0

    .line 1191
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_1
    iget-object v2, v2, Lbnw;->b:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-object v1, v2

    goto :goto_1

    .line 113
    .restart local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_2
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v2, p0, Lbnj$a;->a:Ljava/lang/String;

    .line 114
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v2, p0, Lbnj$a;->b:Ljava/lang/String;

    .line 115
    iget-object v2, v0, Lcet;->i:Ljava/lang/String;

    iput-object v2, p0, Lbnj$a;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method constructor <init>(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 2
    .param p1, "profileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v1, p0, Lbnj$a;->a:Ljava/lang/String;

    .line 91
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v1, p0, Lbnj$a;->b:Ljava/lang/String;

    .line 92
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    .line 93
    .local v0, "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;
    if-eqz v0, :cond_0

    .line 94
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->orgName:Ljava/lang/String;

    iput-object v1, p0, Lbnj$a;->c:Ljava/lang/String;

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    const-string/jumbo v1, ""

    iput-object v1, p0, Lbnj$a;->c:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 122
    if-nez p1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v1

    .line 123
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    goto :goto_0

    .line 124
    :cond_2
    instance-of v3, p1, Lbnj$a;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 126
    check-cast v0, Lbnj$a;

    .line 127
    .local v0, "info":Lbnj$a;
    iget-object v3, p0, Lbnj$a;->a:Ljava/lang/String;

    iget-object v4, v0, Lbnj$a;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lbnj$a;->b:Ljava/lang/String;

    iget-object v4, v0, Lbnj$a;->b:Ljava/lang/String;

    .line 128
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lbnj$a;->c:Ljava/lang/String;

    iget-object v4, v0, Lbnj$a;->c:Ljava/lang/String;

    .line 129
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 135
    iget-object v1, p0, Lbnj$a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lbnj$a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v0, v1, 0x275

    .line 136
    .local v0, "result":I
    mul-int/lit8 v3, v0, 0x25

    iget-object v1, p0, Lbnj$a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lbnj$a;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v3, v1

    .line 137
    mul-int/lit8 v1, v0, 0x25

    iget-object v3, p0, Lbnj$a;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v2, p0, Lbnj$a;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 138
    return v0

    .end local v0    # "result":I
    :cond_1
    move v1, v2

    .line 135
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v1, v2

    .line 136
    goto :goto_1
.end method
