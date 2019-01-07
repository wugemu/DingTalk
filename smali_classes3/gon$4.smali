.class public final Lgon$4;
.super Lcmi;
.source "SpaceRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:J

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lgon;


# direct methods
.method public constructor <init>(Lgon;Lcma;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 905
    iput-object p1, p0, Lgon$4;->f:Lgon;

    iput-object p2, p0, Lgon$4;->a:Lcma;

    iput-object p3, p0, Lgon$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lgon$4;->c:Ljava/lang/String;

    iput-wide p5, p0, Lgon$4;->d:J

    iput-object p7, p0, Lgon$4;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 941
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "SpaceRPC.previewUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, ", spaceId: "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lgon$4;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, ", fileId: "

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lgon$4;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, ", version: "

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-wide v4, p0, Lgon$4;->d:J

    .line 944
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, ", fileType: "

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lgon$4;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 941
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 946
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceRPC"

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    .end local p2    # "errorMsg":Ljava/lang/String;
    :cond_0
    invoke-static {v0, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 921
    const-string/jumbo v2, ""

    .line 923
    .local v2, "status":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 925
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 926
    .local v0, "data":Lorg/json/JSONObject;
    const-string/jumbo v3, "status"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 927
    const-string/jumbo v3, "status"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 934
    .end local v0    # "data":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v3, p0, Lgon$4;->a:Lcma;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, " : "

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    invoke-direct {p0, p1, p2, p3}, Lgon$4;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 937
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v3

    const-string/jumbo v4, "CSpaceService_preview"

    const-string/jumbo v5, "7001"

    invoke-virtual {v3, v4, v5, p1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    return-void

    .line 929
    :catch_0
    move-exception v1

    .line 930
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 905
    check-cast p1, Ljava/lang/String;

    .line 1908
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1909
    iget-object v0, p0, Lgon$4;->a:Lcma;

    const-string/jumbo v1, "500"

    sget v2, Lfzs$h;->dt_cspace_invalid_result_tip:I

    invoke-static {v2}, Lgon;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    const-string/jumbo v0, "(result is null)"

    invoke-direct {p0, v0, v3, v3}, Lgon$4;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1911
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceService_preview"

    const-string/jumbo v2, "7000"

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    :goto_0
    return-void

    .line 1915
    :cond_0
    iget-object v0, p0, Lgon$4;->a:Lcma;

    invoke-static {p1}, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;->formJsonString(Ljava/lang/String;)Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1916
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "CSpaceService_preview"

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
