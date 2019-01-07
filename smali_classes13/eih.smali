.class public Leih;
.super Ljava/lang/Object;
.source "ContactUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 35
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v2

    .line 36
    .local v2, "uid":J
    const-string/jumbo v1, "2.4.1_update_user_profile"

    const/4 v6, 0x0

    invoke-static {v1, v6}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 37
    .local v0, "update":Z
    if-nez v0, :cond_0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 38
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    new-instance v6, Leih$1;

    invoke-direct {v6, v2, v3}, Leih$1;-><init>(J)V

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JJLcma;)V

    .line 66
    :cond_0
    return-void
.end method
