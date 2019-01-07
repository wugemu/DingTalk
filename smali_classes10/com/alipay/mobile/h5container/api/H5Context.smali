.class public Lcom/alipay/mobile/h5container/api/H5Context;
.super Ljava/lang/Object;
.source "H5Context.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5Context;->context:Landroid/content/Context;

    .line 11
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Context;->context:Landroid/content/Context;

    return-object v0
.end method
