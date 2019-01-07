.class public final Lakz;
.super Ljava/lang/Object;
.source "LogAssembleHelper.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lakz;->a:Ljava/lang/String;

    .line 10
    const/4 v0, 0x1

    sput-boolean v0, Lakz;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 14
    if-eqz p0, :cond_2

    sget-boolean v5, Lakz;->b:Z

    if-eqz v5, :cond_2

    .line 16
    :try_start_0
    const-string/jumbo v5, "com.taobao.dp.DeviceSecuritySDK"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 17
    .local v2, "lClass":Ljava/lang/Class;
    if-eqz v2, :cond_1

    .line 18
    const/4 v5, 0x1

    new-array v1, v5, [Ljava/lang/Object;

    .line 19
    .local v1, "lArgA":[Ljava/lang/Object;
    const/4 v5, 0x0

    aput-object p0, v1, v5

    .line 20
    const-string/jumbo v5, "getInstance"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-static {v2, v5, v1, v6}, Lanc;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 22
    .local v3, "lObj":Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 23
    const-string/jumbo v5, "getSecurityToken"

    invoke-static {v3, v5}, Lanc;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 25
    .local v4, "lSToken":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 26
    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    sput-object v5, Lakz;->a:Ljava/lang/String;

    .line 28
    :cond_0
    check-cast v4, Ljava/lang/String;

    .line 36
    .end local v1    # "lArgA":[Ljava/lang/Object;
    .end local v2    # "lClass":Ljava/lang/Class;
    .end local v3    # "lObj":Ljava/lang/Object;
    .end local v4    # "lSToken":Ljava/lang/Object;
    :goto_0
    return-object v4

    .line 31
    .restart local v2    # "lClass":Ljava/lang/Class;
    :cond_1
    const/4 v5, 0x0

    sput-boolean v5, Lakz;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .end local v2    # "lClass":Ljava/lang/Class;
    :cond_2
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_1
.end method
