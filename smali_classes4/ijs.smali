.class public final Lijs;
.super Ljava/lang/Object;
.source "LogContextImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/common/logging/LogContextImpl;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/logging/LogContextImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lijs;->b:Lcom/alipay/mobile/common/logging/LogContextImpl;

    iput-object p2, p0, Lijs;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 420
    iget-object v0, p0, Lijs;->b:Lcom/alipay/mobile/common/logging/LogContextImpl;

    iget-object v1, p0, Lijs;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lcom/alipay/mobile/common/logging/LogContextImpl;Ljava/lang/String;)V

    .line 421
    return-void
.end method
