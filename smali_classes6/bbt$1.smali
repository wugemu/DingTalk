.class final Lbbt$1;
.super Ljava/lang/Object;
.source "DingFloatWindowCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Iterable;

.field final synthetic b:Lbbt;


# direct methods
.method constructor <init>(Lbbt;Ljava/lang/Iterable;)V
    .locals 0
    .param p1, "this$0"    # Lbbt;

    .prologue
    .line 55
    iput-object p1, p0, Lbbt$1;->b:Lbbt;

    iput-object p2, p0, Lbbt$1;->a:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 58
    iget-object v1, p0, Lbbt$1;->a:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 59
    .local v0, "ding":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 60
    invoke-static {}, Lcjq;->a()Lcjq;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcjq;->a(ILjava/lang/String;)V

    .line 61
    invoke-static {}, Lcjq;->a()Lcjq;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcjq;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 64
    .end local v0    # "ding":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :cond_1
    return-void
.end method
