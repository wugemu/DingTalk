.class public final Lemp$4;
.super Ljava/lang/Object;
.source "ScanHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lemp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;

.field final synthetic b:Lemp;


# direct methods
.method public constructor <init>(Lemp;Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;)V
    .locals 0
    .param p1, "this$0"    # Lemp;

    .prologue
    .line 68
    iput-object p1, p0, Lemp$4;->b:Lemp;

    iput-object p2, p0, Lemp$4;->a:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    iget-object v0, p0, Lemp$4;->a:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;

    sget-object v1, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;->BarCode:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;

    if-ne v0, v1, :cond_0

    .line 72
    iget-object v0, p0, Lemp$4;->b:Lemp;

    .line 1014
    iget-object v0, v0, Lemp;->e:Lcom/alipay/mobile/bqcscanservice/f;

    .line 72
    sget-object v1, Lcom/alibaba/android/scan/widget/ScanType;->SCAN_MA:Lcom/alibaba/android/scan/widget/ScanType;

    invoke-virtual {v1}, Lcom/alibaba/android/scan/widget/ScanType;->toBqcScanType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;->BAR:Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/bqcscanservice/f;->a(Ljava/lang/String;Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;)Z

    .line 78
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lemp$4;->a:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;

    sget-object v1, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;->QrCode:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;

    if-ne v0, v1, :cond_1

    .line 74
    iget-object v0, p0, Lemp$4;->b:Lemp;

    .line 2014
    iget-object v0, v0, Lemp;->e:Lcom/alipay/mobile/bqcscanservice/f;

    .line 74
    sget-object v1, Lcom/alibaba/android/scan/widget/ScanType;->SCAN_MA:Lcom/alibaba/android/scan/widget/ScanType;

    invoke-virtual {v1}, Lcom/alibaba/android/scan/widget/ScanType;->toBqcScanType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;->QRCODE:Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/bqcscanservice/f;->a(Ljava/lang/String;Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;)Z

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lemp$4;->b:Lemp;

    .line 3014
    iget-object v0, v0, Lemp;->e:Lcom/alipay/mobile/bqcscanservice/f;

    .line 76
    sget-object v1, Lcom/alibaba/android/scan/widget/ScanType;->SCAN_MA:Lcom/alibaba/android/scan/widget/ScanType;

    invoke-virtual {v1}, Lcom/alibaba/android/scan/widget/ScanType;->toBqcScanType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;->ALL:Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/bqcscanservice/f;->a(Ljava/lang/String;Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;)Z

    goto :goto_0
.end method
