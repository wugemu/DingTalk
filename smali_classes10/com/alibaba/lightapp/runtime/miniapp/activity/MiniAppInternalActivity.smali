.class public Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInternalActivity;
.super Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;
.source "MiniAppInternalActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
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
    .line 16
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    return-void
.end method
