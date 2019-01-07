.class public final Lgfd$a;
.super Ljava/lang/Object;
.source "SpaceMembersAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgfd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lgfd$a;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

.field b:Z

.field c:C

.field d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/members/Member;Z)V
    .locals 0
    .param p1, "member"    # Lcom/alibaba/dingtalk/cspace/functions/members/Member;
    .param p2, "isSelected"    # Z

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lgfd$a;->a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    .line 40
    iput-boolean p2, p0, Lgfd$a;->b:Z

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/members/Member;ZB)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/members/Member;
    .param p2, "x1"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lgfd$a;-><init>(Lcom/alibaba/dingtalk/cspace/functions/members/Member;Z)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 28
    check-cast p1, Lgfd$a;

    .line 2077
    if-nez p1, :cond_1

    move v0, v1

    .line 2169
    :cond_0
    :goto_0
    return v0

    .line 2080
    :cond_1
    iget-object v5, p0, Lgfd$a;->d:Ljava/lang/String;

    iget-object v6, p1, Lgfd$a;->d:Ljava/lang/String;

    .line 2165
    if-nez v5, :cond_2

    move v4, v0

    :goto_1
    if-nez v6, :cond_3

    move v3, v0

    :goto_2
    xor-int/2addr v3, v4

    if-eqz v3, :cond_4

    .line 2166
    if-eqz v5, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v4, v2

    .line 2165
    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_2

    .line 2168
    :cond_4
    if-nez v5, :cond_5

    if-nez v6, :cond_5

    move v0, v2

    .line 2169
    goto :goto_0

    .line 2171
    :cond_5
    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method
