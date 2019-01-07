.class public final Ldmp$1;
.super Lcmi;
.source "IndustryRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldmp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ldmq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;


# direct methods
.method public constructor <init>(Lcma;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Ldmp$1;->a:Lcma;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 41
    iget-object v0, p0, Ldmp$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Ldmp$1;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 31
    check-cast p1, Ldmq;

    .line 1034
    iget-object v0, p0, Ldmp$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p0, Ldmp$1;->a:Lcma;

    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupSimpleInfoObject;->fromIDL(Ldmq;)Lcom/alibaba/android/dingtalkim/industry/IndustryGroupSimpleInfoObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 31
    :cond_0
    return-void
.end method
