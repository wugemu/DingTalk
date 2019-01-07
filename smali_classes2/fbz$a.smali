.class public final Lfbz$a;
.super Ljava/lang/Object;
.source "CircleContactSimpleInfoPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfbz;
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
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iget-object v0, p1, Lcgc;->b:Lcet;

    .line 103
    .local v0, "model":Lcet;
    if-nez v0, :cond_0

    .line 104
    const-string/jumbo v2, ""

    iput-object v2, p0, Lfbz$a;->a:Ljava/lang/String;

    .line 105
    const-string/jumbo v2, ""

    iput-object v2, p0, Lfbz$a;->b:Ljava/lang/String;

    .line 106
    const-string/jumbo v2, ""

    iput-object v2, p0, Lfbz$a;->c:Ljava/lang/String;

    .line 119
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-static {}, Lfcn;->a()Lfcn;

    move-result-object v2

    iget-object v3, p1, Lcgc;->b:Lcet;

    iget-object v3, v3, Lcet;->a:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1188
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    .line 1189
    const-string/jumbo v2, "uid <= 0"

    .line 2060
    const/4 v3, 0x0

    invoke-static {v3, v2}, Lffe;->a(ZLjava/lang/String;)V

    .line 1190
    const/4 v1, 0x0

    .line 109
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :goto_1
    if-nez v1, :cond_2

    .line 110
    const-string/jumbo v2, ""

    iput-object v2, p0, Lfbz$a;->a:Ljava/lang/String;

    .line 111
    const-string/jumbo v2, ""

    iput-object v2, p0, Lfbz$a;->b:Ljava/lang/String;

    .line 112
    const-string/jumbo v2, ""

    iput-object v2, p0, Lfbz$a;->c:Ljava/lang/String;

    goto :goto_0

    .line 1193
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_1
    iget-object v2, v2, Lfcn;->a:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-object v1, v2

    goto :goto_1

    .line 114
    .restart local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_2
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v2, p0, Lfbz$a;->a:Ljava/lang/String;

    .line 115
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v2, p0, Lfbz$a;->b:Ljava/lang/String;

    .line 116
    iget-object v2, v0, Lcet;->i:Ljava/lang/String;

    iput-object v2, p0, Lfbz$a;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method constructor <init>(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 2
    .param p1, "profileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v1, p0, Lfbz$a;->a:Ljava/lang/String;

    .line 92
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v1, p0, Lfbz$a;->b:Ljava/lang/String;

    .line 93
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    .line 94
    .local v0, "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;
    if-eqz v0, :cond_0

    .line 95
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->orgName:Ljava/lang/String;

    iput-object v1, p0, Lfbz$a;->c:Ljava/lang/String;

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    const-string/jumbo v1, ""

    iput-object v1, p0, Lfbz$a;->c:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 123
    if-nez p1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v1

    .line 126
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    .line 127
    goto :goto_0

    .line 129
    :cond_2
    instance-of v3, p1, Lfbz$a;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 133
    check-cast v0, Lfbz$a;

    .line 134
    .local v0, "info":Lfbz$a;
    iget-object v3, p0, Lfbz$a;->a:Ljava/lang/String;

    iget-object v4, v0, Lfbz$a;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lfbz$a;->b:Ljava/lang/String;

    iget-object v4, v0, Lfbz$a;->b:Ljava/lang/String;

    .line 135
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lfbz$a;->c:Ljava/lang/String;

    iget-object v4, v0, Lfbz$a;->c:Ljava/lang/String;

    .line 136
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 142
    iget-object v1, p0, Lfbz$a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lfbz$a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v0, v1, 0x275

    .line 143
    .local v0, "result":I
    mul-int/lit8 v3, v0, 0x25

    iget-object v1, p0, Lfbz$a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lfbz$a;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v3, v1

    .line 144
    mul-int/lit8 v1, v0, 0x25

    iget-object v3, p0, Lfbz$a;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v2, p0, Lfbz$a;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 145
    return v0

    .end local v0    # "result":I
    :cond_1
    move v1, v2

    .line 142
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v1, v2

    .line 143
    goto :goto_1
.end method
