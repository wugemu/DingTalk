.class final Lbbt$3;
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
        "Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;",
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
    .line 92
    iput-object p1, p0, Lbbt$3;->b:Lbbt;

    iput-object p2, p0, Lbbt$3;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-direct {p0}, Lckm$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x2

    .line 92
    check-cast p1, Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    .line 1095
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;->Unconfirmed:Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    if-eq p1, v0, :cond_0

    .line 1097
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "DingFloatWindowCenter onDataChanged confirmed, dingId="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lbbt$3;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 1098
    invoke-static {}, Lcjq;->a()Lcjq;

    move-result-object v0

    iget-object v1, p0, Lbbt$3;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcjq;->a(ILjava/lang/String;)V

    .line 92
    :cond_0
    return-void
.end method
