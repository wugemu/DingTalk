.class final Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$a;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;

.field final b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field


# direct methods
.method varargs constructor <init>(Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "task"    # Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 688
    .local p0, "this":Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$a;, "Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$a<TData;>;"
    .local p2, "data":[Ljava/lang/Object;, "[TData;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 689
    iput-object p1, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$a;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask;

    .line 690
    iput-object p2, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/AsyncTask$a;->b:[Ljava/lang/Object;

    .line 691
    return-void
.end method
