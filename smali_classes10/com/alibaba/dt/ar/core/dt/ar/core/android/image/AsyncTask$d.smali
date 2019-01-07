.class abstract Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$d;
.super Ljava/lang/Object;
.source "AsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TParams;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 679
    .local p0, "this":Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$d;, "Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$d<TParams;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 679
    .local p0, "this":Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$d;, "Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$d<TParams;TResult;>;"
    invoke-direct {p0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$d;-><init>()V

    return-void
.end method
