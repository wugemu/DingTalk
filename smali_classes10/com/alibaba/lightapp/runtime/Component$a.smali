.class public Lcom/alibaba/lightapp/runtime/Component$a;
.super Ljava/lang/Object;
.source "Component.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/Component;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alibaba/lightapp/runtime/Component;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mComponent:Lcom/alibaba/lightapp/runtime/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    .local p0, "this":Lcom/alibaba/lightapp/runtime/Component$a;, "Lcom/alibaba/lightapp/runtime/Component$a<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindComponent(Lcom/alibaba/lightapp/runtime/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/alibaba/lightapp/runtime/Component$a;, "Lcom/alibaba/lightapp/runtime/Component$a<TT;>;"
    .local p1, "component":Lcom/alibaba/lightapp/runtime/Component;, "TT;"
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/Component$a;->mComponent:Lcom/alibaba/lightapp/runtime/Component;

    .line 46
    return-void
.end method

.method protected getComponent()Lcom/alibaba/lightapp/runtime/Component;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/alibaba/lightapp/runtime/Component$a;, "Lcom/alibaba/lightapp/runtime/Component$a<TT;>;"
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/Component$a;->mComponent:Lcom/alibaba/lightapp/runtime/Component;

    return-object v0
.end method

.method public unbindComponent(Lcom/alibaba/lightapp/runtime/Component;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/alibaba/lightapp/runtime/Component$a;, "Lcom/alibaba/lightapp/runtime/Component$a<TT;>;"
    .local p1, "Component":Lcom/alibaba/lightapp/runtime/Component;, "TT;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/Component$a;->mComponent:Lcom/alibaba/lightapp/runtime/Component;

    .line 50
    return-void
.end method
