.class public final Lftx;
.super Ljava/lang/Object;
.source "NameCardExchangeAvatarBean.java"

# interfaces
.implements Lfsi;


# instance fields
.field public a:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

.field public b:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lfsh;)I
    .locals 1
    .param p1, "typeFactory"    # Lfsh;

    .prologue
    .line 31
    const/16 v0, 0x13

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 36
    if-nez p1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return v1

    .line 39
    :cond_1
    instance-of v2, p1, Lftx;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 40
    check-cast v0, Lftx;

    .line 41
    .local v0, "bean":Lftx;
    iget-object v2, p0, Lftx;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lftx;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    if-eqz v2, :cond_0

    .line 44
    iget-object v1, p0, Lftx;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->uid:J

    iget-object v1, v0, Lftx;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->uid:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 45
    const/4 v1, 0x1

    goto :goto_0

    .line 48
    .end local v0    # "bean":Lftx;
    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 53
    iget-object v0, p0, Lftx;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lftx;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->uid:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 57
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method
