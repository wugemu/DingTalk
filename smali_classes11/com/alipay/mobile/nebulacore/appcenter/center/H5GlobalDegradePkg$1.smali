.class Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg$1;
.super Ljava/lang/Object;
.source "H5GlobalDegradePkg.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/appcenter/api/H5LoadPresetListen;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->prepareContent(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$time:J

.field final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg$1;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg$1;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg$1;->val$version:Ljava/lang/String;

    iput-wide p4, p0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg$1;->val$time:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPresetPath(Ljava/lang/String;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 177
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg$1;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg$1;->val$appId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg$1;->val$version:Ljava/lang/String;

    invoke-static {v1, v2, p1, v3}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->access$000(Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 179
    .local v0, "result":Z
    const-string/jumbo v1, "H5GlobalDegradePkg"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "prepareContent from apk  result:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " speed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg$1;->val$time:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .end local v0    # "result":Z
    :cond_0
    return-void
.end method
