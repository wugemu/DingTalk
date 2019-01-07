.class public Lcom/unicom/xiaowo/verify/UniAuthHelper;
.super Ljava/lang/Object;
.source "UniAuthHelper.java"


# static fields
.field private static volatile s_instance:Lcom/unicom/xiaowo/verify/UniAuthHelper;


# instance fields
.field private mAccountOpen:Lcom/unicom/xiaowo/verify/b/a;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/unicom/xiaowo/verify/UniAuthHelper;->s_instance:Lcom/unicom/xiaowo/verify/UniAuthHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/unicom/xiaowo/verify/UniAuthHelper;->mContext:Landroid/content/Context;

    .line 21
    invoke-static {p1}, Lcom/unicom/xiaowo/verify/b/a;->a(Landroid/content/Context;)Lcom/unicom/xiaowo/verify/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/unicom/xiaowo/verify/UniAuthHelper;->mAccountOpen:Lcom/unicom/xiaowo/verify/b/a;

    .line 22
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/unicom/xiaowo/verify/UniAuthHelper;
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/unicom/xiaowo/verify/UniAuthHelper;->s_instance:Lcom/unicom/xiaowo/verify/UniAuthHelper;

    if-nez v0, :cond_1

    .line 26
    const-class v1, Lcom/unicom/xiaowo/verify/UniAuthHelper;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lcom/unicom/xiaowo/verify/UniAuthHelper;->s_instance:Lcom/unicom/xiaowo/verify/UniAuthHelper;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/unicom/xiaowo/verify/UniAuthHelper;

    invoke-direct {v0, p0}, Lcom/unicom/xiaowo/verify/UniAuthHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/unicom/xiaowo/verify/UniAuthHelper;->s_instance:Lcom/unicom/xiaowo/verify/UniAuthHelper;

    .line 30
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_1
    sget-object v0, Lcom/unicom/xiaowo/verify/UniAuthHelper;->s_instance:Lcom/unicom/xiaowo/verify/UniAuthHelper;

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getAccessCode(Ljava/lang/String;Ljava/lang/String;Lcom/unicom/xiaowo/verify/ResultListener;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 43
    if-nez p3, :cond_0

    .line 44
    const-string/jumbo v0, "parameter error !"

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/e;->b(Ljava/lang/String;)V

    .line 73
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/UniAuthHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/g;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    invoke-static {}, Lcom/unicom/xiaowo/verify/b/c;->a()Lcom/unicom/xiaowo/verify/b/c;

    const-string/jumbo v0, "\u7f51\u7edc\u672a\u8fde\u63a5"

    invoke-static {v0, p3}, Lcom/unicom/xiaowo/verify/b/c;->a(Ljava/lang/String;Lcom/unicom/xiaowo/verify/ResultListener;)V

    goto :goto_0

    .line 53
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    invoke-static {}, Lcom/unicom/xiaowo/verify/b/c;->a()Lcom/unicom/xiaowo/verify/b/c;

    const-string/jumbo v0, "appId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0, p3}, Lcom/unicom/xiaowo/verify/b/c;->a(Ljava/lang/String;Lcom/unicom/xiaowo/verify/ResultListener;)V

    goto :goto_0

    .line 58
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    invoke-static {}, Lcom/unicom/xiaowo/verify/b/c;->a()Lcom/unicom/xiaowo/verify/b/c;

    const-string/jumbo v0, "appSecret\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0, p3}, Lcom/unicom/xiaowo/verify/b/c;->a(Ljava/lang/String;Lcom/unicom/xiaowo/verify/ResultListener;)V

    goto :goto_0

    .line 63
    :cond_3
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/UniAuthHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Lcom/unicom/xiaowo/verify/d/g;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 64
    invoke-static {}, Lcom/unicom/xiaowo/verify/b/c;->a()Lcom/unicom/xiaowo/verify/b/c;

    const-string/jumbo v0, "\u7528\u6237\u672a\u6388\u6743READ_PHONE_STATE"

    invoke-static {v0, p3}, Lcom/unicom/xiaowo/verify/b/c;->a(Ljava/lang/String;Lcom/unicom/xiaowo/verify/ResultListener;)V

    goto :goto_0

    .line 69
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/UniAuthHelper;->mAccountOpen:Lcom/unicom/xiaowo/verify/b/a;

    iget-object v1, p0, Lcom/unicom/xiaowo/verify/UniAuthHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/unicom/xiaowo/verify/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unicom/xiaowo/verify/ResultListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/unicom/xiaowo/verify/b/c;->a()Lcom/unicom/xiaowo/verify/b/c;

    const-string/jumbo v0, "sdk\u5f02\u5e38"

    invoke-static {v0, p3}, Lcom/unicom/xiaowo/verify/b/c;->a(Ljava/lang/String;Lcom/unicom/xiaowo/verify/ResultListener;)V

    goto :goto_0
.end method
