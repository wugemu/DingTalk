.class final Layv$7;
.super Ljava/lang/Object;
.source "SingleChatTaskController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layv;->d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
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
    .line 234
    iput-object p1, p0, Layv$7;->b:Layv;

    iput-object p2, p0, Layv$7;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 238
    iget-object v0, p0, Layv$7;->b:Layv;

    invoke-static {v0}, Layv;->g(Layv;)Layv$i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Layv$7;->b:Layv;

    invoke-static {v0}, Layv;->g(Layv;)Layv$i;

    move-result-object v3

    iget-object v0, p0, Layv$7;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v0

    .line 1109
    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 239
    iget-object v0, p0, Layv$7;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 240
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->af()Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    move-result-object v0

    sget-object v6, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->NORMAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    if-ne v0, v6, :cond_1

    move v0, v1

    :goto_0
    iget-object v6, p0, Layv$7;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 241
    invoke-virtual {v6}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ab()Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    move-result-object v6

    sget-object v7, Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;->Unconfirmed:Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    if-ne v6, v7, :cond_2

    .line 239
    :goto_1
    invoke-interface {v3, v4, v5, v0, v1}, Layv$i;->a(JZZ)V

    .line 243
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 240
    goto :goto_0

    :cond_2
    move v1, v2

    .line 241
    goto :goto_1
.end method
