.class public final Lhhp;
.super Ljava/lang/Object;
.source "RuntimeConfigSwitchManager.java"


# static fields
.field private static a:Lhhp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lhhp;

    invoke-direct {v0}, Lhhp;-><init>()V

    sput-object v0, Lhhp;->a:Lhhp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lhhp;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lhhp;->a:Lhhp;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "df"    # Z

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-static {p0, v0, v0}, Lhhp;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;ZZ)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z
    .param p2, "ignoreDingtalkSpecConfig"    # Z

    .prologue
    .line 25
    :try_start_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;ZZ)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 29
    .end local p1    # "defaultValue":Z
    :goto_0
    return p1

    .line 26
    .restart local p1    # "defaultValue":Z
    :catch_0
    move-exception v0

    .line 27
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
