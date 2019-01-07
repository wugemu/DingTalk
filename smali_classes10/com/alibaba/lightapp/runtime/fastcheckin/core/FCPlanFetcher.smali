.class public final enum Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;
.super Ljava/lang/Enum;
.source "FCPlanFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;

.field private static final FAST_CHECKIN_REQUEST_SPLITTER:Ljava/lang/String; = "_"

.field private static final FETCH_FAST_CHECKIN_PLAN_DELAY_MILLIS:I = 0x2710

.field public static final enum INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;

.field private static final MAX_FETCH_NUM:I = 0x5

.field private static final TAG:Ljava/lang/String; = "FCPlanFetcher"


# instance fields
.field private final DATE_FORMATTER:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation
.end field

.field private final PREFS_FAST_CHECKIN_REQUEST_TODAY:Ljava/lang/String;

.field private fetchNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private isFetching:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;

    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;

    sget-object v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->$VALUES:[Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    const-string/jumbo v0, "prefs_fast_checkin_request_today"

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->PREFS_FAST_CHECKIN_REQUEST_TODAY:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->isFetching:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->fetchNum:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->finish(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->fetchNum:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;Lcma;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;
    .param p1, "x1"    # Lcma;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->doFetch(Lcma;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->isTodayFetchAllowed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->getUserFastCheckInCorpIdList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;Ljava/util/List;Lcma;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcma;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->successFetch(Ljava/util/List;Lcma;)V

    return-void
.end method

.method private doFetch(Lcma;)V
    .locals 4
    .param p1, "listener"    # Lcma;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2;-><init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;Lcma;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    return-void
.end method

.method private finish(Z)V
    .locals 6
    .param p1, "allow"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 182
    const-string/jumbo v0, "FCPlanFetcher"

    const-string/jumbo v1, "finish"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "allow"

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lhgz;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    if-eqz p1, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->saveTodayFetchState()V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->fetchNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 187
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->isFetching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 188
    return-void
.end method

.method private getUserFastCheckInCorpIdList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v1, "corpIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v4

    .line 132
    .local v4, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v4, :cond_1

    iget-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 133
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 134
    iget-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 135
    .local v3, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v3, :cond_0

    .line 136
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v5

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "corpId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 138
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v0    # "corpId":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    .end local v2    # "i":I
    .end local v3    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_1
    return-object v1
.end method

.method private isTodayFetchAllowed()Z
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 193
    const/4 v0, 0x1

    .line 194
    .local v0, "allowed":Z
    const-string/jumbo v9, "prefs_fast_checkin_request_today"

    const-string/jumbo v10, ""

    invoke-static {v9, v10}, Lcpk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "reqToday":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 196
    const-string/jumbo v9, "_"

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 197
    .local v4, "reqTodayPairs":[Ljava/lang/String;
    array-length v9, v4

    if-lt v9, v13, :cond_2

    .line 198
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 199
    .local v6, "today":Ljava/lang/String;
    aget-object v9, v4, v7

    invoke-static {v9, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 200
    aget-object v9, v4, v8

    invoke-static {v9, v7}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v5

    .line 207
    .local v5, "times":I
    if-lez v5, :cond_1

    .line 208
    if-ge v5, v14, :cond_4

    .line 209
    sget-object v9, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;

    invoke-virtual {v9}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->getAllPlansModule()Ljava/util/Map;

    move-result-object v2

    .line 210
    .local v2, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lhhe;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_0
    move v0, v8

    .line 220
    .end local v2    # "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lhhe;>;"
    :cond_1
    :goto_0
    const-string/jumbo v9, "FCPlanFetcher"

    const-string/jumbo v10, "isTodayFetchAllowed"

    new-array v11, v13, [Ljava/lang/Object;

    const-string/jumbo v12, "times"

    aput-object v12, v11, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v9, v10, v11}, Lhgz;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    .end local v4    # "reqTodayPairs":[Ljava/lang/String;
    .end local v5    # "times":I
    .end local v6    # "today":Ljava/lang/String;
    :cond_2
    const-string/jumbo v9, "FCPlanFetcher"

    const-string/jumbo v10, "isTodayFetchAllowed"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const-string/jumbo v12, "reqToday"

    aput-object v12, v11, v7

    aput-object v3, v11, v8

    const-string/jumbo v7, "allowed"

    aput-object v7, v11, v13

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v11, v14

    invoke-static {v9, v10, v11}, Lhgz;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    return v0

    .restart local v2    # "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lhhe;>;"
    .restart local v4    # "reqTodayPairs":[Ljava/lang/String;
    .restart local v5    # "times":I
    .restart local v6    # "today":Ljava/lang/String;
    :cond_3
    move v0, v7

    .line 210
    goto :goto_0

    .line 211
    .end local v2    # "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lhhe;>;"
    :cond_4
    const/4 v9, 0x5

    if-ge v5, v9, :cond_5

    .line 212
    const-string/jumbo v9, "LIFECYCLE"

    invoke-static {v9}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 213
    .local v1, "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    invoke-interface {v1}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->isBackground()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 214
    const/4 v0, 0x0

    goto :goto_0

    .line 217
    .end local v1    # "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveTodayFetchState()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 229
    const/4 v2, 0x0

    .line 230
    .local v2, "times":I
    const-string/jumbo v4, "prefs_fast_checkin_request_today"

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Lcpk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "reqToday":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 232
    const-string/jumbo v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "reqTodayPairs":[Ljava/lang/String;
    array-length v4, v1

    if-lt v4, v7, :cond_0

    .line 234
    aget-object v4, v1, v9

    invoke-static {v4, v8}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v2

    .line 237
    .end local v1    # "reqTodayPairs":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 238
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const-string/jumbo v5, "_"

    aput-object v5, v4, v9

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, "todayFetchState":Ljava/lang/String;
    const-string/jumbo v4, "prefs_fast_checkin_request_today"

    invoke-static {v4, v3}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string/jumbo v4, "FCPlanFetcher"

    const-string/jumbo v5, "saveTodayFetchState"

    new-array v6, v7, [Ljava/lang/Object;

    const-string/jumbo v7, "todayFetchState"

    aput-object v7, v6, v8

    aput-object v3, v6, v9

    invoke-static {v4, v5, v6}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    return-void
.end method

.method private successFetch(Ljava/util/List;Lcma;)V
    .locals 2
    .param p2, "listener"    # Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhhj;",
            ">;",
            "Lcma;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1124
    .local p1, "models":Ljava/util/List;, "Ljava/util/List<Lhhj;>;"
    const-string/jumbo v0, "fast_checkin"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 147
    new-instance v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$3;-><init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;Ljava/util/List;Lcma;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 179
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->$VALUES:[Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;

    invoke-virtual {v0}, [Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;

    return-object v0
.end method


# virtual methods
.method public final fetch()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 55
    sget-object v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    const-string/jumbo v1, "FCPlanFetcher"

    const-string/jumbo v2, "fetch degraded!"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->isFetching:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    const-string/jumbo v1, "FCPlanFetcher"

    const-string/jumbo v2, "start"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    new-instance v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$1;-><init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;)V

    .line 81
    .local v0, "listener":Lcma;
    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->doFetch(Lcma;)V

    goto :goto_0

    .line 83
    .end local v0    # "listener":Lcma;
    :cond_1
    const-string/jumbo v1, "FCPlanFetcher"

    const-string/jumbo v2, "start isDoing"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lhgz;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final resetTodayFetchState()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 244
    const-string/jumbo v0, "FCPlanFetcher"

    const-string/jumbo v1, "resetTodayFetchState"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    const-string/jumbo v0, "prefs_fast_checkin_request_today"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method
