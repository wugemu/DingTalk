.class final Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2$1;
.super Ljava/lang/Object;
.source "LabelSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2$1;->b:Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;

    iput-object p2, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2$1;->a:Ljava/util/List;

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
    .line 210
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2$1;->b:Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;->a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->dismissLoadingDialog()V

    .line 211
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2$1;->b:Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;->a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2$1;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->b(Lcom/alibaba/android/user/external/manage/LabelSettingActivity;Ljava/util/List;)V

    .line 212
    invoke-static {}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "showLabels from local"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    return-void
.end method
