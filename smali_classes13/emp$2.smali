.class public final Lemp$2;
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
.field final synthetic a:Lemp;


# direct methods
.method public constructor <init>(Lemp;)V
    .locals 0
    .param p1, "this$0"    # Lemp;

    .prologue
    .line 42
    iput-object p1, p0, Lemp$2;->a:Lemp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    iget-object v1, p0, Lemp$2;->a:Lemp;

    .line 1014
    iget-object v1, v1, Lemp;->d:Lemp$a;

    .line 45
    if-nez v1, :cond_0

    .line 54
    :goto_0
    return-void

    .line 49
    :cond_0
    new-instance v0, Lcom/alipay/mobile/mascanengine/MaEngineService;

    invoke-direct {v0}, Lcom/alipay/mobile/mascanengine/MaEngineService;-><init>()V

    .line 50
    .local v0, "maScanEngineService":Lcom/alipay/mobile/mascanengine/MaEngineService;
    iget-object v1, p0, Lemp$2;->a:Lemp;

    .line 2014
    iget-object v1, v1, Lemp;->e:Lcom/alipay/mobile/bqcscanservice/f;

    .line 50
    sget-object v2, Lcom/alibaba/android/scan/widget/ScanType;->SCAN_MA:Lcom/alibaba/android/scan/widget/ScanType;

    invoke-virtual {v2}, Lcom/alibaba/android/scan/widget/ScanType;->toBqcScanType()Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-virtual {v0}, Lcom/alipay/mobile/mascanengine/MaEngineService;->getEngineClazz()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lemp$2;->a:Lemp;

    .line 3014
    iget-object v4, v4, Lemp;->d:Lemp$a;

    .line 52
    sget-object v5, Lcom/alibaba/android/scan/widget/ScanType;->SCAN_MA:Lcom/alibaba/android/scan/widget/ScanType;

    invoke-interface {v4, v5}, Lemp$a;->a(Lcom/alibaba/android/scan/widget/ScanType;)Lcom/alipay/mobile/bqcscanservice/b$a;

    move-result-object v4

    .line 50
    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/bqcscanservice/f;->a(Ljava/lang/String;Ljava/lang/Class;Lcom/alipay/mobile/bqcscanservice/b$a;)V

    goto :goto_0
.end method
