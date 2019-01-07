.class final Lbbu$5;
.super Lckm$a;
.source "DingPopWindowCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbu;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;J)V
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

.field final synthetic b:Lbbu;


# direct methods
.method constructor <init>(Lbbu;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 0
    .param p1, "this$0"    # Lbbu;

    .prologue
    .line 105
    iput-object p1, p0, Lbbu$5;->b:Lbbu;

    iput-object p2, p0, Lbbu$5;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

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
    .line 105
    check-cast p1, Ljava/lang/Boolean;

    .line 1108
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1110
    invoke-static {}, Lcmw;->a()Lcmv;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;->DING_ARRIVED:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    iget-object v2, p0, Lbbu$5;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcmv;->a(Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;Ljava/lang/String;)V

    .line 105
    :cond_0
    return-void
.end method
