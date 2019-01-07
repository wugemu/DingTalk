.class public final Lcom/alipay/mobile/security/bio/utils/BioLog;
.super Ljava/lang/Object;
.source "BioLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/security/bio/utils/BioLog$a;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/mobile/security/bio/utils/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/alipay/mobile/security/bio/utils/BioLog$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/security/bio/utils/BioLog$a;-><init>(B)V

    sput-object v0, Lcom/alipay/mobile/security/bio/utils/BioLog;->a:Lcom/alipay/mobile/security/bio/utils/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 80
    sget-object v0, Lcom/alipay/mobile/security/bio/utils/BioLog;->a:Lcom/alipay/mobile/security/bio/utils/Logger;

    const-string/jumbo v1, "BIOLOGY"

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/security/bio/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 89
    sget-object v0, Lcom/alipay/mobile/security/bio/utils/BioLog;->a:Lcom/alipay/mobile/security/bio/utils/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/security/bio/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 158
    sget-object v0, Lcom/alipay/mobile/security/bio/utils/BioLog;->a:Lcom/alipay/mobile/security/bio/utils/Logger;

    const-string/jumbo v1, "BIOLOGY"

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/security/bio/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 167
    sget-object v0, Lcom/alipay/mobile/security/bio/utils/BioLog;->a:Lcom/alipay/mobile/security/bio/utils/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/security/bio/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 194
    sget-object v0, Lcom/alipay/mobile/security/bio/utils/BioLog;->a:Lcom/alipay/mobile/security/bio/utils/Logger;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/mobile/security/bio/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 184
    sget-object v0, Lcom/alipay/mobile/security/bio/utils/BioLog;->a:Lcom/alipay/mobile/security/bio/utils/Logger;

    const-string/jumbo v1, "BIOLOGY"

    invoke-virtual {v0, v1, p0, p1}, Lcom/alipay/mobile/security/bio/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 175
    sget-object v0, Lcom/alipay/mobile/security/bio/utils/BioLog;->a:Lcom/alipay/mobile/security/bio/utils/Logger;

    const-string/jumbo v1, "BIOLOGY"

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/security/bio/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 97
    sget-object v0, Lcom/alipay/mobile/security/bio/utils/BioLog;->a:Lcom/alipay/mobile/security/bio/utils/Logger;

    const-string/jumbo v1, "BIOLOGY"

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/security/bio/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 106
    sget-object v0, Lcom/alipay/mobile/security/bio/utils/BioLog;->a:Lcom/alipay/mobile/security/bio/utils/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/security/bio/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method public static setLogger(Lcom/alipay/mobile/security/bio/utils/Logger;)V
    .locals 0
    .param p0, "logger"    # Lcom/alipay/mobile/security/bio/utils/Logger;

    .prologue
    .line 55
    sput-object p0, Lcom/alipay/mobile/security/bio/utils/BioLog;->a:Lcom/alipay/mobile/security/bio/utils/Logger;

    .line 56
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 63
    sget-object v0, Lcom/alipay/mobile/security/bio/utils/BioLog;->a:Lcom/alipay/mobile/security/bio/utils/Logger;

    const-string/jumbo v1, "BIOLOGY"

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/security/bio/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 72
    sget-object v0, Lcom/alipay/mobile/security/bio/utils/BioLog;->a:Lcom/alipay/mobile/security/bio/utils/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/security/bio/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 114
    sget-object v0, Lcom/alipay/mobile/security/bio/utils/BioLog;->a:Lcom/alipay/mobile/security/bio/utils/Logger;

    const-string/jumbo v1, "BIOLOGY"

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/security/bio/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 123
    sget-object v0, Lcom/alipay/mobile/security/bio/utils/BioLog;->a:Lcom/alipay/mobile/security/bio/utils/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/security/bio/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 150
    sget-object v0, Lcom/alipay/mobile/security/bio/utils/BioLog;->a:Lcom/alipay/mobile/security/bio/utils/Logger;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/mobile/security/bio/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 140
    sget-object v0, Lcom/alipay/mobile/security/bio/utils/BioLog;->a:Lcom/alipay/mobile/security/bio/utils/Logger;

    const-string/jumbo v1, "BIOLOGY"

    invoke-virtual {v0, v1, p0, p1}, Lcom/alipay/mobile/security/bio/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    return-void
.end method

.method public static w(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 131
    sget-object v0, Lcom/alipay/mobile/security/bio/utils/BioLog;->a:Lcom/alipay/mobile/security/bio/utils/Logger;

    const-string/jumbo v1, "BIOLOGY"

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/security/bio/utils/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    return-void
.end method
