.class public final Ljxh$a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljxh$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/xmpush/thrift/f;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field final d:Ljava/lang/Runnable;

.field final synthetic e:Ljxh$a;


# direct methods
.method public constructor <init>(Ljxh$a;)V
    .locals 2

    iput-object p1, p0, Ljxh$a$a;->e:Ljxh$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Ljxh$a$a;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxh$a$a;->b:Ljava/util/ArrayList;

    new-instance v0, Ljyq;

    invoke-direct {v0, p0}, Ljyq;-><init>(Ljxh$a$a;)V

    iput-object v0, p0, Ljxh$a$a;->d:Ljava/lang/Runnable;

    return-void
.end method
