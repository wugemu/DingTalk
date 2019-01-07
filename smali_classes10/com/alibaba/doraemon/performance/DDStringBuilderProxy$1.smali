.class final Lcom/alibaba/doraemon/performance/DDStringBuilderProxy$1;
.super Ljava/lang/Object;
.source "DDStringBuilderProxy.java"

# interfaces
.implements Lcom/alibaba/doraemon/performance/SoftReferenceProxy$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->makeSureSoftProxy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/doraemon/performance/SoftReferenceProxy$Creator",
        "<",
        "Lcom/alibaba/doraemon/performance/DDStringBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create()Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 50
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    const/16 v1, 0x60

    invoke-direct {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>(I)V

    return-object v0
.end method

.method public final bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy$1;->create()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final validate(Lcom/alibaba/doraemon/performance/DDStringBuilder;)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .locals 2
    .param p1, "reference"    # Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, "ret":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->setShared(Z)V

    .line 61
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .end local v0    # "ret":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/16 v1, 0x60

    invoke-direct {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>(I)V

    .line 64
    .restart local v0    # "ret":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_0
    return-object v0
.end method

.method public final bridge synthetic validate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    check-cast p1, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy$1;->validate(Lcom/alibaba/doraemon/performance/DDStringBuilder;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    return-object v0
.end method
