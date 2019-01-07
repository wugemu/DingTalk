.class public final Lgpo;
.super Ljava/lang/Object;
.source "CSpaceTokenRefreshUtil.java"


# static fields
.field public static a:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lgqq;)V
    .locals 3
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "listener"    # Lgqq;

    .prologue
    .line 174
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    new-instance v0, Lgpo$2;

    invoke-direct {v0, p1}, Lgpo$2;-><init>(Lgqq;)V

    .line 216
    .local v0, "spaceTokenModelApiEventListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    .line 1278
    new-instance v2, Lgon$12;

    invoke-direct {v2, v1, v0}, Lgon$12;-><init>(Lgon;Lcma;)V

    .line 1296
    iget-object v1, v1, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    invoke-interface {v1, v2}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->getToken(Liyv;)V

    goto :goto_0
.end method

.method static a(ZLgqq;)V
    .locals 2
    .param p0, "isSuccess"    # Z
    .param p1, "listener"    # Lgqq;

    .prologue
    .line 225
    if-nez p1, :cond_0

    .line 238
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lgpo$3;

    invoke-direct {v1, p0, p1}, Lgpo$3;-><init>(ZLgqq;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
