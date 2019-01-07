.class final Laii$e;
.super Ljava/lang/Object;
.source "AlimeiThreadRunner.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laii;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Laii$d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Laii;


# direct methods
.method constructor <init>(Laii;)V
    .locals 0
    .param p1, "this$0"    # Laii;

    .prologue
    .line 330
    iput-object p1, p0, Laii$e;->a:Laii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 330
    check-cast p1, Laii$d;

    check-cast p2, Laii$d;

    .line 1446
    iget-object v0, p1, Laii$d;->e:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    .line 1333
    if-nez v0, :cond_0

    .line 2446
    iget-object v0, p2, Laii$d;->e:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    .line 1333
    if-nez v0, :cond_0

    .line 1334
    const/4 v0, 0x0

    .line 1338
    :goto_0
    return v0

    .line 3446
    :cond_0
    iget-object v0, p1, Laii$d;->e:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    .line 1335
    if-nez v0, :cond_1

    .line 1336
    const/4 v0, -0x1

    goto :goto_0

    .line 4446
    :cond_1
    iget-object v0, p2, Laii$d;->e:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    .line 1337
    if-nez v0, :cond_2

    .line 1338
    const/4 v0, 0x1

    goto :goto_0

    .line 5446
    :cond_2
    iget-object v0, p1, Laii$d;->e:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    .line 6446
    iget-object v1, p2, Laii$d;->e:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    .line 1339
    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    .line 330
    goto :goto_0
.end method
