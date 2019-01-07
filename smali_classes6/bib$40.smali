.class final Lbib$40;
.super Lckm$a;
.source "BasicDingViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lckm$a",
        "<",
        "Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbib;


# direct methods
.method constructor <init>(Lbib;)V
    .locals 0
    .param p1, "this$0"    # Lbib;

    .prologue
    .line 249
    iput-object p1, p0, Lbib$40;->a:Lbib;

    invoke-direct {p0}, Lckm$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 249
    check-cast p1, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    .line 1252
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[BasicDingViewHolder]mSelfFinishStatusObserver finishStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 1253
    iget-object v0, p0, Lbib$40;->a:Lbib;

    invoke-static {v0}, Lbib;->d(Lbib;)V

    .line 1254
    iget-object v0, p0, Lbib$40;->a:Lbib;

    invoke-static {v0}, Lbib;->f(Lbib;)V

    .line 249
    return-void
.end method

.method protected final a()Z
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x1

    return v0
.end method
