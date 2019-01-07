.class public enum Lcom/j256/ormlite/logger/LoggerFactory$LogType;
.super Ljava/lang/Enum;
.source "LoggerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/j256/ormlite/logger/LoggerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "LogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/j256/ormlite/logger/LoggerFactory$LogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/j256/ormlite/logger/LoggerFactory$LogType;

.field public static final enum ANDROID:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

.field public static final enum COMMONS_LOGGING:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

.field public static final enum LOCAL:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

.field public static final enum LOG4J:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

.field public static final enum LOG4J2:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

.field public static final enum SLF4J:Lcom/j256/ormlite/logger/LoggerFactory$LogType;


# instance fields
.field private final detectClassName:Ljava/lang/String;

.field private final logClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 87
    new-instance v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    const-string/jumbo v1, "SLF4J"

    const-string/jumbo v2, "org.slf4j.LoggerFactory"

    const-string/jumbo v3, "com.j256.ormlite.logger.Slf4jLoggingLog"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->SLF4J:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    .line 92
    new-instance v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    const-string/jumbo v1, "ANDROID"

    const-string/jumbo v2, "android.util.Log"

    const-string/jumbo v3, "com.j256.ormlite.android.AndroidLog"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->ANDROID:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    .line 93
    new-instance v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    const-string/jumbo v1, "COMMONS_LOGGING"

    const-string/jumbo v2, "org.apache.commons.logging.LogFactory"

    const-string/jumbo v3, "com.j256.ormlite.logger.CommonsLoggingLog"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->COMMONS_LOGGING:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    .line 94
    new-instance v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    const-string/jumbo v1, "LOG4J2"

    const-string/jumbo v2, "org.apache.logging.log4j.LogManager"

    const-string/jumbo v3, "com.j256.ormlite.logger.Log4j2Log"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->LOG4J2:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    .line 95
    new-instance v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    const-string/jumbo v1, "LOG4J"

    const-string/jumbo v2, "org.apache.log4j.Logger"

    const-string/jumbo v3, "com.j256.ormlite.logger.Log4jLog"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->LOG4J:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    .line 97
    new-instance v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType$1;

    const-string/jumbo v1, "LOCAL"

    const/4 v2, 0x5

    const-class v3, Lcom/j256/ormlite/logger/LocalLog;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/j256/ormlite/logger/LocalLog;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/j256/ormlite/logger/LoggerFactory$LogType$1;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->LOCAL:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    .line 86
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    sget-object v1, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->SLF4J:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->ANDROID:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->COMMONS_LOGGING:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->LOG4J2:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->LOG4J:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->LOCAL:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->$VALUES:[Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "detectClassName"    # Ljava/lang/String;
    .param p4, "logClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 115
    iput-object p3, p0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->detectClassName:Ljava/lang/String;

    .line 116
    iput-object p4, p0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->logClassName:Ljava/lang/String;

    .line 117
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/j256/ormlite/logger/LoggerFactory$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lcom/j256/ormlite/logger/LoggerFactory$1;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createLogFromClassName(Ljava/lang/String;)Lcom/j256/ormlite/logger/Log;
    .locals 6
    .param p1, "classLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 155
    iget-object v2, p0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->logClassName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 157
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 158
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lcom/j256/ormlite/logger/Log;>;"
    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/j256/ormlite/logger/Log;

    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/j256/ormlite/logger/LoggerFactory$LogType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    const-class v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    return-object v0
.end method

.method public static values()[Lcom/j256/ormlite/logger/LoggerFactory$LogType;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->$VALUES:[Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    invoke-virtual {v0}, [Lcom/j256/ormlite/logger/LoggerFactory$LogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    return-object v0
.end method


# virtual methods
.method public createLog(Ljava/lang/String;)Lcom/j256/ormlite/logger/Log;
    .locals 5
    .param p1, "classLabel"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 124
    :try_start_0
    invoke-direct {p0, p1}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->createLogFromClassName(Ljava/lang/String;)Lcom/j256/ormlite/logger/Log;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 130
    :goto_0
    return-object v1

    .line 125
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/j256/ormlite/logger/LocalLog;

    invoke-direct {v1, p1}, Lcom/j256/ormlite/logger/LocalLog;-><init>(Ljava/lang/String;)V

    .line 128
    .local v1, "log":Lcom/j256/ormlite/logger/Log;
    sget-object v2, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unable to call constructor with single String argument for class "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->logClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", so had to use local log: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/j256/ormlite/logger/Log;->a(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->isAvailableTestClass()Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    :goto_0
    return v1

    .line 143
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->createLogFromClassName(Ljava/lang/String;)Lcom/j256/ormlite/logger/Log;

    move-result-object v0

    .line 144
    .local v0, "log":Lcom/j256/ormlite/logger/Log;
    sget-object v2, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    invoke-interface {v0, v2}, Lcom/j256/ormlite/logger/Log;->a(Lcom/j256/ormlite/logger/Log$Level;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    const/4 v1, 0x1

    goto :goto_0

    .line 147
    .end local v0    # "log":Lcom/j256/ormlite/logger/Log;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method isAvailableTestClass()Z
    .locals 1

    .prologue
    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->detectClassName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    const/4 v0, 0x1

    .line 169
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
