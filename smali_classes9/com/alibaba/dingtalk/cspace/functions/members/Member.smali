.class public final Lcom/alibaba/dingtalk/cspace/functions/members/Member;
.super Ljava/lang/Object;
.source "Member.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/functions/members/Member$Type;
    }
.end annotation


# instance fields
.field public final a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/alibaba/dingtalk/cspace/functions/members/Member;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "displayName"    # Ljava/lang/String;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/dingtalk/cspace/functions/members/Member;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "displayName"    # Ljava/lang/String;
    .param p4, "avatarUrl"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->a:I

    .line 69
    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->b:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->d:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->e:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    if-ne p0, p1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v1

    .line 110
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 111
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 114
    check-cast v0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    .line 116
    .local v0, "member":Lcom/alibaba/dingtalk/cspace/functions/members/Member;
    iget v3, p0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->a:I

    iget v4, v0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->a:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 117
    goto :goto_0

    .line 119
    :cond_4
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->b:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->b:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 124
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->a:I

    .line 125
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 126
    return v0

    .line 125
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
