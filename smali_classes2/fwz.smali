.class public final Lfwz;
.super Ljava/lang/Object;
.source "GlobalUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)Ljava/lang/String;
    .locals 4
    .param p0, "orgId"    # J

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    invoke-static {p0, p1}, Lcom/alibaba/android/user/contact/utils/UserUtils;->b(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "https://oa.dingtalk.com/en/orgCheckMobile.html?lwfrom=20151008174941989&orgId="

    aput-object v1, v0, v2

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "https://oa.dingtalk.com/orgCheckMobile.html?lwfrom=20151008174941989&orgId="

    aput-object v1, v0, v2

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
