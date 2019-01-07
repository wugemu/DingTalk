.class final Lfzu$24;
.super Ljava/lang/Object;
.source "SpaceNavigator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzu;->a(Lgqq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgqq;


# direct methods
.method constructor <init>(Lgqq;)V
    .locals 0

    .prologue
    .line 2357
    iput-object p1, p0, Lfzu$24;->a:Lgqq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 3089
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v0

    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxz;->a(Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;

    move-result-object v0

    .line 3091
    if-eqz v0, :cond_1

    .line 3095
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 3096
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->getExpiredTime()J

    move-result-wide v2

    .line 3098
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3102
    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->currentServerTime()J

    move-result-wide v0

    .line 3104
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    .line 3105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3108
    :cond_0
    sub-long v0, v2, v0

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 2360
    :goto_0
    if-eqz v0, :cond_2

    .line 2362
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lfzu$24$1;

    invoke-direct {v1, p0}, Lfzu$24$1;-><init>(Lfzu$24;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 2373
    :goto_1
    return-void

    .line 3108
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2371
    :cond_2
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfzu$24;->a:Lgqq;

    invoke-static {v0, v1}, Lgpo;->a(Ljava/lang/String;Lgqq;)V

    goto :goto_1
.end method
