.class Lcom/alibaba/lightapp/runtime/plugin/biz/Map$1;
.super Ljava/lang/Object;
.source "Map.java"

# interfaces
.implements Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Map;->searchRoute(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Map;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Map;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Map;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Map$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Map;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Map$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBusRouteSearched(Lcom/amap/api/services/route/BusRouteResult;I)V
    .locals 6
    .param p1, "busRouteResult"    # Lcom/amap/api/services/route/BusRouteResult;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 148
    const/16 v3, 0x3e8

    if-ne p2, v3, :cond_0

    .line 149
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/services/route/BusRouteResult;->getPaths()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/services/route/BusRouteResult;->getPaths()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 150
    invoke-virtual {p1}, Lcom/amap/api/services/route/BusRouteResult;->getPaths()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/BusPath;

    .line 151
    .local v0, "busPath":Lcom/amap/api/services/route/BusPath;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 153
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "distance"

    invoke-virtual {v0}, Lcom/amap/api/services/route/BusPath;->getDistance()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 154
    const-string/jumbo v3, "time"

    invoke-virtual {v0}, Lcom/amap/api/services/route/BusPath;->getDuration()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Map$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Map;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Map$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Map;->access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/Map;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 163
    .end local v0    # "busPath":Lcom/amap/api/services/route/BusPath;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 155
    .restart local v0    # "busPath":Lcom/amap/api/services/route/BusPath;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 162
    .end local v0    # "busPath":Lcom/amap/api/services/route/BusPath;
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Map$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Map;

    const-string/jumbo v4, "no result"

    invoke-static {p2, v4}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Map$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Map;->access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/Map;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onDriveRouteSearched(Lcom/amap/api/services/route/DriveRouteResult;I)V
    .locals 6
    .param p1, "driveRouteResult"    # Lcom/amap/api/services/route/DriveRouteResult;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 167
    const/16 v3, 0x3e8

    if-ne p2, v3, :cond_0

    .line 168
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/services/route/DriveRouteResult;->getPaths()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/services/route/DriveRouteResult;->getPaths()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 169
    invoke-virtual {p1}, Lcom/amap/api/services/route/DriveRouteResult;->getPaths()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/DrivePath;

    .line 170
    .local v0, "drivePath":Lcom/amap/api/services/route/DrivePath;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 172
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "distance"

    invoke-virtual {v0}, Lcom/amap/api/services/route/DrivePath;->getDistance()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 173
    const-string/jumbo v3, "time"

    invoke-virtual {v0}, Lcom/amap/api/services/route/DrivePath;->getDuration()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Map$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Map;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Map$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Map;->access$200(Lcom/alibaba/lightapp/runtime/plugin/biz/Map;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 182
    .end local v0    # "drivePath":Lcom/amap/api/services/route/DrivePath;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 174
    .restart local v0    # "drivePath":Lcom/amap/api/services/route/DrivePath;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 181
    .end local v0    # "drivePath":Lcom/amap/api/services/route/DrivePath;
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Map$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Map;

    const-string/jumbo v4, "no result"

    invoke-static {p2, v4}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Map$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Map;->access$300(Lcom/alibaba/lightapp/runtime/plugin/biz/Map;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onRideRouteSearched(Lcom/amap/api/services/route/RideRouteResult;I)V
    .locals 6
    .param p1, "rideRouteResult"    # Lcom/amap/api/services/route/RideRouteResult;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 206
    const/16 v3, 0x3e8

    if-ne p2, v3, :cond_0

    .line 207
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/services/route/RideRouteResult;->getPaths()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/services/route/RideRouteResult;->getPaths()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 208
    invoke-virtual {p1}, Lcom/amap/api/services/route/RideRouteResult;->getPaths()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/services/route/RidePath;

    .line 209
    .local v2, "ridePath":Lcom/amap/api/services/route/RidePath;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 211
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "distance"

    invoke-virtual {v2}, Lcom/amap/api/services/route/RidePath;->getDistance()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 212
    const-string/jumbo v3, "time"

    invoke-virtual {v2}, Lcom/amap/api/services/route/RidePath;->getDuration()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Map$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Map;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Map$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v3, v1, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Map;->access$600(Lcom/alibaba/lightapp/runtime/plugin/biz/Map;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 222
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "ridePath":Lcom/amap/api/services/route/RidePath;
    :goto_1
    return-void

    .line 213
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "ridePath":Lcom/amap/api/services/route/RidePath;
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 220
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "ridePath":Lcom/amap/api/services/route/RidePath;
    :cond_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Map$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Map;

    const-string/jumbo v4, "no result"

    invoke-static {p2, v4}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Map$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Map;->access$700(Lcom/alibaba/lightapp/runtime/plugin/biz/Map;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onWalkRouteSearched(Lcom/amap/api/services/route/WalkRouteResult;I)V
    .locals 6
    .param p1, "walkRouteResult"    # Lcom/amap/api/services/route/WalkRouteResult;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 186
    const/16 v3, 0x3e8

    if-ne p2, v3, :cond_0

    .line 187
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/services/route/WalkRouteResult;->getPaths()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/services/route/WalkRouteResult;->getPaths()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 188
    invoke-virtual {p1}, Lcom/amap/api/services/route/WalkRouteResult;->getPaths()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/services/route/WalkPath;

    .line 189
    .local v2, "walkPath":Lcom/amap/api/services/route/WalkPath;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 191
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "distance"

    invoke-virtual {v2}, Lcom/amap/api/services/route/WalkPath;->getDistance()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 192
    const-string/jumbo v3, "time"

    invoke-virtual {v2}, Lcom/amap/api/services/route/WalkPath;->getDuration()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Map$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Map;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Map$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v3, v1, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Map;->access$400(Lcom/alibaba/lightapp/runtime/plugin/biz/Map;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 201
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "walkPath":Lcom/amap/api/services/route/WalkPath;
    :goto_1
    return-void

    .line 193
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "walkPath":Lcom/amap/api/services/route/WalkPath;
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 200
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "walkPath":Lcom/amap/api/services/route/WalkPath;
    :cond_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Map$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Map;

    const-string/jumbo v4, "no result"

    invoke-static {p2, v4}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Map$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Map;->access$500(Lcom/alibaba/lightapp/runtime/plugin/biz/Map;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1
.end method
