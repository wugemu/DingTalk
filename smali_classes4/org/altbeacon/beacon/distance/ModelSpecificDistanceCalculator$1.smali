.class Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator$1;
.super Ljava/lang/Object;
.source "ModelSpecificDistanceCalculator.java"

# interfaces
.implements Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater$CompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->requestModelMapFromWeb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;


# direct methods
.method constructor <init>(Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;)V
    .locals 0
    .param p1, "this$0"    # Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;

    .prologue
    .line 233
    iput-object p1, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator$1;->this$0:Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 7
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Exception;
    .param p3, "code"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 236
    if-eqz p2, :cond_1

    .line 237
    const-string/jumbo v1, "ModelSpecificDistanceCalculator"

    const-string/jumbo v2, "Cannot updated distance models from online database at %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v5

    iget-object v4, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator$1;->this$0:Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;

    .line 238
    invoke-static {v4}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->access$000(Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 237
    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    const/16 v1, 0xc8

    if-eq p3, v1, :cond_2

    .line 241
    const-string/jumbo v1, "ModelSpecificDistanceCalculator"

    const-string/jumbo v2, "Cannot updated distance models from online database at %s due to HTTP status code %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator$1;->this$0:Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;

    .line 242
    invoke-static {v4}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->access$000(Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 241
    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 245
    :cond_2
    const-string/jumbo v1, "ModelSpecificDistanceCalculator"

    const-string/jumbo v2, "Successfully downloaded distance models from online database"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    :try_start_0
    iget-object v1, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator$1;->this$0:Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;

    invoke-virtual {v1, p1}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->buildModelMapWithLock(Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator$1;->this$0:Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;

    invoke-static {v1, p1}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->access$100(Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator$1;->this$0:Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;

    invoke-static {v1}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->access$200(Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;)Z

    .line 251
    iget-object v1, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator$1;->this$0:Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;

    iget-object v2, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator$1;->this$0:Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;

    iget-object v3, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator$1;->this$0:Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;

    invoke-static {v3}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->access$400(Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;)Lorg/altbeacon/beacon/distance/AndroidModel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->findCalculatorForModelWithLock(Lorg/altbeacon/beacon/distance/AndroidModel;)Lorg/altbeacon/beacon/distance/DistanceCalculator;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->access$302(Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;Lorg/altbeacon/beacon/distance/DistanceCalculator;)Lorg/altbeacon/beacon/distance/DistanceCalculator;

    .line 252
    const-string/jumbo v1, "ModelSpecificDistanceCalculator"

    const-string/jumbo v2, "Successfully updated distance model with latest from online database"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v1, "ModelSpecificDistanceCalculator"

    const-string/jumbo v2, "Cannot parse json from downloaded distance model"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
