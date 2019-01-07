.class public Lcom/alipay/mobile/security/bio/model/inspector/impl/InspectorImpl;
.super Ljava/lang/Object;
.source "InspectorImpl.java"

# interfaces
.implements Lcom/alipay/mobile/security/bio/model/inspector/Inspector;


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    if-nez p1, :cond_0

    .line 13
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/model/inspector/impl/InspectorImpl;->a:Landroid/content/Context;

    return-void

    .line 15
    :cond_0
    new-instance v0, Lcom/alipay/mobile/security/bio/exception/BioObjectNotInitialException;

    const-string/jumbo v1, "Context"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/security/bio/exception/BioObjectNotInitialException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public checkEnvironment()I
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method
