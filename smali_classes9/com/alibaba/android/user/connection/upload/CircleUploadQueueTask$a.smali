.class final Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask$a;
.super Ljava/lang/Object;
.source "CircleUploadQueueTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;-><init>(B)V

    sput-object v0, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask$a;->a:Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask$a;->a:Lcom/alibaba/android/user/connection/upload/CircleUploadQueueTask;

    return-object v0
.end method
