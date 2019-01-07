.class final Lbbo$12;
.super Ljava/lang/Object;
.source "DingDataCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic b:Lbch;

.field final synthetic c:Lbbo;


# direct methods
.method constructor <init>(Lbbo;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lbch;)V
    .locals 0
    .param p1, "this$0"    # Lbbo;

    .prologue
    .line 640
    iput-object p1, p0, Lbbo$12;->c:Lbbo;

    iput-object p2, p0, Lbbo$12;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iput-object p3, p0, Lbbo$12;->b:Lbch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 643
    iget-object v0, p0, Lbbo$12;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbbo$12;->b:Lbch;

    iget-object v0, v0, Lbch;->b:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lbbo$12;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v1, p0, Lbbo$12;->b:Lbch;

    iget-object v1, v1, Lbch;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    iget-object v1, p0, Lbbo$12;->b:Lbch;

    iget-object v1, v1, Lbch;->c:Ljava/lang/String;

    .line 2273
    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->R:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 646
    :cond_0
    return-void
.end method
