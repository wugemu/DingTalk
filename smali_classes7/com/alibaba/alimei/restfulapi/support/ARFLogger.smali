.class public Lcom/alibaba/alimei/restfulapi/support/ARFLogger;
.super Ljava/lang/Object;
.source "ARFLogger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AlimeiRestfulSDK"

.field public static sLoggerLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x5

    sput v0, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->sLoggerLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final e(Ljava/lang/String;)I
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 27
    sget v0, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->sLoggerLevel:I

    if-ltz v0, :cond_0

    .line 28
    const-string/jumbo v0, "AlimeiRestfulSDK"

    invoke-static {p0}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->nvl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 30
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 34
    sget v0, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->sLoggerLevel:I

    if-ltz v0, :cond_0

    .line 35
    invoke-static {p1}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->nvl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 37
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 48
    sget v0, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->sLoggerLevel:I

    if-ltz v0, :cond_0

    .line 49
    invoke-static {p1}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->nvl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 51
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 41
    sget v0, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->sLoggerLevel:I

    if-ltz v0, :cond_0

    .line 42
    const-string/jumbo v0, "AlimeiRestfulSDK"

    invoke-static {p0}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->nvl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 44
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final i(Ljava/lang/String;)I
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 62
    sget v0, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->sLoggerLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 63
    const-string/jumbo v0, "AlimeiRestfulSDK"

    invoke-static {p0}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->nvl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 65
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 69
    sget v0, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->sLoggerLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 70
    invoke-static {p1}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->nvl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 55
    sget v0, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->sLoggerLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 56
    const-string/jumbo v0, "AlimeiRestfulSDK"

    invoke-static {p0}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->nvl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 58
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isLogE()Z
    .locals 1

    .prologue
    .line 19
    sget v0, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->sLoggerLevel:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isLogI()Z
    .locals 2

    .prologue
    .line 23
    sget v0, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->sLoggerLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static nvl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "obj"    # Ljava/lang/String;

    .prologue
    .line 76
    if-nez p0, :cond_0

    const-string/jumbo p0, "PARAM ERROR, MSG CANNOT BE NULL"

    .end local p0    # "obj":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static final setLoggerLevel(I)V
    .locals 0
    .param p0, "level"    # I

    .prologue
    .line 14
    sput p0, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->sLoggerLevel:I

    .line 15
    return-void
.end method
