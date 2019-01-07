.class public final Lcn/com/chinatelecom/gateway/lib/CtAuth;
.super Ljava/lang/Object;
.source "CtAuth.java"


# static fields
.field private static final a:Ljava/lang/String;

.field public static mConnTimeoutL:I

.field public static mHandler:Landroid/os/Handler;

.field public static mReadTimeout:I

.field public static mTotalTimeout:I

.field public static mTraceLogger:Lcn/com/chinatelecom/gateway/lib/o;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 14
    const-class v0, Lcn/com/chinatelecom/gateway/lib/CtAuth;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/chinatelecom/gateway/lib/CtAuth;->a:Ljava/lang/String;

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcn/com/chinatelecom/gateway/lib/CtAuth;->mHandler:Landroid/os/Handler;

    .line 17
    sput v2, Lcn/com/chinatelecom/gateway/lib/CtAuth;->mTotalTimeout:I

    .line 18
    sput v2, Lcn/com/chinatelecom/gateway/lib/CtAuth;->mConnTimeoutL:I

    .line 19
    sput v2, Lcn/com/chinatelecom/gateway/lib/CtAuth;->mReadTimeout:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcn/com/chinatelecom/gateway/lib/CtAuth;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcn/com/chinatelecom/gateway/lib/CtAuth;->mTraceLogger:Lcn/com/chinatelecom/gateway/lib/o;

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcn/com/chinatelecom/gateway/lib/CtAuth;->mTraceLogger:Lcn/com/chinatelecom/gateway/lib/o;

    invoke-interface {v0, p1}, Lcn/com/chinatelecom/gateway/lib/o;->a(Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method

.method public static init(IIILcn/com/chinatelecom/gateway/lib/o;)V
    .locals 0

    .prologue
    .line 22
    sput p0, Lcn/com/chinatelecom/gateway/lib/CtAuth;->mConnTimeoutL:I

    .line 23
    sput p1, Lcn/com/chinatelecom/gateway/lib/CtAuth;->mReadTimeout:I

    .line 24
    sput p2, Lcn/com/chinatelecom/gateway/lib/CtAuth;->mTotalTimeout:I

    .line 25
    sput-object p3, Lcn/com/chinatelecom/gateway/lib/CtAuth;->mTraceLogger:Lcn/com/chinatelecom/gateway/lib/o;

    .line 26
    return-void
.end method

.method public static postResultOnMainThread(Ljava/lang/String;Lcn/com/chinatelecom/gateway/lib/PreCodeListener;)V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcn/com/chinatelecom/gateway/lib/f;

    invoke-direct {v0, p1, p0}, Lcn/com/chinatelecom/gateway/lib/f;-><init>(Lcn/com/chinatelecom/gateway/lib/PreCodeListener;Ljava/lang/String;)V

    .line 70
    sget-object v1, Lcn/com/chinatelecom/gateway/lib/CtAuth;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    return-void
.end method

.method public static requestPreMobile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/chinatelecom/gateway/lib/PreCodeListener;)V
    .locals 6

    .prologue
    .line 36
    sget-object v0, Lcn/com/chinatelecom/gateway/lib/CtAuth;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "call requestPreMobile()   appId\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",appSecret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",bussinessType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/chinatelecom/gateway/lib/CtAuth;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    if-nez p4, :cond_0

    .line 57
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    :cond_1
    const-string/jumbo v0, "{\"result\":-8002,\"msg\":\"\u8bf7\u6c42\u53c2\u6570\u5f02\u5e38\"}"

    invoke-interface {p4, v0}, Lcn/com/chinatelecom/gateway/lib/PreCodeListener;->onResult(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_2
    invoke-static {p0}, Lcn/com/chinatelecom/gateway/lib/k;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 45
    const-string/jumbo v0, "{\"result\":-8100,\"msg\":\"\u7f51\u7edc\u65e0\u8fde\u63a5\"}"

    invoke-interface {p4, v0}, Lcn/com/chinatelecom/gateway/lib/PreCodeListener;->onResult(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_3
    invoke-static {p0}, Lcn/com/chinatelecom/gateway/lib/k;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 49
    new-instance v0, Lcn/com/chinatelecom/gateway/lib/a;

    invoke-direct {v0}, Lcn/com/chinatelecom/gateway/lib/a;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 50
    invoke-virtual/range {v0 .. v5}, Lcn/com/chinatelecom/gateway/lib/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/chinatelecom/gateway/lib/PreCodeListener;)V

    goto :goto_0

    .line 51
    :cond_4
    invoke-static {p0}, Lcn/com/chinatelecom/gateway/lib/k;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 52
    new-instance v0, Lcn/com/chinatelecom/gateway/lib/a;

    invoke-direct {v0}, Lcn/com/chinatelecom/gateway/lib/a;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 53
    invoke-virtual/range {v0 .. v5}, Lcn/com/chinatelecom/gateway/lib/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/chinatelecom/gateway/lib/PreCodeListener;)V

    goto :goto_0

    .line 55
    :cond_5
    const-string/jumbo v0, "{\"result\":-8004,\"msg\":\"\u79fb\u52a8\u7f51\u7edc\u672a\u5f00\u542f\"}"

    invoke-interface {p4, v0}, Lcn/com/chinatelecom/gateway/lib/PreCodeListener;->onResult(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcn/com/chinatelecom/gateway/lib/CtAuth;->mTraceLogger:Lcn/com/chinatelecom/gateway/lib/o;

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcn/com/chinatelecom/gateway/lib/CtAuth;->mTraceLogger:Lcn/com/chinatelecom/gateway/lib/o;

    invoke-interface {v0, p1}, Lcn/com/chinatelecom/gateway/lib/o;->b(Ljava/lang/String;)V

    .line 86
    :cond_0
    return-void
.end method
