.class final Lcom/alipay/mobile/nebula/log/H5Logger$2;
.super Ljava/lang/Object;
.source "H5Logger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/log/H5Logger;->exceptionLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$logHeader:Ljava/lang/String;

.field final synthetic val$param1:Ljava/lang/String;

.field final synthetic val$param2:Ljava/lang/String;

.field final synthetic val$param3:Ljava/lang/String;

.field final synthetic val$params4:Ljava/lang/String;

.field final synthetic val$remoteLogType:Ljava/lang/String;

.field final synthetic val$seedID:Ljava/lang/String;

.field final synthetic val$ucId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/alipay/mobile/nebula/log/H5Logger$2;->val$seedID:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/nebula/log/H5Logger$2;->val$ucId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebula/log/H5Logger$2;->val$param1:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebula/log/H5Logger$2;->val$param2:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/nebula/log/H5Logger$2;->val$param3:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/mobile/nebula/log/H5Logger$2;->val$params4:Ljava/lang/String;

    iput-object p7, p0, Lcom/alipay/mobile/nebula/log/H5Logger$2;->val$logHeader:Ljava/lang/String;

    iput-object p8, p0, Lcom/alipay/mobile/nebula/log/H5Logger$2;->val$remoteLogType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 128
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebula/log/H5Logger$2;->val$seedID:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebula/log/H5Logger$2;->val$ucId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebula/log/H5Logger$2;->val$param1:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/nebula/log/H5Logger$2;->val$param2:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/nebula/log/H5Logger$2;->val$param3:Ljava/lang/String;

    iget-object v6, p0, Lcom/alipay/mobile/nebula/log/H5Logger$2;->val$params4:Ljava/lang/String;

    iget-object v7, p0, Lcom/alipay/mobile/nebula/log/H5Logger$2;->val$logHeader:Ljava/lang/String;

    iget-object v8, p0, Lcom/alipay/mobile/nebula/log/H5Logger$2;->val$remoteLogType:Ljava/lang/String;

    sget-object v9, Lcom/alipay/mobile/nebula/log/H5Logger;->bizScenario:Ljava/lang/String;

    invoke-interface/range {v0 .. v9}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->exceptionLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_0
    return-void
.end method
