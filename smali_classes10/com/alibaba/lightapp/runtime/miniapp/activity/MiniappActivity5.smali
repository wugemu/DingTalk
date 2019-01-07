.class public Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity5;
.super Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;
.source "MiniappActivity5.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    return-void
.end method
