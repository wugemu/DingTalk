.class public Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;
.super Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray;
.source "FCPlansObject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray",
        "<",
        "Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x12e7529767fc747dL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/collection/SimpleArray;-><init>()V

    return-void
.end method


# virtual methods
.method public getCorpId()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 18
    :cond_0
    const-string/jumbo v0, ""

    .line 20
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;->getCorpId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getWorkDate()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 26
    :cond_0
    const-string/jumbo v0, ""

    .line 28
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;->getWorkDate()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
