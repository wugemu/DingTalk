.class public Levw;
.super Ljava/lang/Object;
.source "BigShowHelper.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Levw;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Levw;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Levw;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "object"    # Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 40
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1094
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Levw;->a:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "createBigShow type is "

    aput-object v3, v2, v4

    iget v3, p1, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->type:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget v0, p1, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->type:I

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;->TYPE_ADD_EXTERNAL:Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;->valueOf()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 1053
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->extension:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->extension:Ljava/util/Map;

    const-string/jumbo v1, "uid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1055
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1056
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Levw;->a:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "createBigShow uid is null"

    aput-object v3, v2, v4

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1059
    :cond_2
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1060
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    .line 1061
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Levw;->a:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "createBigShow uid <= 0"

    aput-object v3, v2, v4

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1064
    :cond_3
    sget-object v2, Levw;->a:Ljava/lang/String;

    invoke-static {v2}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    .line 1065
    new-instance v3, Levw$1;

    invoke-direct {v3, p1, v0, v1, p0}, Levw$1;-><init>(Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;JLandroid/content/Context;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 46
    :cond_4
    iget v0, p1, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->type:I

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;->TYPE_OPEN_BIZCALL:Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;->valueOf()I

    move-result v1

    if-eq v0, v1, :cond_5

    iget v0, p1, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->type:I

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;->TYPE_GENERAL_URL_JUMP:Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;

    .line 47
    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;->valueOf()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1086
    :cond_5
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->extension:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->extension:Ljava/util/Map;

    const-string/jumbo v1, "jumpUrl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1088
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1089
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Levw;->a:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "createBigShow jumpUrl is null"

    aput-object v3, v2, v4

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1092
    :cond_6
    invoke-static {p0, p1}, Levw;->c(Landroid/content/Context;Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;)V

    .line 1093
    iget v0, p1, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->type:I

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;->TYPE_OPEN_BIZCALL:Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/BigShowType;->valueOf()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 1094
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "auth_pop_servicephone_click"

    invoke-interface {v0, v6, v1, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1096
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->getStatistic()Ljava/lang/String;

    move-result-object v0

    .line 1097
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1098
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    invoke-interface {v1, v6, v0, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method static synthetic b(Landroid/content/Context;Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    .prologue
    .line 36
    invoke-static {p0, p1}, Levw;->c(Landroid/content/Context;Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;)V

    return-void
.end method

.method private static c(Landroid/content/Context;Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "object"    # Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    .prologue
    .line 105
    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;->getUrlFromMediaId()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    invoke-static {}, Levx;->a()Levx;

    move-result-object v2

    invoke-virtual {v2, v1}, Levx;->a(Ljava/lang/String;)Z

    move-result v0

    .line 108
    .local v0, "isPreLoaded":Z
    if-nez v0, :cond_0

    .line 109
    invoke-static {}, Levx;->a()Levx;

    move-result-object v2

    new-instance v3, Levw$2;

    invoke-direct {v3, p0, p1}, Levw$2;-><init>(Landroid/content/Context;Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;)V

    invoke-virtual {v2, v1, v3}, Levx;->a(Ljava/lang/String;Levx$a;)V

    .line 124
    .end local v0    # "isPreLoaded":Z
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-static {p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->a(Landroid/content/Context;Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;)V

    goto :goto_0
.end method
