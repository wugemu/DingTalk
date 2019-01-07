.class final Lcom/alibaba/android/user/devset/DevSettingActivity$3;
.super Ljava/lang/Object;
.source "DevSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/devset/DevSettingActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/devset/DevSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/devset/DevSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/devset/DevSettingActivity;

    .prologue
    .line 776
    iput-object p1, p0, Lcom/alibaba/android/user/devset/DevSettingActivity$3;->a:Lcom/alibaba/android/user/devset/DevSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 780
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    :goto_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 785
    return-void

    .line 781
    :catch_0
    move-exception v0

    .line 782
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
