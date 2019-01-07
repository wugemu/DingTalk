.class final Lcom/alibaba/android/user/external/manage/LabelSettingActivity$3;
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
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/user/external/manage/LabelSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/manage/LabelSettingActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$3;->b:Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$3;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 261
    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$3;->b:Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->a(Lcom/alibaba/android/user/external/manage/LabelSettingActivity;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 272
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$3;->a:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$3;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 266
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$3;->b:Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->a(Lcom/alibaba/android/user/external/manage/LabelSettingActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lfnn;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcmu;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$3;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 269
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;>;"
    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$3;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 270
    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$3;->b:Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->a(Lcom/alibaba/android/user/external/manage/LabelSettingActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lfnn;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 1052
    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Lcmu;->a(Ljava/lang/String;Ljava/io/Serializable;I)V

    goto :goto_0
.end method
