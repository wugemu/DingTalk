.class public Lcom/alipay/mobile/security/bio/module/MicroModule;
.super Ljava/lang/Object;
.source "MicroModule.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "zimId"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/module/MicroModule;->a:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getZimId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/module/MicroModule;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setZimId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mZimId"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/module/MicroModule;->a:Ljava/lang/String;

    .line 24
    return-void
.end method
