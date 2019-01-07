.class final Lcom/alibaba/android/user/devset/DevSettingActivity$1;
.super Ljava/lang/Object;
.source "DevSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/devset/DevSettingActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 312
    iput-object p1, p0, Lcom/alibaba/android/user/devset/DevSettingActivity$1;->a:Lcom/alibaba/android/user/devset/DevSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/alibaba/android/user/devset/DevSettingActivity$1;->a:Lcom/alibaba/android/user/devset/DevSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/devset/DevSettingActivity;->finish()V

    .line 316
    return-void
.end method
