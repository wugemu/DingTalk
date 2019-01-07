.class final Lcom/alipay/mobile/nebula/util/H5Utils$1;
.super Ljava/lang/Object;
.source "H5Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/util/H5Utils;->landingMonitor(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$bizScenario:Ljava/lang/String;

.field final synthetic val$logProvider:Lcom/alipay/mobile/nebula/provider/H5LogProvider;

.field final synthetic val$origUrl:Ljava/lang/String;

.field final synthetic val$parsedUrl:Ljava/lang/String;

.field final synthetic val$publicId:Ljava/lang/String;

.field final synthetic val$result:Z

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5LogProvider;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 710
    iput-boolean p1, p0, Lcom/alipay/mobile/nebula/util/H5Utils$1;->val$result:Z

    iput-object p2, p0, Lcom/alipay/mobile/nebula/util/H5Utils$1;->val$origUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebula/util/H5Utils$1;->val$parsedUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebula/util/H5Utils$1;->val$type:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/nebula/util/H5Utils$1;->val$appId:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/mobile/nebula/util/H5Utils$1;->val$publicId:Ljava/lang/String;

    iput-object p7, p0, Lcom/alipay/mobile/nebula/util/H5Utils$1;->val$logProvider:Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    iput-object p8, p0, Lcom/alipay/mobile/nebula/util/H5Utils$1;->val$bizScenario:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 714
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/util/H5Utils$1;->val$result:Z

    if-eqz v0, :cond_0

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "origUrl="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/H5Utils$1;->val$origUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "^parsedUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/H5Utils$1;->val$parsedUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "^result=1^in="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/H5Utils$1;->val$type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 719
    .local v5, "param3":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "appId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/H5Utils$1;->val$appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "^publicId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/H5Utils$1;->val$publicId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "^refViewID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "refViewID"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 720
    .local v6, "param4":Ljava/lang/String;
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/H5Utils$1;->val$logProvider:Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    const-string/jumbo v1, "H5_STRPLANDING_RESULT"

    iget-object v7, p0, Lcom/alipay/mobile/nebula/util/H5Utils$1;->val$bizScenario:Ljava/lang/String;

    move-object v3, v2

    move-object v4, v2

    invoke-interface/range {v0 .. v7}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->performanceLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    return-void

    .line 717
    .end local v5    # "param3":Ljava/lang/String;
    .end local v6    # "param4":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "origUrl="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/H5Utils$1;->val$origUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "^result=0^in=unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "param3":Ljava/lang/String;
    goto :goto_0
.end method
