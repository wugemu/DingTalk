.class public final Laig;
.super Ljava/lang/Object;
.source "ThreadLogger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 14
    const-string/jumbo v0, "AlimeilSDK"

    invoke-static {p0}, Laig;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "obj"    # Ljava/lang/String;

    .prologue
    .line 18
    if-nez p0, :cond_0

    const-string/jumbo p0, "PARAM ERROR, MSG CANNOT BE NULL"

    .end local p0    # "obj":Ljava/lang/String;
    :cond_0
    return-object p0
.end method
