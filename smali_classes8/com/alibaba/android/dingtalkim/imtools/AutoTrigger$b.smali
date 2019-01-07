.class final Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;
.super Ljava/lang/Object;
.source "AutoTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/util/Timer;

.field c:Ljava/util/TimerTask;

.field d:Z

.field e:J

.field f:J

.field g:J


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->a:Ljava/lang/Object;

    .line 42
    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->b:Ljava/util/Timer;

    .line 43
    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->c:Ljava/util/TimerTask;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->d:Z

    .line 45
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->e:J

    .line 46
    iput-wide v2, p0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->f:J

    .line 47
    iput-wide v2, p0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;->g:J

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$b;-><init>()V

    return-void
.end method
