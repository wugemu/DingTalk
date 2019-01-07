.class final Lcom/alipay/mobile/nebula/log/H5Logger$5;
.super Ljava/lang/Object;
.source "H5Logger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/log/H5Logger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bizName:Ljava/lang/String;

.field final synthetic val$extParams:Ljava/util/Map;

.field final synthetic val$failCode:Ljava/lang/String;

.field final synthetic val$subName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/alipay/mobile/nebula/log/H5Logger$5;->val$bizName:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/nebula/log/H5Logger$5;->val$subName:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebula/log/H5Logger$5;->val$failCode:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebula/log/H5Logger$5;->val$extParams:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 188
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebula/log/H5Logger$5;->val$bizName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebula/log/H5Logger$5;->val$subName:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebula/log/H5Logger$5;->val$failCode:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/nebula/log/H5Logger$5;->val$extParams:Ljava/util/Map;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 191
    :cond_0
    return-void
.end method
