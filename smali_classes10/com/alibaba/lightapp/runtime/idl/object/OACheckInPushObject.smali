.class public Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;
.super Ljava/lang/Object;
.source "OACheckInPushObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DATE_FORMATER:Ljava/text/SimpleDateFormat;

.field private static final serialVersionUID:J = -0x484587d27e2c4235L


# instance fields
.field public mAccuracyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public mCheckDate:J

.field public mCheckTimes:I

.field public mCorpId:Ljava/lang/String;

.field public mDelayTime:J

.field public mEndDate:J

.field public mFuzzyMatch:I

.field public mHasMatched:I

.field public volatile mIsFinished:Z

.field public mMaxOffset:I

.field public mMiniDistance:F

.field public mPlanId:J

.field public mPositionList:Ljava/lang/String;

.field public mStartDate:J

.field public mWifiList:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->DATE_FORMATER:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mIsFinished:Z

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mDelayTime:J

    return-void
.end method

.method public static fromIDLModel(Lhjs;)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;
    .locals 10
    .param p0, "model"    # Lhjs;

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const-wide/16 v6, 0x0

    .line 61
    if-nez p0, :cond_0

    .line 62
    const/4 v2, 0x0

    .line 95
    :goto_0
    return-object v2

    .line 65
    :cond_0
    new-instance v2, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    invoke-direct {v2}, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;-><init>()V

    .line 66
    .local v2, "oaCheckInPushObject":Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;
    iget-object v4, p0, Lhjs;->b:Ljava/lang/Long;

    .line 1044
    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 66
    iput-wide v4, v2, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    .line 67
    iget-object v4, p0, Lhjs;->a:Ljava/lang/String;

    iput-object v4, v2, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCorpId:Ljava/lang/String;

    .line 68
    iget-object v4, p0, Lhjs;->c:Ljava/lang/Long;

    .line 2044
    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 68
    iput-wide v4, v2, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mStartDate:J

    .line 69
    iget-object v4, p0, Lhjs;->d:Ljava/lang/Long;

    .line 3044
    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 69
    iput-wide v4, v2, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mEndDate:J

    .line 70
    iget-object v4, p0, Lhjs;->e:[B

    invoke-static {v4}, Lhdo;->a([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mWifiList:Ljava/lang/String;

    .line 71
    iget-object v4, p0, Lhjs;->f:[B

    invoke-static {v4}, Lhdo;->a([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPositionList:Ljava/lang/String;

    .line 72
    iget-object v4, p0, Lhjs;->g:Ljava/lang/Long;

    .line 4044
    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 72
    iput-wide v4, v2, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCheckDate:J

    .line 74
    iget-object v4, p0, Lhjs;->i:Lhik;

    if-eqz v4, :cond_3

    .line 75
    iget-object v4, p0, Lhjs;->i:Lhik;

    iget-object v3, v4, Lhik;->b:Ljava/util/Map;

    .line 76
    .local v3, "pushAccuracyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 77
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v2, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mAccuracyMap:Ljava/util/Map;

    .line 78
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 79
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Double;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 80
    .local v1, "entryKey":Ljava/lang/String;
    invoke-static {v1}, Lcoc;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 81
    iget-object v6, v2, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mAccuracyMap:Ljava/util/Map;

    .line 4150
    invoke-static {v1, v9}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v4

    .line 81
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->getModelDouble(Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 86
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Double;>;"
    .end local v1    # "entryKey":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lhjs;->i:Lhik;

    iget-object v4, v4, Lhik;->a:Ljava/lang/Integer;

    .line 5033
    invoke-static {v4, v9}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v4

    .line 86
    iput v4, v2, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mMaxOffset:I

    .line 89
    .end local v3    # "pushAccuracyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    :cond_3
    iput v8, v2, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCheckTimes:I

    .line 90
    iput v8, v2, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mHasMatched:I

    .line 91
    iput v8, v2, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mFuzzyMatch:I

    .line 92
    const/high16 v4, -0x40800000    # -1.0f

    iput v4, v2, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mMiniDistance:F

    .line 93
    iput-boolean v9, v2, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mIsFinished:Z

    goto/16 :goto_0
.end method

.method private static getModelDouble(Ljava/lang/Double;)Ljava/lang/Double;
    .locals 2
    .param p0, "d"    # Ljava/lang/Double;

    .prologue
    .line 119
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    .end local p0    # "d":Ljava/lang/Double;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public isExpire()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 105
    sget-object v2, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->DATE_FORMATER:Ljava/text/SimpleDateFormat;

    invoke-static {}, Lhrm;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "currentDate":Ljava/lang/String;
    sget-object v2, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->DATE_FORMATER:Ljava/text/SimpleDateFormat;

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCheckDate:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "checkInDate":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mIsFinished:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCorpId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mWifiList:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPositionList:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFinished(Z)V
    .locals 0
    .param p1, "finished"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mIsFinished:Z

    .line 116
    return-void
.end method
