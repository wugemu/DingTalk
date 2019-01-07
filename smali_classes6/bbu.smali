.class public Lbbu;
.super Ljava/lang/Object;
.source "DingPopWindowCenter.java"


# static fields
.field private static volatile c:Lbbu;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string/jumbo v0, "OneKeyDing"

    iput-object v0, p0, Lbbu;->a:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "dingType"

    iput-object v0, p0, Lbbu;->b:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static a()Lbbu;
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lbbu;->c:Lbbu;

    if-nez v0, :cond_1

    .line 45
    const-class v1, Lbbu;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lbbu;->c:Lbbu;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lbbu;

    invoke-direct {v0}, Lbbu;-><init>()V

    sput-object v0, Lbbu;->c:Lbbu;

    .line 49
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_1
    sget-object v0, Lbbu;->c:Lbbu;

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/ding/base/objects/ObjectDing;J)V
    .locals 20
    .param p1, "ding"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p2, "remindTime"    # J

    .prologue
    .line 79
    if-nez p1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const-string/jumbo v4, "OneKeyDing"

    const-string/jumbo v5, "dingType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 86
    const-string/jumbo v4, "1"

    const-string/jumbo v5, "isSilent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 90
    invoke-static {}, Lbbr;->a()Lbbr;

    move-result-object v4

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    invoke-virtual {v4, v0, v1, v2}, Lbbr;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 91
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "DingPopWindowCenter shouldHideNewDingPopupWindow match before, dingId="

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_2
    new-instance v10, Lbbu$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v10, v0, v1}, Lbbu$4;-><init>(Lbbu;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 105
    .local v10, "mConfirmationStatusObserver":Lckm$a;, "Lckm$a<Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;>;"
    new-instance v11, Lbbu$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v11, v0, v1}, Lbbu$5;-><init>(Lbbu;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 115
    .local v11, "mFocusStatusObserver":Lckm$a;, "Lckm$a<Ljava/lang/Boolean;>;"
    new-instance v18, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    invoke-direct/range {v18 .. v18}, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;-><init>()V

    .line 116
    .local v18, "ddPopupWindowShowObject":Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;
    sget-object v4, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;->DING_ARRIVED:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    .line 1033
    move-object/from16 v0, v18

    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->c:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    .line 117
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v4

    .line 1045
    move-object/from16 v0, v18

    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->e:Ljava/lang/String;

    .line 2041
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->d:Ljava/lang/Object;

    .line 119
    new-instance v5, Lbbu$6;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    invoke-direct/range {v5 .. v11}, Lbbu$6;-><init>(Lbbu;Lcom/alibaba/android/ding/base/objects/ObjectDing;JLckm$a;Lckm$a;)V

    .line 3037
    move-object/from16 v0, v18

    iput-object v5, v0, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->b:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;

    .line 184
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    new-instance v13, Lbbu$7;

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-wide/from16 v16, p2

    invoke-direct/range {v13 .. v18}, Lbbu$7;-><init>(Lbbu;Lcom/alibaba/android/ding/base/objects/ObjectDing;JLcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;)V

    invoke-virtual {v4, v13}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
