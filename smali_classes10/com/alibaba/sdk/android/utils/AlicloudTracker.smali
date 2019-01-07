.class public Lcom/alibaba/sdk/android/utils/AlicloudTracker;
.super Ljava/lang/Object;
.source "AlicloudTracker.java"


# instance fields
.field private a:Lcom/alibaba/sdk/android/utils/c;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/utils/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/utils/AlicloudTracker;->b:Ljava/util/Map;

    .line 20
    iput-object p1, p0, Lcom/alibaba/sdk/android/utils/AlicloudTracker;->a:Lcom/alibaba/sdk/android/utils/c;

    .line 21
    iput-object p2, p0, Lcom/alibaba/sdk/android/utils/AlicloudTracker;->a:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/alibaba/sdk/android/utils/AlicloudTracker;->b:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public removeGlobalProperty(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/utils/AlicloudTracker;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/alibaba/sdk/android/utils/AlicloudTracker;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    const-string/jumbo v0, "AlicloudTracker"

    const-string/jumbo v1, "key is null or key is empty,please check it!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendCustomHit(Ljava/lang/String;JLjava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/utils/AlicloudTracker;->a:Lcom/alibaba/sdk/android/utils/c;

    if-nez v0, :cond_0

    .line 35
    const-string/jumbo v0, "AlicloudTracker"

    const-string/jumbo v1, "dataTracker is null, can not sendCustomHit"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_0
    return-void

    .line 38
    :cond_0
    if-nez p4, :cond_1

    .line 39
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/utils/AlicloudTracker;->b:Ljava/util/Map;

    invoke-interface {p4, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 42
    const-string/jumbo v0, "sdkId"

    iget-object v1, p0, Lcom/alibaba/sdk/android/utils/AlicloudTracker;->a:Ljava/lang/String;

    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string/jumbo v0, "sdkVersion"

    iget-object v1, p0, Lcom/alibaba/sdk/android/utils/AlicloudTracker;->b:Ljava/lang/String;

    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/alibaba/sdk/android/utils/AlicloudTracker;->a:Lcom/alibaba/sdk/android/utils/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/sdk/android/utils/AlicloudTracker;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/alibaba/sdk/android/utils/c;->sendCustomHit(Ljava/lang/String;JLjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendCustomHit(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/alibaba/sdk/android/utils/AlicloudTracker;->sendCustomHit(Ljava/lang/String;JLjava/util/Map;)V

    .line 58
    return-void
.end method

.method public setGlobalProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 68
    iget-object v0, p0, Lcom/alibaba/sdk/android/utils/AlicloudTracker;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/alibaba/sdk/android/utils/AlicloudTracker;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/utils/AlicloudTracker;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_1
    const-string/jumbo v0, "AlicloudTracker"

    const-string/jumbo v1, "key is null or key is empty or value is null,please check it!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
