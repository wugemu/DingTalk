.class public Lcom/j256/ormlite/logger/LoggerFactory;
.super Ljava/lang/Object;
.source "LoggerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/logger/LoggerFactory$1;,
        Lcom/j256/ormlite/logger/LoggerFactory$LogType;
    }
.end annotation


# static fields
.field private static a:Lcom/j256/ormlite/logger/LoggerFactory$LogType;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static a(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/j256/ormlite/logger/Logger;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1038
    sget-object v1, Lcom/j256/ormlite/logger/LoggerFactory;->a:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    if-nez v1, :cond_0

    .line 1039
    invoke-static {}, Lcom/j256/ormlite/logger/LoggerFactory;->a()Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    move-result-object v1

    sput-object v1, Lcom/j256/ormlite/logger/LoggerFactory;->a:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    .line 1041
    :cond_0
    new-instance v1, Lcom/j256/ormlite/logger/Logger;

    sget-object v2, Lcom/j256/ormlite/logger/LoggerFactory;->a:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    invoke-virtual {v2, v0}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->createLog(Ljava/lang/String;)Lcom/j256/ormlite/logger/Log;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/j256/ormlite/logger/Logger;-><init>(Lcom/j256/ormlite/logger/Log;)V

    .line 31
    return-object v1
.end method

.method private static a()Lcom/j256/ormlite/logger/LoggerFactory$LogType;
    .locals 9

    .prologue
    .line 63
    const-string/jumbo v6, "com.j256.ormlite.logger.type"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "logTypeString":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 66
    :try_start_0
    invoke-static {v5}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->valueOf(Ljava/lang/String;)Lcom/j256/ormlite/logger/LoggerFactory$LogType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 80
    :cond_0
    :goto_0
    return-object v4

    .line 68
    :catch_0
    move-exception v6

    new-instance v3, Lcom/j256/ormlite/logger/LocalLog;

    const-class v6, Lcom/j256/ormlite/logger/LoggerFactory;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/j256/ormlite/logger/LocalLog;-><init>(Ljava/lang/String;)V

    .line 69
    .local v3, "log":Lcom/j256/ormlite/logger/Log;
    sget-object v6, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Could not find valid log-type from system property \'com.j256.ormlite.logger.type\', value \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lcom/j256/ormlite/logger/Log;->a(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;)V

    .line 74
    .end local v3    # "log":Lcom/j256/ormlite/logger/Log;
    :cond_1
    invoke-static {}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->values()[Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    move-result-object v0

    .local v0, "arr$":[Lcom/j256/ormlite/logger/LoggerFactory$LogType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 75
    .local v4, "logType":Lcom/j256/ormlite/logger/LoggerFactory$LogType;
    invoke-virtual {v4}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->isAvailable()Z

    move-result v6

    if-nez v6, :cond_0

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 80
    .end local v4    # "logType":Lcom/j256/ormlite/logger/LoggerFactory$LogType;
    :cond_2
    sget-object v4, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->LOCAL:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 49
    const-string/jumbo v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 53
    .end local p0    # "className":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "className":Ljava/lang/String;
    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object p0, v0, v1

    goto :goto_0
.end method
