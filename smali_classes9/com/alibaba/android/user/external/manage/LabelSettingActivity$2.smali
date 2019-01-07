.class final Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;
.super Ljava/lang/Object;
.source "LabelSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/manage/LabelSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/manage/LabelSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;->a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 204
    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;->a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->a(Lcom/alibaba/android/user/external/manage/LabelSettingActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lfnn;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcmu;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 205
    .local v0, "localList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2$1;-><init>(Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 217
    :cond_0
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2$2;-><init>(Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;)V

    const-class v3, Lcma;

    iget-object v4, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;->a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    .line 249
    .local v6, "apiEventListener":Lcma;
    invoke-static {}, Lfar;->a()Lfar;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;->a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->a(Lcom/alibaba/android/user/external/manage/LabelSettingActivity;)J

    move-result-wide v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual/range {v1 .. v6}, Lfar;->a(JIZLcma;)V

    .line 250
    return-void
.end method
