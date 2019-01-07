.class public Lcom/j256/ormlite/misc/VersionUtils;
.super Ljava/lang/Object;
.source "VersionUtils.java"


# static fields
.field private static a:Lcom/j256/ormlite/logger/Logger;

.field private static b:Z

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/j256/ormlite/misc/VersionUtils;->b:Z

    .line 17
    const-string/jumbo v0, "VERSION__5.0__"

    sput-object v0, Lcom/j256/ormlite/misc/VersionUtils;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static final a(Ljava/lang/String;)V
    .locals 11
    .param p0, "androidVersion"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 34
    const-string/jumbo v0, "core"

    sget-object v1, Lcom/j256/ormlite/misc/VersionUtils;->c:Ljava/lang/String;

    const-string/jumbo v2, "android"

    .line 1052
    if-nez v1, :cond_1

    .line 1053
    if-eqz p0, :cond_0

    .line 1054
    const-string/jumbo v1, "Unknown version"

    const-string/jumbo v3, " for {}, version for {} is \'{}\'"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v0, v4, v6

    aput-object v2, v4, v7

    aput-object p0, v4, v8

    invoke-static {v10, v1, v3, v4}, Lcom/j256/ormlite/misc/VersionUtils;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1059
    :cond_0
    :goto_0
    return-void

    .line 1058
    :cond_1
    if-nez p0, :cond_2

    .line 1059
    const-string/jumbo v3, "Unknown version"

    const-string/jumbo v4, " for {}, version for {} is \'{}\'"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v6

    aput-object v0, v5, v7

    aput-object v1, v5, v8

    invoke-static {v10, v3, v4, v5}, Lcom/j256/ormlite/misc/VersionUtils;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1061
    :cond_2
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1062
    const-string/jumbo v3, "Mismatched versions"

    const-string/jumbo v4, ": {} is \'{}\', while {} is \'{}\'"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    aput-object v1, v5, v7

    aput-object v2, v5, v8

    aput-object p0, v5, v9

    invoke-static {v10, v3, v4, v5}, Lcom/j256/ormlite/misc/VersionUtils;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8
    .param p0, "th"    # Ljava/lang/Throwable;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1079
    sget-object v0, Lcom/j256/ormlite/misc/VersionUtils;->a:Lcom/j256/ormlite/logger/Logger;

    if-nez v0, :cond_0

    .line 1080
    const-class v0, Lcom/j256/ormlite/misc/VersionUtils;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->a(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/misc/VersionUtils;->a:Lcom/j256/ormlite/logger/Logger;

    .line 1082
    :cond_0
    sget-object v0, Lcom/j256/ormlite/misc/VersionUtils;->a:Lcom/j256/ormlite/logger/Logger;

    .line 69
    const/4 v2, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1327
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->a:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->a:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->a:Ljava/lang/Object;

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->a(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 73
    return-void
.end method
