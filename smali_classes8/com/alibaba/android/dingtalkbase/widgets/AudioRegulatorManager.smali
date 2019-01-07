.class public final Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager;
.super Ljava/lang/Object;
.source "AudioRegulatorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$b;,
        Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$a;,
        Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$c;,
        Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;-><init>(Landroid/content/Context;)V

    .line 30
    .local v0, "regulator":Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;
    invoke-static {}, Lcms;->a()I

    move-result v2

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 31
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$b;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$b;-><init>()V

    .line 1053
    .local v1, "setter":Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$c;
    :goto_0
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;->a:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$c;

    .line 36
    return-object v0

    .line 33
    .end local v1    # "setter":Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$c;
    :cond_0
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$a;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$a;-><init>()V

    .restart local v1    # "setter":Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$c;
    goto :goto_0
.end method
