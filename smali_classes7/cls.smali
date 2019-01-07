.class public Lcls;
.super Ljava/lang/Object;
.source "OfflineTaskEngine.java"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcls;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcls;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo$TaskStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "taskIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lclt;->a(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lclr;->a()Lclr;

    move-result-object v0

    invoke-virtual {v0}, Lclr;->b()V

    .line 41
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .param p0, "group"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "start "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-static {}, Lclr;->a()Lclr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lclr;->a(Ljava/lang/String;)V

    .line 52
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v0, v1, :cond_0

    .line 53
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "OfflineTaskEngine start error, invalid group"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->a()Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->c()V

    .line 56
    return-void
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Lclr;->a()Lclr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lclr;->a(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->a()Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->d()V

    .line 66
    return-void
.end method
