.class final Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;
.super Ljava/lang/Object;
.source "DingCreateActivityV2.java"

# interfaces
.implements Lazy$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingCreateActivityV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 1

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->I(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)V

    .line 1243
    return-void
.end method

.method public final B()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 1271
    .line 36540
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    .line 1271
    if-nez v1, :cond_1

    .line 1275
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->K(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/ToggleButton;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->K(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final H_()V
    .locals 1

    .prologue
    .line 505
    .line 2540
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 505
    if-nez v0, :cond_0

    .line 509
    :goto_0
    return-void

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->dismissLoadingDialog()V

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 525
    .line 4540
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 525
    if-nez v0, :cond_1

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->k(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->k(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->k(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 3
    .param p1, "resId"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 513
    .line 3540
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 513
    if-nez v0, :cond_0

    .line 521
    :goto_0
    return-void

    .line 516
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a()V

    .line 517
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->a(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 518
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->k(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->k(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 520
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->k(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)V
    .locals 1
    .param p1, "dingAttachmentModule"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    .prologue
    .line 1192
    .line 30540
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 1192
    if-nez v0, :cond_1

    .line 1198
    :cond_0
    :goto_0
    return-void

    .line 1195
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->f(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->f(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->setAttachmentModule(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;)V
    .locals 1
    .param p1, "scheme"    # Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

    .prologue
    .line 1174
    .line 29540
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 1174
    if-nez v0, :cond_1

    .line 1180
    :cond_0
    :goto_0
    return-void

    .line 1177
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->H(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/VoicePlayView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1178
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->H(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/VoicePlayView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setScheme(Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/ding/widget/VoicePlayView$a;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/android/ding/widget/VoicePlayView$a;

    .prologue
    .line 1144
    .line 26540
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 1144
    if-nez v0, :cond_1

    .line 1150
    :cond_0
    :goto_0
    return-void

    .line 1147
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->H(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/VoicePlayView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->H(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/VoicePlayView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setVoicePlayListener(Lcom/alibaba/android/ding/widget/VoicePlayView$a;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)V
    .locals 1
    .param p1, "alertType"    # Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .prologue
    .line 694
    .line 9540
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 694
    if-nez v0, :cond_1

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 697
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->n(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->n(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->setRemindType(Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDingSent;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/android/ding/base/objects/ObjectDingSent;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1230
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->f(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1231
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->f(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    move-result-object v0

    .line 33469
    iget v1, v0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->e:I

    if-ne v1, v4, :cond_4

    .line 33470
    iget-object v1, v0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->b:Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->getAudioContentModel()Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;

    move-result-object v1

    .line 33471
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;->mediaId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 33472
    :cond_0
    invoke-interface {p1, v5}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 33532
    :cond_1
    :goto_0
    return-void

    .line 33476
    :cond_2
    iget-object v2, v1, Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;->mediaId:Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 33478
    new-instance v2, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;

    invoke-direct {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;-><init>()V

    .line 33479
    iget-object v3, v1, Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;->audioVolumns:Ljava/util/List;

    iput-object v3, v2, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;->b:Ljava/util/List;

    .line 33480
    iget-object v1, v1, Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;->duration:Ljava/lang/Long;

    iput-object v1, v2, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;->a:Ljava/lang/Long;

    .line 33481
    iget-object v1, v0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->g:Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->h:Ljava/lang/String;

    iget-object v0, v0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->i:Ljava/lang/String;

    invoke-static {v1, v3, v0, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/ObjectDingSent$a;)Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    move-result-object v0

    .line 33482
    invoke-interface {p1, v0}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 33485
    :cond_3
    new-instance v2, Lcom/alibaba/wukong/upload/UploadParams;

    invoke-direct {v2}, Lcom/alibaba/wukong/upload/UploadParams;-><init>()V

    .line 33486
    iget-object v3, v1, Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;->mediaId:Ljava/lang/String;

    .line 34058
    iput-object v3, v2, Lcom/alibaba/wukong/upload/UploadParams;->a:Ljava/lang/String;

    .line 34090
    iput-boolean v4, v2, Lcom/alibaba/wukong/upload/UploadParams;->e:Z

    .line 33488
    invoke-static {}, Lify;->a()Lify;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9;

    invoke-direct {v4, v0, v1, p1}, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9;-><init>(Lcom/alibaba/android/ding/widget/DingTabLayoutView;Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v3, v2, v4, v5}, Lify;->a(Lcom/alibaba/wukong/upload/UploadParams;Lifv;Lifu;)V

    goto :goto_0

    .line 33527
    :cond_4
    iget v1, v0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->e:I

    if-nez v1, :cond_1

    .line 33528
    iget-object v0, v0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33529
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 33530
    invoke-static {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->f(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    move-result-object v0

    .line 33531
    invoke-interface {p1, v0}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 33533
    :cond_5
    invoke-interface {p1, v5}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;)V
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 1134
    .line 25540
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 1134
    if-nez v0, :cond_1

    .line 1140
    :cond_0
    :goto_0
    return-void

    .line 1137
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->H(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/VoicePlayView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1138
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->H(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/VoicePlayView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setMessage(Lcom/alibaba/wukong/im/Message;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/im/MessageContent$AudioContent;)V
    .locals 1
    .param p1, "audioContent"    # Lcom/alibaba/wukong/im/MessageContent$AudioContent;

    .prologue
    .line 1164
    .line 28540
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 1164
    if-nez v0, :cond_1

    .line 1170
    :cond_0
    :goto_0
    return-void

    .line 1167
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->H(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/VoicePlayView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1168
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->H(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/VoicePlayView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setMessageAudio(Lcom/alibaba/wukong/im/MessageContent$AudioContent;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/CharSequence;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 931
    .line 15540
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 931
    if-nez v0, :cond_0

    .line 958
    :goto_0
    return-void

    .line 935
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$4;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$4;-><init>(Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 1124
    .line 24540
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 1124
    if-nez v0, :cond_1

    .line 1130
    :cond_0
    :goto_0
    return-void

    .line 1127
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->H(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/VoicePlayView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->H(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/VoicePlayView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setMessageId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "dingId"    # Ljava/lang/String;
    .param p2, "commentId"    # Ljava/lang/String;
    .param p3, "authCode"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1154
    .line 27540
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 1154
    if-nez v0, :cond_1

    .line 1160
    :cond_0
    :goto_0
    return-void

    .line 1157
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->H(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/VoicePlayView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->H(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/VoicePlayView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Lcom/alibaba/android/ding/widget/VoicePlayView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;JZ)V
    .locals 9
    .param p1, "audioContentUrl"    # Ljava/lang/String;
    .param p3, "audioDuration"    # J
    .param p5, "isEditMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;JZ)V"
        }
    .end annotation

    .prologue
    .local p2, "audioVolumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 1220
    .line 32540
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 1220
    if-nez v0, :cond_1

    .line 1226
    :cond_0
    :goto_0
    return-void

    .line 1223
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->f(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1224
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->f(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    move-result-object v1

    .line 33223
    iput-boolean v8, v1, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->d:Z

    .line 33224
    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->d()V

    .line 33383
    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbjo;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v6

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    const-string/jumbo v0, "android.permission.RECORD_AUDIO"

    aput-object v0, v7, v8

    new-instance v0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$6;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/ding/widget/DingTabLayoutView$6;-><init>(Lcom/alibaba/android/ding/widget/DingTabLayoutView;Ljava/lang/String;Ljava/util/List;J)V

    invoke-static {v6, v8, v7, v0}, Lbyy;->a(Landroid/app/Activity;I[Ljava/lang/String;Lbzc;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "boardName"    # Ljava/lang/String;
    .param p2, "hasMore"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1293
    .line 38540
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 1293
    if-nez v0, :cond_1

    .line 1304
    :cond_0
    :goto_0
    return-void

    .line 1297
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->M(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1298
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->M(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1301
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->N(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1302
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->N(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v1

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 7
    .param p1, "ignorePrevent"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 962
    .line 16540
    iget-object v5, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v5}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v5

    .line 962
    if-nez v5, :cond_0

    .line 988
    :goto_0
    return-void

    .line 965
    :cond_0
    iget-object v5, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 966
    .local v4, "inflater":Landroid/view/LayoutInflater;
    sget v5, Laxp$g;->ding_call_type_too_many:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 968
    .local v0, "alertView":Landroid/view/View;
    sget v5, Laxp$f;->ding_alert_continue:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 969
    .local v2, "btnContinue":Landroid/widget/Button;
    sget v5, Laxp$f;->ding_alert_cancel:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 971
    .local v1, "btnCancel":Landroid/widget/Button;
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v5, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-direct {v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 972
    .local v3, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 973
    new-instance v5, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$5;

    invoke-direct {v5, p0, v3, p1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$5;-><init>(Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Z)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 982
    new-instance v5, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$6;

    invoke-direct {v5, p0, v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$6;-><init>(Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 535
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    return-void
.end method

.method public final b(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 555
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 497
    .line 1540
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 497
    if-nez v0, :cond_0

    .line 501
    :goto_0
    return-void

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->showLoadingDialog()V

    goto :goto_0
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/CharSequence;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 992
    .line 17540
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    .line 992
    if-nez v1, :cond_0

    .line 1011
    :goto_0
    return-void

    .line 995
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 996
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 997
    sget v1, Laxp$i;->dt_ding_ignore_and_send:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->b(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$7;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$7;-><init>(Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1005
    sget v1, Laxp$i;->cancel:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->b(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$8;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$8;-><init>(Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1010
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1055
    .line 18540
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 1055
    if-nez v0, :cond_1

    .line 1061
    :cond_0
    :goto_0
    return-void

    .line 1058
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->G(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->G(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public final c(I)V
    .locals 1
    .param p1, "titleResId"    # I

    .prologue
    .line 648
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->n(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->n(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->a(I)V

    .line 651
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 1065
    .line 19540
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 1065
    if-nez v0, :cond_1

    .line 1071
    :cond_0
    :goto_0
    return-void

    .line 1068
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->f(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->f(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->setOriginTextContent(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 2
    .param p1, "focusable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 1075
    .line 20540
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 1075
    if-nez v0, :cond_1

    .line 1082
    :cond_0
    :goto_0
    return-void

    .line 1078
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->b(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->b(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setFocusable(Z)V

    .line 1080
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->b(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setFocusableInTouchMode(Z)V

    goto :goto_0
.end method

.method public final d(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 1096
    .line 22540
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 1096
    if-nez v0, :cond_1

    .line 1102
    :cond_0
    :goto_0
    return-void

    .line 1099
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->b(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->b(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final d(Z)V
    .locals 2
    .param p1, "visible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1086
    .line 21540
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 1086
    if-nez v0, :cond_1

    .line 1092
    :cond_0
    :goto_0
    return-void

    .line 1089
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->b(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->b(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setVisibility(I)V

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->finish()V

    .line 546
    return-void
.end method

.method public final e(Z)V
    .locals 2
    .param p1, "visible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1114
    .line 23540
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 1114
    if-nez v0, :cond_1

    .line 1120
    :cond_0
    :goto_0
    return-void

    .line 1117
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->H(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/VoicePlayView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1118
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->H(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/VoicePlayView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final f()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    return-object v0
.end method

.method public final f(Z)V
    .locals 3
    .param p1, "isEditMode"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 1210
    .line 31540
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 1210
    if-nez v0, :cond_1

    .line 1216
    :cond_0
    :goto_0
    return-void

    .line 1213
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->f(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->f(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    move-result-object v0

    .line 32216
    iput-boolean p1, v0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->d:Z

    .line 32217
    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->d()V

    .line 32219
    iget-object v1, v0, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v2, v1, v2}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->a(ZZLjava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method public final g()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 560
    .line 5540
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    .line 560
    if-nez v1, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 567
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v1

    invoke-interface {v1}, Lazy$a;->I()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 568
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v0

    invoke-interface {v0}, Lazy$a;->l()I

    move-result v0

    invoke-static {v0}, Lbkh;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 569
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    sget v1, Laxp$i;->dt_ding_motify_task:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->setTitle(I)V

    goto :goto_0

    .line 571
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    sget v1, Laxp$i;->dt_ding_common_modify:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->setTitle(I)V

    goto :goto_0

    .line 574
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v1

    invoke-interface {v1}, Lazy$a;->l()I

    move-result v1

    if-ne v1, v0, :cond_4

    .line 575
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    sget v1, Laxp$i;->dt_ding_create_activity_title_task:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->setTitle(I)V

    goto :goto_0

    .line 576
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v1

    invoke-interface {v1}, Lazy$a;->l()I

    move-result v1

    if-eqz v1, :cond_7

    .line 578
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v1

    invoke-interface {v1}, Lazy$a;->l()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    .line 579
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v1

    invoke-interface {v1}, Lazy$a;->m()I

    move-result v1

    .line 5560
    if-ne v1, v0, :cond_5

    .line 579
    :goto_1
    if-eqz v0, :cond_6

    .line 580
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    sget v1, Laxp$i;->dt_ding_create_activity_meeting_minutes_task:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->setTitle(I)V

    goto :goto_0

    .line 5560
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 582
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    sget v1, Laxp$i;->dt_task_subtask_title:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->setTitle(I)V

    goto/16 :goto_0

    .line 585
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    sget v1, Laxp$i;->dt_ding_create_activity_title_normal:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->setTitle(I)V

    goto/16 :goto_0
.end method

.method public final g(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1248
    .line 34540
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 1248
    if-nez v0, :cond_1

    .line 1255
    :cond_0
    :goto_0
    return-void

    .line 1252
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->J(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1253
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->J(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public final h()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 592
    .line 6540
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    .line 592
    if-nez v1, :cond_1

    .line 644
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 599
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->l(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v4

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v1

    invoke-interface {v1}, Lazy$a;->l()I

    move-result v1

    if-nez v1, :cond_7

    sget v1, Laxp$i;->dt_ding_create_receivers_title:I

    .line 600
    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 599
    :goto_1
    invoke-virtual {v4, v1}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setTitle(Ljava/lang/CharSequence;)V

    .line 602
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->l(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v4

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v1

    invoke-interface {v1}, Lazy$a;->q()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "identifier_task_principal_selector"

    :goto_2
    invoke-virtual {v4, v1}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setIdentifier(Ljava/lang/String;)V

    .line 603
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->l(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v4

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v1

    invoke-interface {v1}, Lazy$a;->I()Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setHasSendToMe(Z)V

    .line 604
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->l(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v1

    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v4}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v4

    invoke-interface {v4}, Lazy$a;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setCid(Ljava/lang/String;)V

    .line 605
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->l(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v1

    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v4}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v4

    invoke-interface {v4}, Lazy$a;->E()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setParentDingId(Ljava/lang/String;)V

    .line 606
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->l(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v1

    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v4}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v4

    invoke-interface {v4}, Lazy$a;->n()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setDingFrom(I)V

    .line 607
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->l(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v1

    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v4}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v4

    invoke-interface {v4}, Lazy$a;->F()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setMailMessage(Z)V

    .line 608
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->l(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v1

    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v4}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v4

    invoke-interface {v4}, Lazy$a;->r()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setCanSendToAll(Z)V

    .line 609
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->l(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v1

    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v4}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v4

    invoke-interface {v4}, Lazy$a;->l()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setBizType(I)V

    .line 610
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->l(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v1

    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v4}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v4

    invoke-interface {v4}, Lazy$a;->p()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setProfileUids(Ljava/util/Collection;)V

    .line 611
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v1

    invoke-interface {v1}, Lazy$a;->I()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 612
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 613
    .local v0, "disableReceiverUids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v1

    invoke-interface {v1}, Lazy$a;->p()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 614
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v1

    invoke-interface {v1}, Lazy$a;->p()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 616
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v1

    invoke-interface {v1}, Lazy$a;->s()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 617
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v1

    invoke-interface {v1}, Lazy$a;->s()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 619
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->l(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setDisabledUids(Ljava/util/Collection;)V

    .line 621
    .end local v0    # "disableReceiverUids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->l(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->c()V

    .line 622
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->l(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v1

    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v4}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v4

    invoke-interface {v4}, Lazy$a;->q()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v4}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v4

    invoke-interface {v4}, Lazy$a;->I()Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    move v3, v2

    :cond_6
    invoke-virtual {v1, v3}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setModifySelectedUser(Z)V

    .line 623
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->l(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$1;-><init>(Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setReceiverSelectorListener(Lcom/alibaba/android/ding/widget/ReceiverSelector$a;)V

    .line 641
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v1

    invoke-interface {v1}, Lazy$a;->O()Z

    move-result v1

    if-nez v1, :cond_0

    .line 642
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->l(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->b()V

    goto/16 :goto_0

    .line 600
    :cond_7
    sget v1, Laxp$i;->dt_task_owner_title:I

    .line 601
    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->b(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 602
    :cond_8
    const-string/jumbo v1, "identifier_receiver_selector"

    goto/16 :goto_2

    :cond_9
    move v1, v3

    .line 603
    goto/16 :goto_3
.end method

.method public final h(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 1259
    .line 35540
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 1259
    if-nez v0, :cond_1

    .line 1266
    :cond_0
    :goto_0
    return-void

    .line 1263
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->K(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/ToggleButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->K(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 655
    .line 7540
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 655
    if-nez v0, :cond_1

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->n(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->n(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->a()V

    goto :goto_0
.end method

.method public final i(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1281
    .line 37540
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 1281
    if-nez v0, :cond_1

    .line 1288
    :cond_0
    :goto_0
    return-void

    .line 1285
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->L(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1286
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->L(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public final j()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 669
    .line 8540
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    .line 669
    if-nez v2, :cond_1

    .line 682
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 676
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->l(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 677
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->l(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->getProfileUids()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->l(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->getProfileUids()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 678
    .local v0, "selectedNum":I
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->n(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v3

    invoke-interface {v3}, Lazy$a;->J()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v2, v1}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->setIsDisable(Z)V

    .line 679
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->n(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->setSelectedNum(I)V

    .line 680
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->n(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->a()V

    goto :goto_0

    .end local v0    # "selectedNum":I
    :cond_3
    move v0, v1

    .line 677
    goto :goto_1
.end method

.method public final k()Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->n(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    move-result-object v0

    if-nez v0, :cond_0

    .line 687
    const/4 v0, 0x0

    .line 689
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->n(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->getRemindType()Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v0

    goto :goto_0
.end method

.method public final l()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 704
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->o(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$b;

    move-result-object v1

    invoke-interface {v1}, Lazy$b;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 710
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v1

    invoke-interface {v1}, Lazy$a;->b()Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;->SEND_NOW:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v1

    invoke-interface {v1}, Lazy$a;->N()Z

    move-result v1

    if-nez v1, :cond_3

    .line 711
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->p(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 712
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->q(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 714
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->p(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 715
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v1

    invoke-interface {v1}, Lazy$a;->z()Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    move-result-object v0

    .line 716
    .local v0, "repeatFrequency":Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;
    if-nez v0, :cond_4

    .line 717
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->q(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->NO_REPEAT:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    invoke-virtual {v2}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->getTextResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 721
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->p(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v2

    invoke-interface {v2}, Lazy$a;->M()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 722
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->p(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v2

    invoke-interface {v2}, Lazy$a;->M()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 723
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->q(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v2

    invoke-interface {v2}, Lazy$a;->M()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 719
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->q(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->getTextResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public final m()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 729
    .line 10540
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 729
    if-nez v0, :cond_1

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 732
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->r(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/ToggleButton;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->s(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->t(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v0

    invoke-interface {v0}, Lazy$a;->N()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 740
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->u(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;

    move-result-object v0

    sget v2, Laxp$i;->dt_remind_at_fixed_time:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 741
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->v(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;

    move-result-object v0

    sget v2, Laxp$i;->dt_ding_remind_time:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 748
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->r(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/ToggleButton;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v0

    invoke-interface {v0}, Lazy$a;->b()Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    move-result-object v0

    sget-object v3, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;->SEND_LATER:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 749
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v0

    invoke-interface {v0}, Lazy$a;->b()Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    move-result-object v0

    sget-object v2, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;->SEND_NOW:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    if-ne v0, v2, :cond_4

    .line 750
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->s(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 751
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->t(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Laxp$i;->ding_text_send_now:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 758
    :goto_3
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->r(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/ToggleButton;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v1

    invoke-interface {v1}, Lazy$a;->K()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 759
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->r(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/ToggleButton;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v1

    invoke-interface {v1}, Lazy$a;->K()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setClickable(Z)V

    .line 760
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v0

    invoke-interface {v0}, Lazy$a;->K()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 761
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->u(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    sget v2, Laxp$c;->ui_common_level1_text_color:I

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 744
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->u(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;

    move-result-object v0

    sget v2, Laxp$i;->dt_ding_create_timing_title:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 745
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->v(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;

    move-result-object v0

    sget v2, Laxp$i;->ding_remind_time_tip:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    :cond_3
    move v0, v1

    .line 748
    goto/16 :goto_2

    .line 754
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->s(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 756
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->t(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v2

    invoke-interface {v2}, Lazy$a;->e()J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lcog;->d(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 763
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->u(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    sget v2, Laxp$c;->ui_common_level2_text_color:I

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0
.end method

.method public final n()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 769
    .line 11540
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 769
    if-nez v0, :cond_1

    .line 786
    :cond_0
    :goto_0
    return-void

    .line 772
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->w(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->x(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v0

    invoke-interface {v0}, Lazy$a;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 780
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->w(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 781
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->x(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 783
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->w(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 784
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->x(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public final o()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 790
    .line 12540
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 790
    if-nez v0, :cond_1

    .line 822
    :cond_0
    :goto_0
    return-void

    .line 793
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v0

    invoke-interface {v0}, Lazy$a;->q()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 797
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->y(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 798
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v0

    invoke-interface {v0}, Lazy$a;->c()Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;->UNSET:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;

    if-ne v0, v1, :cond_2

    .line 799
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->z(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Laxp$i;->dt_ding_create_no_deadline_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 800
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->A(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 805
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v0

    invoke-interface {v0}, Lazy$a;->d()Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;->DO_NOT_REMIND:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    if-ne v0, v1, :cond_3

    .line 806
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->B(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v1

    invoke-interface {v1}, Lazy$a;->d()Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 802
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->z(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v1

    invoke-interface {v1}, Lazy$a;->f()J

    move-result-wide v2

    invoke-static {v2, v3, v4}, Lcog;->d(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 803
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->A(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 808
    :cond_3
    invoke-static {}, Lcms;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 809
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->B(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v1

    invoke-interface {v1}, Lazy$a;->d()Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 811
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->B(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .line 812
    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v2

    invoke-interface {v2}, Lazy$a;->d()Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;->getDesc()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .line 813
    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v3

    invoke-interface {v3}, Lazy$a;->j()Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v3

    invoke-static {v3}, Lbkh;->a(Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 814
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Laxp$i;->dt_ding_remind_pick_title:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 811
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 818
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->y(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 819
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->A(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 820
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->B(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public final p()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 826
    .line 13540
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v3}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    .line 826
    if-nez v3, :cond_1

    .line 880
    :cond_0
    :goto_0
    return-void

    .line 829
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 832
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->C(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/LinearLayout;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->m(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 836
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v3

    invoke-interface {v3}, Lazy$a;->q()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 837
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->C(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 838
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->m(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v3

    sget v4, Laxp$i;->dt_task_participant_title:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setTitle(Ljava/lang/CharSequence;)V

    .line 839
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->m(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v3

    const-string/jumbo v4, "identifier_task_cc_selector"

    invoke-virtual {v3, v4}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setIdentifier(Ljava/lang/String;)V

    .line 840
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->m(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setHasSendToMe(Z)V

    .line 841
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->m(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v4}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v4

    invoke-interface {v4}, Lazy$a;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setCid(Ljava/lang/String;)V

    .line 842
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->m(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v4}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v4

    invoke-interface {v4}, Lazy$a;->E()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setParentDingId(Ljava/lang/String;)V

    .line 843
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->m(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v4}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v4

    invoke-interface {v4}, Lazy$a;->n()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setDingFrom(I)V

    .line 844
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->m(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v4}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v4

    invoke-interface {v4}, Lazy$a;->F()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setMailMessage(Z)V

    .line 845
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->m(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v4}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v4

    invoke-interface {v4}, Lazy$a;->r()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setCanSendToAll(Z)V

    .line 846
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->m(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v4}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v4

    invoke-interface {v4}, Lazy$a;->l()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setBizType(I)V

    .line 847
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->m(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v4}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v4

    invoke-interface {v4}, Lazy$a;->s()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setProfileUids(Ljava/util/Collection;)V

    .line 848
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v3

    invoke-interface {v3}, Lazy$a;->I()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 849
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 850
    .local v0, "disableParticipantUids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v3

    invoke-interface {v3}, Lazy$a;->s()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 851
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v3

    invoke-interface {v3}, Lazy$a;->s()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 853
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v3

    invoke-interface {v3}, Lazy$a;->p()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 854
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v3

    invoke-interface {v3}, Lazy$a;->p()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 856
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->m(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setDisabledUids(Ljava/util/Collection;)V

    .line 858
    .end local v0    # "disableParticipantUids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->m(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->c()V

    .line 859
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->m(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v4}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v4

    invoke-interface {v4}, Lazy$a;->t()I

    move-result v4

    .line 14254
    iget-object v5, v3, Lcom/alibaba/android/ding/widget/ReceiverSelector;->b:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    .line 14257
    iget-object v5, v3, Lcom/alibaba/android/ding/widget/ReceiverSelector;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Laxp$i;->ding_receiver_count:I

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14259
    invoke-virtual {v3}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->d()V

    .line 860
    :cond_5
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->m(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v4}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v4

    invoke-interface {v4}, Lazy$a;->I()Z

    move-result v4

    if-nez v4, :cond_6

    :goto_1
    invoke-virtual {v3, v1}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setModifySelectedUser(Z)V

    .line 864
    :goto_2
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->m(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$2;-><init>(Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setReceiverSelectorListener(Lcom/alibaba/android/ding/widget/ReceiverSelector$a;)V

    goto/16 :goto_0

    :cond_6
    move v1, v2

    .line 860
    goto :goto_1

    .line 862
    :cond_7
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->C(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method public final q()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 884
    .line 14540
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v3}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    .line 884
    if-nez v3, :cond_1

    .line 927
    :cond_0
    :goto_0
    return-void

    .line 887
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 890
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->D(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/ToggleButton;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->E(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 894
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->D(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/ToggleButton;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v4}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v4

    invoke-interface {v4}, Lazy$a;->k()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 895
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->D(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/ToggleButton;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v4}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v4

    invoke-interface {v4}, Lazy$a;->L()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setClickable(Z)V

    .line 896
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->D(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/ToggleButton;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v4}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v4

    invoke-interface {v4}, Lazy$a;->L()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 897
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v3

    invoke-interface {v3}, Lazy$a;->L()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 898
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->F(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    sget v5, Laxp$c;->ui_common_level1_text_color:I

    invoke-static {v4, v5}, Ldp;->c(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 903
    :goto_1
    new-instance v2, Landroid/text/SpannableStringBuilder;

    sget v3, Laxp$i;->dt_ding_create_reply_visibility_detail_v2:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 904
    .local v2, "stringBuilder":Landroid/text/SpannableStringBuilder;
    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 905
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 906
    .local v1, "start":I
    sget v3, Laxp$i;->dt_ding_create_leanmore:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 907
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 909
    .local v0, "end":I
    new-instance v3, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$3;

    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    sget v5, Laxp$c;->ui_common_link_text_color:I

    invoke-static {v4, v5}, Ldp;->c(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, p0, v4}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$3;-><init>(Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;I)V

    const/16 v4, 0x21

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 924
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->E(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 925
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->E(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 926
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->a(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;Z)V

    goto/16 :goto_0

    .line 900
    .end local v0    # "end":I
    .end local v1    # "start":I
    .end local v2    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->F(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    sget v5, Laxp$c;->ui_common_level2_text_color:I

    invoke-static {v4, v5}, Ldp;->c(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method public final r()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->l(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1016
    const/4 v0, 0x0

    .line 1018
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->l(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->getProfileUids()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->m(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1024
    const/4 v0, 0x0

    .line 1026
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->m(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->getProfileUids()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 490
    return-void
.end method

.method public final t()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 1031
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->y(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1034
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->y(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->b(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1040
    const-string/jumbo v0, ""

    .line 1042
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->b(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final v()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1047
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->f(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    move-result-object v2

    if-nez v2, :cond_1

    .line 18129
    :cond_0
    :goto_0
    return v0

    .line 1050
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->f(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    move-result-object v2

    .line 18129
    iget v2, v2, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->e:I

    if-ne v2, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final w()Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;
    .locals 1

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->f(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1107
    const/4 v0, 0x0

    .line 1109
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->f(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->getDingDraftAudio()Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;

    move-result-object v0

    goto :goto_0
.end method

.method public final x()Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;
    .locals 1

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->f(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1185
    const/4 v0, 0x0

    .line 1187
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->f(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->getAttachmentModule()Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v0

    goto :goto_0
.end method

.method public final y()Z
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->D(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/ToggleButton;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1203
    const/4 v0, 0x0

    .line 1205
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->D(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    goto :goto_0
.end method

.method public final z()V
    .locals 1

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->supportInvalidateOptionsMenu()V

    .line 1238
    return-void
.end method
