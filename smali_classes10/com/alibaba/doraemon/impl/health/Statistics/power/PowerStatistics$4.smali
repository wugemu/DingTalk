.class Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$4;
.super Ljava/lang/Object;
.source "PowerStatistics.java"

# interfaces
.implements Lcom/alibaba/doraemon/health/monitor/SystemResListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->registerListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$4;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onSystemResCalled(ILjava/lang/String;Ljava/lang/StackTraceElement;[Ljava/lang/Object;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "element"    # Ljava/lang/StackTraceElement;
    .param p4, "params"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 210
    packed-switch p1, :pswitch_data_0

    .line 262
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 212
    :pswitch_1
    const-string/jumbo v2, "acquire"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$4;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->access$300(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;)Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$4;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    new-instance v3, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;

    invoke-direct {v3}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;-><init>()V

    invoke-static {v2, v3}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->access$302(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;)Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$4;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->access$300(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;)Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;->start:J

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$4;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->access$300(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;)Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;

    move-result-object v2

    const/4 v3, 0x0

    iput v3, v2, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;->count:I

    .line 218
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$4;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->access$300(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;)Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;

    move-result-object v2

    iget v3, v2, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;->count:I

    goto :goto_0

    .line 219
    :cond_2
    const-string/jumbo v2, "release"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$4;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->access$300(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;)Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$4;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->access$300(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;)Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;

    move-result-object v2

    iget v3, v2, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;->count:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;->count:I

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$4;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->access$300(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;)Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;

    move-result-object v2

    iget v2, v2, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;->count:I

    if-nez v2, :cond_0

    .line 223
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 224
    .local v5, "className":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$4;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->access$300(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;)Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;

    move-result-object v4

    iget-wide v6, v4, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;->start:J

    sub-long v14, v2, v6

    .line 227
    .local v14, "useTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$4;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->access$400(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;)Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;

    move-result-object v2

    const-string/jumbo v3, "detail"

    const-string/jumbo v4, "WakeLock"

    long-to-double v6, v14

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;->aggregateData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$4;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->access$302(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;)Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;

    goto/16 :goto_0

    .line 236
    .end local v5    # "className":Ljava/lang/String;
    .end local v14    # "useTime":J
    :pswitch_2
    const-string/jumbo v2, "registerListener"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$4;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->access$500(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;[Ljava/lang/Object;)V

    .line 242
    :cond_3
    const-string/jumbo v2, "unregisterListener"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$4;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-static {v2, v3, v0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->access$600(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 249
    :pswitch_3
    const-string/jumbo v2, "set"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "setExact"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "setInexactRepeating"

    .line 250
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "setRepeating"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "setWindow"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    :cond_4
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v13

    .line 254
    .local v13, "elementClass":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v12

    .line 255
    .local v12, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$4;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->access$400(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;)Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;

    move-result-object v6

    const-string/jumbo v7, "detail"

    const-string/jumbo v8, "Alarm"

    invoke-virtual {v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v6 .. v11}, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;->aggregateData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto/16 :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
