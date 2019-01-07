.class final Lhky$3;
.super Lhky$a;
.source "AutoAttendanceModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhky;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhky;


# direct methods
.method constructor <init>(Lhky;)V
    .locals 0
    .param p1, "this$0"    # Lhky;

    .prologue
    .line 151
    iput-object p1, p0, Lhky$3;->a:Lhky;

    invoke-direct {p0, p1}, Lhky$a;-><init>(Lhky;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/amap/api/location/AMapLocation;)V
    .locals 13
    .param p1, "aMapLocation"    # Lcom/amap/api/location/AMapLocation;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 155
    iget-boolean v1, p0, Lhky$3;->c:Z

    if-nez v1, :cond_0

    .line 156
    if-eqz p1, :cond_8

    .line 157
    iget-object v1, p0, Lhky$3;->a:Lhky;

    invoke-static {v1, p1}, Lhky;->a(Lhky;Lcom/amap/api/location/AMapLocation;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    new-instance v0, Lhjq;

    invoke-direct {v0}, Lhjq;-><init>()V

    .line 159
    .local v0, "model":Lhjq;
    iget-object v1, p0, Lhky$3;->a:Lhky;

    invoke-static {v1}, Lhky;->a(Lhky;)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v1

    iget-wide v4, v1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lhjq;->e:Ljava/lang/Long;

    .line 160
    iget-object v1, p0, Lhky$3;->a:Lhky;

    invoke-static {v1}, Lhky;->a(Lhky;)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCorpId:Ljava/lang/String;

    iput-object v1, v0, Lhjq;->f:Ljava/lang/String;

    .line 162
    invoke-static {}, Lhkx;->a()Lhkx;

    move-result-object v1

    invoke-virtual {v1}, Lhkx;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lhjq;->g:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lhjq;->a:Ljava/lang/Double;

    .line 164
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lhjq;->b:Ljava/lang/Double;

    .line 165
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v1

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lhjq;->c:Ljava/lang/Double;

    .line 167
    iget-object v1, p0, Lhky$3;->a:Lhky;

    invoke-static {v1}, Lhky;->a(Lhky;)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v1

    const/4 v4, 0x1

    iput v4, v1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mHasMatched:I

    .line 169
    const-string/jumbo v1, "attendance"

    invoke-static {}, Lhky;->b()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "position match:"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lhky$3;->a:Lhky;

    invoke-static {v7}, Lhky;->a(Lhky;)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v7

    iget-wide v8, v7, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lhky$3;->a:Lhky;

    iget-wide v4, p0, Lhky$3;->b:J

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v6

    invoke-static {v1, v0, v4, v5, v6}, Lhky;->a(Lhky;Lhjq;JI)V

    .line 209
    .end local v0    # "model":Lhjq;
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    const/4 v1, 0x1

    iget-object v4, p0, Lhky$3;->a:Lhky;

    invoke-static {v4}, Lhky;->a(Lhky;)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v4

    iget v4, v4, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mHasMatched:I

    if-eq v1, v4, :cond_2

    .line 174
    iget-object v1, p0, Lhky$3;->a:Lhky;

    invoke-static {v1}, Lhky;->a(Lhky;)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v1

    const/4 v4, 0x0

    iput v4, v1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mHasMatched:I

    .line 177
    :cond_2
    iget-object v1, p0, Lhky$3;->a:Lhky;

    invoke-static {v1, p1}, Lhky;->b(Lhky;Lcom/amap/api/location/AMapLocation;)F

    move-result v12

    .line 178
    .local v12, "tmpDistance":F
    iget v1, p0, Lhky$3;->d:F

    cmpl-float v1, v1, v12

    if-lez v1, :cond_3

    .line 179
    iput v12, p0, Lhky$3;->d:F

    .line 181
    :cond_3
    iget-object v1, p0, Lhky$3;->a:Lhky;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lhky;->a(Lhky;J)J

    .line 182
    iget-object v1, p0, Lhky$3;->a:Lhky;

    float-to-int v4, v12

    invoke-static {v1, v4}, Lhky;->b(Lhky;I)I

    .line 183
    const-string/jumbo v1, "attendance"

    invoke-static {}, Lhky;->b()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getPositionKilometre:"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lhky$3;->d:F

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lhky$3;->a:Lhky;

    invoke-static {v1, p1}, Lhky;->c(Lhky;Lcom/amap/api/location/AMapLocation;)Z

    move-result v2

    .line 186
    .local v2, "isFuzzyMatch":Z
    iget-object v1, p0, Lhky$3;->a:Lhky;

    invoke-static {v1, v12}, Lhky;->a(Lhky;F)F

    move-result v3

    .line 188
    .local v3, "distance":F
    const/4 v1, 0x1

    iget-object v4, p0, Lhky$3;->a:Lhky;

    invoke-static {v4}, Lhky;->a(Lhky;)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v4

    iget v4, v4, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mFuzzyMatch:I

    if-eq v1, v4, :cond_4

    .line 189
    iget-object v1, p0, Lhky$3;->a:Lhky;

    invoke-static {v1}, Lhky;->a(Lhky;)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v4

    if-eqz v2, :cond_6

    const/4 v1, 0x1

    :goto_1
    iput v1, v4, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mFuzzyMatch:I

    .line 192
    :cond_4
    iget-object v1, p0, Lhky$3;->a:Lhky;

    invoke-static {v1}, Lhky;->a(Lhky;)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v1

    iget v1, v1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mMiniDistance:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v1, v1, v4

    if-nez v1, :cond_7

    .line 193
    iget-object v1, p0, Lhky$3;->a:Lhky;

    invoke-static {v1}, Lhky;->a(Lhky;)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v1

    iput v3, v1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mMiniDistance:F

    .line 200
    :cond_5
    :goto_2
    iget-object v1, p0, Lhky$3;->a:Lhky;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lhky$3;->b:J

    sub-long/2addr v4, v6

    iget-object v6, p0, Lhky$3;->a:Lhky;

    invoke-static {v6}, Lhky;->a(Lhky;)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v6

    iget-wide v6, v6, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v8

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v10

    invoke-static/range {v1 .. v11}, Lhky;->a(Lhky;ZFJJDD)V

    .line 201
    const-string/jumbo v1, "attendance"

    invoke-static {}, Lhky;->b()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "position not match!"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lhky$3;->a:Lhky;

    invoke-static {v7}, Lhky;->a(Lhky;)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v7

    iget-wide v8, v7, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 189
    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    .line 195
    :cond_7
    iget-object v1, p0, Lhky$3;->a:Lhky;

    invoke-static {v1}, Lhky;->a(Lhky;)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v1

    iget v1, v1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mMiniDistance:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_5

    .line 196
    iget-object v1, p0, Lhky$3;->a:Lhky;

    invoke-static {v1}, Lhky;->a(Lhky;)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v1

    iput v3, v1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mMiniDistance:F

    goto :goto_2

    .line 204
    .end local v2    # "isFuzzyMatch":Z
    .end local v3    # "distance":F
    .end local v12    # "tmpDistance":F
    :cond_8
    iget-object v1, p0, Lhky$3;->a:Lhky;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lhky$3;->b:J

    sub-long/2addr v4, v6

    iget-object v6, p0, Lhky$3;->a:Lhky;

    invoke-static {v6}, Lhky;->a(Lhky;)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v6

    iget-wide v6, v6, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v1, v4, v5, v6, v7}, Lhky;->a(Lhky;JJ)V

    .line 206
    const-string/jumbo v1, "attendance"

    invoke-static {}, Lhky;->b()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "position not match:aMapLocation is null!"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lhky$3;->a:Lhky;

    invoke-static {v7}, Lhky;->a(Lhky;)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v7

    iget-wide v8, v7, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final onError(Lcom/amap/api/location/AMapLocation;)V
    .locals 7
    .param p1, "aMapLocation"    # Lcom/amap/api/location/AMapLocation;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x3

    .line 246
    iget-object v0, p0, Lhky$3;->a:Lhky;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lhky$3;->b:J

    sub-long/2addr v2, v4

    iget-object v1, p0, Lhky$3;->a:Lhky;

    invoke-static {v1}, Lhky;->a(Lhky;)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v1

    iget-wide v4, v1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v0, v2, v3, v4, v5}, Lhky;->a(Lhky;JJ)V

    .line 247
    iget-object v0, p0, Lhky$3;->a:Lhky;

    invoke-static {v0}, Lhky;->d(Lhky;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lhky$3;->a:Lhky;

    invoke-static {v0, v6}, Lhky;->c(Lhky;I)V

    .line 251
    :cond_0
    const-string/jumbo v1, "attendance"

    invoke-static {}, Lhky;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v4, "once location fail:"

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget-object v4, p0, Lhky$3;->a:Lhky;

    .line 252
    invoke-static {v4}, Lhky;->a(Lhky;)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v4

    iget-wide v4, v4, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    const-string/jumbo v4, ";errorCode:"

    aput-object v4, v3, v0

    if-nez p1, :cond_1

    const-string/jumbo v0, "aMapLocation==null"

    :goto_0
    aput-object v0, v3, v6

    .line 251
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-void

    .line 252
    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final onSuccess(Lcom/amap/api/location/AMapLocation;)V
    .locals 9
    .param p1, "aMapLocation"    # Lcom/amap/api/location/AMapLocation;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 213
    iget-boolean v2, p0, Lhky$3;->c:Z

    if-nez v2, :cond_0

    .line 214
    if-eqz p1, :cond_0

    .line 215
    iget-object v2, p0, Lhky$3;->a:Lhky;

    invoke-static {v2, p1}, Lhky;->a(Lhky;Lcom/amap/api/location/AMapLocation;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    new-instance v0, Lhjq;

    invoke-direct {v0}, Lhjq;-><init>()V

    .line 217
    .local v0, "model":Lhjq;
    iget-object v2, p0, Lhky$3;->a:Lhky;

    invoke-static {v2}, Lhky;->a(Lhky;)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v2

    iget-wide v2, v2, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lhjq;->e:Ljava/lang/Long;

    .line 218
    iget-object v2, p0, Lhky$3;->a:Lhky;

    invoke-static {v2}, Lhky;->a(Lhky;)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCorpId:Ljava/lang/String;

    iput-object v2, v0, Lhjq;->f:Ljava/lang/String;

    .line 220
    invoke-static {}, Lhkx;->a()Lhkx;

    move-result-object v2

    invoke-virtual {v2}, Lhkx;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lhjq;->g:Ljava/lang/String;

    .line 221
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v0, Lhjq;->a:Ljava/lang/Double;

    .line 222
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v0, Lhjq;->b:Ljava/lang/Double;

    .line 223
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v0, Lhjq;->c:Ljava/lang/Double;

    .line 225
    iget-object v2, p0, Lhky$3;->a:Lhky;

    invoke-static {v2}, Lhky;->a(Lhky;)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v2

    iput v8, v2, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mHasMatched:I

    .line 226
    iput-boolean v8, p0, Lhky$3;->c:Z

    .line 228
    const-string/jumbo v2, "attendance"

    invoke-static {}, Lhky;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "position match:"

    aput-object v6, v4, v5

    iget-object v5, p0, Lhky$3;->a:Lhky;

    invoke-static {v5}, Lhky;->a(Lhky;)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v5

    iget-wide v6, v5, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v2, p0, Lhky$3;->a:Lhky;

    iget-wide v4, p0, Lhky$3;->b:J

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v3

    invoke-static {v2, v0, v4, v5, v3}, Lhky;->a(Lhky;Lhjq;JI)V

    .line 242
    .end local v0    # "model":Lhjq;
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v2, p0, Lhky$3;->a:Lhky;

    invoke-static {v2, p1}, Lhky;->b(Lhky;Lcom/amap/api/location/AMapLocation;)F

    move-result v1

    .line 234
    .local v1, "tmpDistance":F
    iget v2, p0, Lhky$3;->d:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_2

    .line 235
    iput v1, p0, Lhky$3;->d:F

    .line 237
    :cond_2
    iget-object v2, p0, Lhky$3;->a:Lhky;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lhky;->a(Lhky;J)J

    .line 238
    iget-object v2, p0, Lhky$3;->a:Lhky;

    float-to-int v3, v1

    invoke-static {v2, v3}, Lhky;->b(Lhky;I)I

    goto :goto_0
.end method
