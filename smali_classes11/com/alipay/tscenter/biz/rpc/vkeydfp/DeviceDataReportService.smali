.class public interface abstract Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getAppList(Ljava/lang/String;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/AppListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.security.vkeyDFP.appList.get"
    .end annotation
.end method

.method public abstract reportStaticData(Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.security.vkeyDFP.staticData.report"
    .end annotation
.end method
