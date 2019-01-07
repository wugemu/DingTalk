.class public Lcom/alipay/android/h5appmanager/impl/HpmServiceParams;
.super Ljava/lang/Object;
.source "HpmServiceParams.java"


# instance fields
.field private final client:Ljava/lang/String;

.field private final clientVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "client"    # Ljava/lang/String;
    .param p2, "clientVersion"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/impl/HpmServiceParams;->client:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/alipay/android/h5appmanager/impl/HpmServiceParams;->clientVersion:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getClient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/impl/HpmServiceParams;->client:Ljava/lang/String;

    return-object v0
.end method

.method public getClientVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/impl/HpmServiceParams;->clientVersion:Ljava/lang/String;

    return-object v0
.end method
