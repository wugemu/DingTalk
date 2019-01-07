.class public final Liqs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/alipay/sdk/app/H5PayCallback;

.field final synthetic d:Lcom/alipay/sdk/app/PayTask;


# direct methods
.method public constructor <init>(Lcom/alipay/sdk/app/PayTask;Ljava/lang/String;ZLcom/alipay/sdk/app/H5PayCallback;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Liqs;->d:Lcom/alipay/sdk/app/PayTask;

    iput-object p2, p0, Liqs;->a:Ljava/lang/String;

    iput-boolean p3, p0, Liqs;->b:Z

    iput-object p4, p0, Liqs;->c:Lcom/alipay/sdk/app/H5PayCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 146
    iget-object v0, p0, Liqs;->d:Lcom/alipay/sdk/app/PayTask;

    iget-object v1, p0, Liqs;->a:Ljava/lang/String;

    iget-boolean v2, p0, Liqs;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/alipay/sdk/app/PayTask;->h5Pay(Ljava/lang/String;Z)Lish;

    move-result-object v0

    .line 147
    iget-object v1, p0, Liqs;->c:Lcom/alipay/sdk/app/H5PayCallback;

    invoke-interface {v1, v0}, Lcom/alipay/sdk/app/H5PayCallback;->onPayResult(Lish;)V

    .line 148
    return-void
.end method
