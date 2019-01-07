.class public final Lhpw;
.super Ljava/lang/Object;
.source "DakaPopupWindowUtil.java"


# static fields
.field private static final a:Ljava/text/SimpleDateFormat;

.field private static b:Lhpw;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lhpw;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static declared-synchronized a()Lhpw;
    .locals 2

    .prologue
    .line 56
    const-class v1, Lhpw;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhpw;->b:Lhpw;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lhpw;

    invoke-direct {v0}, Lhpw;-><init>()V

    sput-object v0, Lhpw;->b:Lhpw;

    .line 60
    :cond_0
    sget-object v0, Lhpw;->b:Lhpw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lhpw;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lhpw;

    .prologue
    .line 43
    iget-object v0, p0, Lhpw;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lhpw;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lhpw;

    .prologue
    .line 43
    iget-object v0, p0, Lhpw;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lhpw;->a:Ljava/text/SimpleDateFormat;

    return-object v0
.end method


# virtual methods
.method public final a(IJIILjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "orgId"    # J
    .param p4, "iconId"    # I
    .param p5, "iconColorId"    # I
    .param p6, "corpId"    # Ljava/lang/String;
    .param p7, "description"    # Ljava/lang/String;

    .prologue
    .line 64
    .line 1068
    const/4 v7, 0x0

    .line 1073
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v10}, Lhpw;->a(IJIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lhkz;)V

    .line 65
    return-void
.end method

.method public final a(IJIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lhkz;)V
    .locals 14
    .param p1, "type"    # I
    .param p2, "orgId"    # J
    .param p4, "iconId"    # I
    .param p5, "iconColorId"    # I
    .param p6, "corpId"    # Ljava/lang/String;
    .param p7, "title"    # Ljava/lang/String;
    .param p8, "description"    # Ljava/lang/String;
    .param p10, "notifyObject"    # Lhkz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lhpu;",
            ">;",
            "Lhkz;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    .local p9, "actions":Ljava/util/List;, "Ljava/util/List<Lhpu;>;"
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    :goto_0
    return-void

    .line 83
    :cond_0
    move-object/from16 v0, p6

    iput-object v0, p0, Lhpw;->c:Ljava/lang/String;

    .line 85
    new-instance v13, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    invoke-direct {v13}, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;-><init>()V

    .line 86
    .local v13, "ddPopupWindowShowObject":Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lhpw;->d:Ljava/lang/String;

    .line 87
    sget-object v2, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;->LIGHT_APP_DAKA:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    .line 2033
    iput-object v2, v13, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->c:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    .line 88
    iget-object v2, p0, Lhpw;->d:Ljava/lang/String;

    .line 2045
    iput-object v2, v13, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->e:Ljava/lang/String;

    .line 89
    new-instance v2, Lhpw$1;

    move-object v3, p0

    move-object/from16 v4, p7

    move-object/from16 v5, p10

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-wide/from16 v10, p2

    move v12, p1

    invoke-direct/range {v2 .. v12}, Lhpw$1;-><init>(Lhpw;Ljava/lang/String;Lhkz;IILjava/lang/String;Ljava/util/List;JI)V

    .line 3037
    iput-object v2, v13, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->b:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;

    .line 201
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lhpw$2;

    invoke-direct {v3, p0, v13}, Lhpw$2;-><init>(Lhpw;Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "corpId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lhpw;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lhpw$3;

    invoke-direct {v1, p0}, Lhpw$3;-><init>(Lhpw;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
