.class Lcom/laiwang/protocol/android/h$b;
.super Ljava/lang/Object;
.source "SmartHeartBeatInterval.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I

.field final synthetic d:Lcom/laiwang/protocol/android/h;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/h;)V
    .locals 1
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/h;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/laiwang/protocol/android/h$b;->d:Lcom/laiwang/protocol/android/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/h$b;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 308
    const/4 v0, -0x1

    iput v0, p0, Lcom/laiwang/protocol/android/h$b;->b:I

    .line 309
    const/4 v0, 0x0

    iput v0, p0, Lcom/laiwang/protocol/android/h$b;->c:I

    return-void
.end method
