.class public final Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager$a;
.super Ljava/lang/Object;
.source "EncryptDegradeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 208
    new-instance v0, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;-><init>(B)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager$a;->a:Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager$a;->a:Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;

    return-object v0
.end method
