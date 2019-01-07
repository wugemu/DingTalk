.class public final Ldho$2;
.super Ljava/lang/Object;
.source "EncryptManager.java"

# interfaces
.implements Lcom/alibaba/android/dtencrypt/DTGetCodeProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldho;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldho;


# direct methods
.method public constructor <init>(Ldho;)V
    .locals 0
    .param p1, "this$0"    # Ldho;

    .prologue
    .line 157
    iput-object p1, p0, Ldho$2;->a:Ldho;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ldho$2;Lcom/alibaba/android/dtencrypt/DTGetCodeProxy$DTGetCodeCallback;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Ldho$2;
    .param p1, "x1"    # Lcom/alibaba/android/dtencrypt/DTGetCodeProxy$DTGetCodeCallback;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 157
    .line 1184
    if-eqz p1, :cond_0

    .line 1185
    sget-object v0, Ldho;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Ldho$2$2;

    invoke-direct {v1, p0, p1, p2}, Ldho$2$2;-><init>(Ldho$2;Lcom/alibaba/android/dtencrypt/DTGetCodeProxy$DTGetCodeCallback;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 157
    :cond_0
    return-void
.end method

.method static synthetic a(Ldho$2;Lcom/alibaba/android/dtencrypt/DTGetCodeProxy$DTGetCodeCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Ldho$2;
    .param p1, "x1"    # Lcom/alibaba/android/dtencrypt/DTGetCodeProxy$DTGetCodeCallback;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 157
    .line 1199
    if-eqz p1, :cond_0

    .line 1200
    sget-object v0, Ldho;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Ldho$2$3;

    invoke-direct {v1, p0, p1, p3, p4}, Ldho$2$3;-><init>(Ldho$2;Lcom/alibaba/android/dtencrypt/DTGetCodeProxy$DTGetCodeCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 1211
    :cond_0
    const/4 v0, 0x5

    invoke-static {p2, v0, p3, p4}, Ldhq;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method


# virtual methods
.method public final getCode(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/dtencrypt/DTGetCodeProxy$DTGetCodeCallback;)V
    .locals 5
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/alibaba/android/dtencrypt/DTGetCodeProxy$DTGetCodeCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 160
    const-string/jumbo v0, "crypto"

    const-string/jumbo v1, "getAuthCode"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "getAuthCode domain="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", corpId:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    .line 161
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v0

    new-instance v1, Ldho$2$1;

    invoke-direct {v1, p0, p3, p1}, Ldho$2$1;-><init>(Ldho$2;Lcom/alibaba/android/dtencrypt/DTGetCodeProxy$DTGetCodeCallback;Ljava/lang/String;)V

    invoke-virtual {v0, p2, p1, v1}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getAuthCode(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 181
    return-void
.end method
