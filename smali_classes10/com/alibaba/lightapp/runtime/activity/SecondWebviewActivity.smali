.class public Lcom/alibaba/lightapp/runtime/activity/SecondWebviewActivity;
.super Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;
.source "SecondWebviewActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    return-void
.end method
