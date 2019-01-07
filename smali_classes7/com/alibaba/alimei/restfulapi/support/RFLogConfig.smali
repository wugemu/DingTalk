.class public Lcom/alibaba/alimei/restfulapi/support/RFLogConfig;
.super Ljava/lang/Object;
.source "RFLogConfig.java"


# instance fields
.field private mRestfulTraceLogger:Lcom/alibaba/alimei/restfulapi/support/IRFTraceLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/support/RFLogConfig;->mRestfulTraceLogger:Lcom/alibaba/alimei/restfulapi/support/IRFTraceLogger;

    return-void
.end method

.method public static newDefaultConfig()Lcom/alibaba/alimei/restfulapi/support/RFLogConfig;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/alibaba/alimei/restfulapi/support/RFLogConfig;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/support/RFLogConfig;-><init>()V

    .line 17
    .local v0, "config":Lcom/alibaba/alimei/restfulapi/support/RFLogConfig;
    return-object v0
.end method


# virtual methods
.method public getRestfulTraceLogger()Lcom/alibaba/alimei/restfulapi/support/IRFTraceLogger;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/support/RFLogConfig;->mRestfulTraceLogger:Lcom/alibaba/alimei/restfulapi/support/IRFTraceLogger;

    return-object v0
.end method

.method public setRestfulTraceLogger(Lcom/alibaba/alimei/restfulapi/support/IRFTraceLogger;)V
    .locals 0
    .param p1, "logger"    # Lcom/alibaba/alimei/restfulapi/support/IRFTraceLogger;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/support/RFLogConfig;->mRestfulTraceLogger:Lcom/alibaba/alimei/restfulapi/support/IRFTraceLogger;

    .line 26
    return-void
.end method
