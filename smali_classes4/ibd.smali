.class public Libd;
.super Ljava/lang/Object;
.source "ConvertPinyinManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Libd$a;
    }
.end annotation


# static fields
.field private static a:Libd;

.field private static b:Libd$a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static a()Libd;
    .locals 2

    .prologue
    .line 35
    sget-object v0, Libd;->a:Libd;

    if-nez v0, :cond_1

    .line 36
    const-class v1, Libd;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Libd;->a:Libd;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Libd;

    invoke-direct {v0}, Libd;-><init>()V

    sput-object v0, Libd;->a:Libd;

    .line 40
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_1
    sget-object v0, Libd;->a:Libd;

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "hanzi"    # Ljava/lang/String;

    .prologue
    .line 50
    const-string/jumbo v0, ""

    .line 51
    .local v0, "resultStr":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 56
    .end local v0    # "resultStr":Ljava/lang/String;
    .local v1, "resultStr":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 53
    .end local v1    # "resultStr":Ljava/lang/String;
    .restart local v0    # "resultStr":Ljava/lang/String;
    :cond_0
    sget-object v2, Libd;->b:Libd$a;

    if-eqz v2, :cond_1

    .line 54
    sget-object v2, Libd;->b:Libd$a;

    invoke-interface {v2, p0}, Libd$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v1, v0

    .line 56
    .end local v0    # "resultStr":Ljava/lang/String;
    .restart local v1    # "resultStr":Ljava/lang/String;
    goto :goto_0
.end method

.method public static a(Libd$a;)V
    .locals 0
    .param p0, "convertPinyinHelper"    # Libd$a;

    .prologue
    .line 46
    sput-object p0, Libd;->b:Libd$a;

    .line 47
    return-void
.end method
