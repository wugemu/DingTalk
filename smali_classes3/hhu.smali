.class public final Lhhu;
.super Ljava/lang/Object;
.source "ViewPagerFragmentFactory.java"

# interfaces
.implements Lhhs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhhs",
        "<",
        "Lcom/alibaba/lightapp/runtime/config/TabConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    .locals 1

    .prologue
    .line 8
    check-cast p1, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;

    .line 1011
    invoke-static {p1}, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a(Lcom/alibaba/lightapp/runtime/config/TabConfiguration;)Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;

    move-result-object v0

    .line 8
    return-object v0
.end method
