.class final Lcom/alibaba/android/user/devset/DevSettingActivity$2;
.super Ljava/lang/Object;
.source "DevSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/devset/DevSettingActivity;->onClick(Landroid/view/View;)V
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
    .line 385
    iput-object p1, p0, Lcom/alibaba/android/user/devset/DevSettingActivity$2;->a:Lcom/alibaba/android/user/devset/DevSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 388
    iget-object v1, p0, Lcom/alibaba/android/user/devset/DevSettingActivity$2;->a:Lcom/alibaba/android/user/devset/DevSettingActivity;

    invoke-static {v1}, Lcnb;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "advertisingId":Ljava/lang/String;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/devset/DevSettingActivity$2$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/user/devset/DevSettingActivity$2$1;-><init>(Lcom/alibaba/android/user/devset/DevSettingActivity$2;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 395
    return-void
.end method
