.class final Lbbt$4;
.super Lckm$a;
.source "DingFloatWindowCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbt;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lckm$a",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic b:Lbbt;


# direct methods
.method constructor <init>(Lbbt;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 0
    .param p1, "this$0"    # Lbbt;

    .prologue
    .line 102
    iput-object p1, p0, Lbbt$4;->b:Lbbt;

    iput-object p2, p0, Lbbt$4;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

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
    .line 102
    check-cast p1, Ljava/lang/Boolean;

    .line 1105
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1107
    invoke-static {}, Lcjq;->a()Lcjq;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lbbt$4;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcjq;->a(ILjava/lang/String;)V

    .line 102
    :cond_0
    return-void
.end method
