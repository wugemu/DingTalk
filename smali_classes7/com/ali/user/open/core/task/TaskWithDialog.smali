.class public abstract Lcom/ali/user/open/core/task/TaskWithDialog;
.super Lcom/ali/user/open/core/task/AbsAsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/ali/user/open/core/task/AbsAsyncTask",
        "<TParams;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field protected activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/open/core/task/AbsAsyncTask;-><init>()V

    iput-object p1, p0, Lcom/ali/user/open/core/task/TaskWithDialog;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected doFinally()V
    .locals 0

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
