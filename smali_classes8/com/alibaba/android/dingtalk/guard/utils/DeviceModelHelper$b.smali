.class public final Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$b;
.super Ljava/lang/Object;
.source "DeviceModelHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:J

.field public b:Landroid/content/SharedPreferences;

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic d:Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper;Landroid/content/Context;J)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "uid"    # J

    .prologue
    const/4 v4, 0x0

    .line 152
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$b;->d:Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-wide p3, p0, Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$b;->a:J

    .line 154
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "device"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/IOUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "device_model_cache_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$b;->b:Landroid/content/SharedPreferences;

    .line 158
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$b;->c:Ljava/util/Map;

    .line 159
    return-void
.end method

.method public synthetic constructor <init>(Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper;Landroid/content/Context;JB)V
    .locals 1
    .param p1, "x0"    # Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # J

    .prologue
    .line 146
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$b;-><init>(Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper;Landroid/content/Context;J)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$b;->c:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    return-void
.end method
