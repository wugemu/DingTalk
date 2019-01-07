.class final Lcom/alibaba/android/user/devset/DevSettingActivity$2$1;
.super Ljava/lang/Object;
.source "DevSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/devset/DevSettingActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/user/devset/DevSettingActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/devset/DevSettingActivity$2;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/devset/DevSettingActivity$2;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/alibaba/android/user/devset/DevSettingActivity$2$1;->b:Lcom/alibaba/android/user/devset/DevSettingActivity$2;

    iput-object p2, p0, Lcom/alibaba/android/user/devset/DevSettingActivity$2$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/user/devset/DevSettingActivity$2$1;->b:Lcom/alibaba/android/user/devset/DevSettingActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/devset/DevSettingActivity$2;->a:Lcom/alibaba/android/user/devset/DevSettingActivity;

    sget v1, Lezg$h;->tv_advertising_id:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/devset/DevSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/devset/DevSettingActivity$2$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    return-void
.end method
