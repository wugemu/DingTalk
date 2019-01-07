.class final Layv$3;
.super Ljava/lang/Object;
.source "SingleChatTaskController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layv;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
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
    .line 167
    iput-object p1, p0, Layv$3;->b:Layv;

    iput-object p2, p0, Layv$3;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

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
    .line 170
    iget-object v0, p0, Layv$3;->b:Layv;

    invoke-static {v0}, Layv;->c(Layv;)Layv$f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Layv$3;->b:Layv;

    invoke-static {v0}, Layv;->c(Layv;)Layv$f;

    move-result-object v0

    iget-object v1, p0, Layv$3;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    .line 1109
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 171
    iget-object v1, p0, Layv$3;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->X()J

    move-result-wide v4

    invoke-interface {v0, v2, v3, v4, v5}, Layv$f;->a(JJ)V

    .line 173
    :cond_0
    return-void
.end method
