.class final Lbjx$1$1$1;
.super Ljava/lang/Object;
.source "DingParentUtil.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbjx$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbjx$1$1;


# direct methods
.method constructor <init>(Lbjx$1$1;)V
    .locals 0
    .param p1, "this$1"    # Lbjx$1$1;

    .prologue
    .line 105
    iput-object p1, p0, Lbjx$1$1$1;->a:Lbjx$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 105
    check-cast p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1108
    invoke-static {p1}, Lbkh;->G(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lbjx;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Ljava/lang/String;)V

    .line 1109
    iget-object v0, p0, Lbjx$1$1$1;->a:Lbjx$1$1;

    iget-object v0, v0, Lbjx$1$1;->a:Lbjx$1;

    iget-object v0, v0, Lbjx$1;->b:Lcma;

    invoke-static {}, Lbjx;->a()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lbjx$1$1$1;->a:Lbjx$1$1;

    iget-object v2, v2, Lbjx$1$1;->a:Lbjx$1;

    iget-object v2, v2, Lbjx$1;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcnu;->a(Lcma;Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 118
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingUtil]getParentDingName retrieveDingById failed, code:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lbjx$1$1$1;->a:Lbjx$1$1;

    iget-object v0, v0, Lbjx$1$1;->a:Lbjx$1;

    iget-object v0, v0, Lbjx$1;->b:Lcma;

    invoke-static {v0, p1, p2}, Lcnu;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 114
    return-void
.end method
