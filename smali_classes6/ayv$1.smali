.class final Layv$1;
.super Ljava/lang/Object;
.source "SingleChatTaskController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layv;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic b:Layv;


# direct methods
.method constructor <init>(Layv;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 0
    .param p1, "this$0"    # Layv;

    .prologue
    .line 127
    iput-object p1, p0, Layv$1;->b:Layv;

    iput-object p2, p0, Layv$1;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 130
    iget-object v1, p0, Layv$1;->b:Layv;

    invoke-static {v1}, Layv;->a(Layv;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layv$b;

    .line 131
    .local v0, "listener":Layv$b;
    if-eqz v0, :cond_0

    .line 132
    iget-object v1, p0, Layv$1;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    .line 1109
    const-wide/16 v4, 0x0

    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 132
    iget-object v1, p0, Layv$1;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 133
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ab()Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    move-result-object v1

    sget-object v3, Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;->Unconfirmed:Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    .line 132
    :goto_1
    invoke-interface {v0, v4, v5, v1}, Layv$b;->a(JZ)V

    goto :goto_0

    .line 133
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 136
    .end local v0    # "listener":Layv$b;
    :cond_2
    return-void
.end method
