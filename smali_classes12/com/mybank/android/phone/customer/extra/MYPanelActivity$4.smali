.class final Lcom/mybank/android/phone/customer/extra/MYPanelActivity$4;
.super Ljava/lang/Object;
.source "MYPanelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mybank/android/phone/customer/extra/MYPanelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mybank/android/phone/customer/extra/MYPanelActivity;


# direct methods
.method constructor <init>(Lcom/mybank/android/phone/customer/extra/MYPanelActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mybank/android/phone/customer/extra/MYPanelActivity;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity$4;->a:Lcom/mybank/android/phone/customer/extra/MYPanelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/mybank/android/phone/customer/extra/MYPanelActivity$4;->a:Lcom/mybank/android/phone/customer/extra/MYPanelActivity;

    invoke-static {v0}, Lcom/mybank/android/phone/customer/extra/MYPanelActivity;->f(Lcom/mybank/android/phone/customer/extra/MYPanelActivity;)Ljfs;

    move-result-object v0

    invoke-virtual {v0}, Ljfs;->a()V

    .line 364
    invoke-static {}, Lcom/mybank/android/phone/common/service/api/ServiceManager;->release()V

    .line 365
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 366
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 367
    return-void
.end method
