.class final Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3;
.super Ljava/lang/Object;
.source "GroupRingSettingActivity.java"

# interfaces
.implements Lear;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkim/models/GroupRingObject;)V
    .locals 8
    .param p1, "object"    # Lcom/alibaba/android/dingtalkim/models/GroupRingObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 136
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->b(Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->b(Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->a(Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;)Lcwb;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 140
    if-eqz p1, :cond_1

    .line 141
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->a(Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;)Lcwb;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/models/GroupRingObject;->ringId:Ljava/lang/String;

    .line 1030
    iput-object v1, v0, Lcwb;->d:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->a(Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;)Lcwb;

    move-result-object v0

    invoke-virtual {v0}, Lcwb;->notifyDataSetChanged()V

    .line 143
    iget-object v7, p1, Lcom/alibaba/android/dingtalkim/models/GroupRingObject;->mediaId:Ljava/lang/String;

    .line 144
    .local v7, "url":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->c(Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->d(Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->c(Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 178
    .end local v7    # "url":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 149
    .restart local v7    # "url":Ljava/lang/String;
    :cond_2
    invoke-static {}, Leaq;->a()Leaq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3$1;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3;Lcom/alibaba/android/dingtalkim/models/GroupRingObject;)V

    const-class v4, Lcma;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;

    invoke-interface {v0, v3, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, v2, v7, v0}, Leaq;->a(Landroid/content/Context;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method
