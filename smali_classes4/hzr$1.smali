.class final Lhzr$1;
.super Liaa;
.source "AnalyticsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhzr;->a(Lcom/alibaba/wukong/idl/log/models/AlarmModel;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Liaa",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/wukong/idl/log/models/AlarmModel;

.field final synthetic c:Lhzr;


# direct methods
.method constructor <init>(Lhzr;Lcom/alibaba/wukong/Callback;ZLcom/alibaba/wukong/WKExecutor;Lcom/alibaba/doraemon/Priority;ZLcom/alibaba/wukong/idl/log/models/AlarmModel;)V
    .locals 2
    .param p1, "this$0"    # Lhzr;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Lcom/alibaba/wukong/WKExecutor;
    .param p5, "priority"    # Lcom/alibaba/doraemon/Priority;

    .prologue
    .line 94
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/lang/Void;>;"
    iput-object p1, p0, Lhzr$1;->c:Lhzr;

    iput-boolean p6, p0, Lhzr$1;->a:Z

    iput-object p7, p0, Lhzr$1;->b:Lcom/alibaba/wukong/idl/log/models/AlarmModel;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p4, p5}, Liaa;-><init>(Lcom/alibaba/wukong/Callback;ZLcom/alibaba/wukong/WKExecutor;Lcom/alibaba/doraemon/Priority;)V

    return-void
.end method


# virtual methods
.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 94
    .line 1097
    iget-boolean v0, p0, Lhzr$1;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Lhzr;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1098
    :cond_0
    iget-object v0, p0, Lhzr$1;->b:Lcom/alibaba/wukong/idl/log/models/AlarmModel;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/idl/log/models/AlarmModel;->localDate:Ljava/lang/Long;

    .line 1099
    iget-object v0, p0, Lhzr$1;->c:Lhzr;

    invoke-static {v0}, Lhzr;->a(Lhzr;)Lcom/alibaba/wukong/auth/a;

    move-result-object v0

    iget-object v1, p0, Lhzr$1;->b:Lcom/alibaba/wukong/idl/log/models/AlarmModel;

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/wukong/auth/a;->a(Lcom/alibaba/wukong/idl/log/models/AlarmModel;Lcom/alibaba/wukong/Callback;)V

    .line 94
    :cond_1
    return-void
.end method
