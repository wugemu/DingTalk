.class public Lcom/alibaba/alimei/restfulapi/support/RFTraceUtils;
.super Ljava/lang/Object;
.source "RFTraceUtils.java"


# static fields
.field public static final MODULE:Ljava/lang/String; = "CMail"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static trace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-static {p0, p1}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getLogConfig()Lcom/alibaba/alimei/restfulapi/support/RFLogConfig;

    move-result-object v0

    .line 23
    .local v0, "config":Lcom/alibaba/alimei/restfulapi/support/RFLogConfig;
    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/support/RFLogConfig;->getRestfulTraceLogger()Lcom/alibaba/alimei/restfulapi/support/IRFTraceLogger;

    move-result-object v1

    .line 25
    .local v1, "logger":Lcom/alibaba/alimei/restfulapi/support/IRFTraceLogger;
    if-eqz v1, :cond_0

    .line 26
    const-string/jumbo v2, "CMail"

    const-string/jumbo v3, ""

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "tag:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, ", desc:"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p1, v4, v5

    invoke-static {v4}, Lcom/alibaba/alimei/restfulapi/utils/StringUtils;->getAppendString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/alimei/restfulapi/support/IRFTraceLogger;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .end local v1    # "logger":Lcom/alibaba/alimei/restfulapi/support/IRFTraceLogger;
    :cond_0
    return-void
.end method

.method public static trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    invoke-static {p1}, Lcom/alibaba/alimei/restfulapi/utils/CommonUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/alimei/restfulapi/support/RFTraceUtils;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method
