.class public Lcom/amap/api/services/core/ServiceSettings;
.super Ljava/lang/Object;
.source "ServiceSettings.java"


# static fields
.field public static final CHINESE:Ljava/lang/String; = "zh-CN"

.field public static final ENGLISH:Ljava/lang/String; = "en"

.field public static final HTTP:I = 0x1

.field public static final HTTPS:I = 0x2

.field private static c:Lcom/amap/api/services/core/ServiceSettings;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private d:I

.field private e:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x4e20

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string/jumbo v0, "zh-CN"

    iput-object v0, p0, Lcom/amap/api/services/core/ServiceSettings;->a:Ljava/lang/String;

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/services/core/ServiceSettings;->b:I

    .line 31
    iput v1, p0, Lcom/amap/api/services/core/ServiceSettings;->d:I

    .line 32
    iput v1, p0, Lcom/amap/api/services/core/ServiceSettings;->e:I

    .line 84
    return-void
.end method

.method public static getInstance()Lcom/amap/api/services/core/ServiceSettings;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/amap/api/services/core/ServiceSettings;->c:Lcom/amap/api/services/core/ServiceSettings;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/amap/api/services/core/ServiceSettings;

    invoke-direct {v0}, Lcom/amap/api/services/core/ServiceSettings;-><init>()V

    sput-object v0, Lcom/amap/api/services/core/ServiceSettings;->c:Lcom/amap/api/services/core/ServiceSettings;

    .line 95
    :cond_0
    sget-object v0, Lcom/amap/api/services/core/ServiceSettings;->c:Lcom/amap/api/services/core/ServiceSettings;

    return-object v0
.end method


# virtual methods
.method public getConnectionTimeOut()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/amap/api/services/core/ServiceSettings;->d:I

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/amap/api/services/core/ServiceSettings;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/amap/api/services/core/ServiceSettings;->b:I

    return v0
.end method

.method public getSoTimeOut()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/amap/api/services/core/ServiceSettings;->e:I

    return v0
.end method

.method public setApiKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    invoke-static {p1}, Lcom/amap/api/services/a/ay;->a(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public setConnectionTimeOut(I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v1, 0x7530

    const/16 v0, 0x1388

    .line 58
    if-ge p1, v0, :cond_0

    .line 59
    iput v0, p0, Lcom/amap/api/services/core/ServiceSettings;->d:I

    .line 65
    :goto_0
    return-void

    .line 60
    :cond_0
    if-le p1, v1, :cond_1

    .line 61
    iput v1, p0, Lcom/amap/api/services/core/ServiceSettings;->d:I

    goto :goto_0

    .line 63
    :cond_1
    iput p1, p0, Lcom/amap/api/services/core/ServiceSettings;->d:I

    goto :goto_0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 104
    const-string/jumbo v0, "en"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "zh-CN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    :cond_0
    iput-object p1, p0, Lcom/amap/api/services/core/ServiceSettings;->a:Ljava/lang/String;

    .line 107
    :cond_1
    return-void
.end method

.method public setProtocol(I)V
    .locals 0

    .prologue
    .line 115
    iput p1, p0, Lcom/amap/api/services/core/ServiceSettings;->b:I

    .line 116
    return-void
.end method

.method public setSoTimeOut(I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v1, 0x7530

    const/16 v0, 0x1388

    .line 73
    if-ge p1, v0, :cond_0

    .line 74
    iput v0, p0, Lcom/amap/api/services/core/ServiceSettings;->e:I

    .line 80
    :goto_0
    return-void

    .line 75
    :cond_0
    if-le p1, v1, :cond_1

    .line 76
    iput v1, p0, Lcom/amap/api/services/core/ServiceSettings;->e:I

    goto :goto_0

    .line 78
    :cond_1
    iput p1, p0, Lcom/amap/api/services/core/ServiceSettings;->e:I

    goto :goto_0
.end method
