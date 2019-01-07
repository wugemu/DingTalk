.class public final Lcom/taobao/dp/OnlineHost;
.super Ljava/lang/Object;
.source "OnlineHost.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final Custrom_Imdex:I = 0x3

.field public static final GENERAL:Lcom/taobao/dp/OnlineHost;

.field public static final JAPAN:Lcom/taobao/dp/OnlineHost;

.field public static final USA:Lcom/taobao/dp/OnlineHost;


# instance fields
.field private mHost:Ljava/lang/String;

.field private mIndex:I

.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 6
    new-instance v0, Lcom/taobao/dp/OnlineHost;

    const-string/jumbo v1, "GENERAL"

    const-string/jumbo v2, "ynuf.alipay.com"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/dp/OnlineHost;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/dp/OnlineHost;->GENERAL:Lcom/taobao/dp/OnlineHost;

    .line 7
    new-instance v0, Lcom/taobao/dp/OnlineHost;

    const-string/jumbo v1, "USA"

    const-string/jumbo v2, "us.ynuf.alipay.com"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/dp/OnlineHost;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/dp/OnlineHost;->USA:Lcom/taobao/dp/OnlineHost;

    .line 8
    new-instance v0, Lcom/taobao/dp/OnlineHost;

    const-string/jumbo v1, "JAPAN"

    const-string/jumbo v2, "fcumid.ynuf.alipay.com"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/dp/OnlineHost;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/dp/OnlineHost;->JAPAN:Lcom/taobao/dp/OnlineHost;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/taobao/dp/OnlineHost;->mName:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/taobao/dp/OnlineHost;->mHost:Ljava/lang/String;

    .line 19
    iput p3, p0, Lcom/taobao/dp/OnlineHost;->mIndex:I

    .line 20
    return-void
.end method

.method public static valueof(Ljava/lang/String;)Lcom/taobao/dp/OnlineHost;
    .locals 3
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 23
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 24
    :cond_0
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string/jumbo v2, "Invalid Host"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 26
    :cond_1
    new-instance v0, Lcom/taobao/dp/OnlineHost;

    const-string/jumbo v1, ""

    const/4 v2, 0x3

    invoke-direct {v0, v1, p0, v2}, Lcom/taobao/dp/OnlineHost;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 27
    .local v0, "onlineHost":Lcom/taobao/dp/OnlineHost;
    return-object v0
.end method


# virtual methods
.method public final getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/taobao/dp/OnlineHost;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public final getIndex()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/taobao/dp/OnlineHost;->mIndex:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/taobao/dp/OnlineHost;->mName:Ljava/lang/String;

    return-object v0
.end method
