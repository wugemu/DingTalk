.class public Lcom/alipay/mobile/nebula/schemeIntercept/H5SchemeIntercept;
.super Ljava/lang/Object;
.source "H5SchemeIntercept.java"


# instance fields
.field public useNew:Z

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "useNew"    # Z

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/alipay/mobile/nebula/schemeIntercept/H5SchemeIntercept;->value:Ljava/lang/String;

    .line 15
    iput-boolean p2, p0, Lcom/alipay/mobile/nebula/schemeIntercept/H5SchemeIntercept;->useNew:Z

    .line 16
    return-void
.end method
