.class final Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;
.super Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;
.source "FCPopupWindowHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;->showCheckinResultPopWindow(Lhhd;Lhhn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhhn;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;

.field final synthetic c:Lhhd;

.field final synthetic d:Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;Lhhn;Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;Lhhd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;->d:Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;->a:Lhhn;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;->c:Lhhd;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "ddPopupWindow"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 122
    if-nez p1, :cond_1

    .line 123
    const-string/jumbo v5, "fast_checkin"

    const-string/jumbo v6, "FCPopupWindowHelper"

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v2, "[FCPopupWindowHelper] showCheckinResultPopWindow notifyObject is null, "

    aput-object v2, v7, v3

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;->a:Lhhn;

    if-nez v2, :cond_0

    move-object v2, v4

    :goto_0
    aput-object v2, v7, v9

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v6, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :goto_1
    return-object v4

    .line 123
    :cond_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;->a:Lhhn;

    iget-wide v2, v2, Lhhn;->e:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 127
    :cond_1
    instance-of v2, p2, Lhho;

    if-nez v2, :cond_6

    .line 128
    invoke-static {p1}, Lhho;->a(Landroid/app/Activity;)Lhho;

    move-result-object p2

    :goto_2
    move-object v0, p2

    .line 133
    check-cast v0, Lhho;

    .line 135
    .local v0, "fcp":Lhho;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;->a:Ljava/lang/String;

    .line 4126
    iput-object v2, v0, Lhho;->i:Ljava/lang/String;

    .line 135
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;->b:Ljava/lang/String;

    .line 4131
    iput-object v2, v0, Lhho;->j:Ljava/lang/String;

    .line 136
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;->c:Ljava/lang/String;

    .line 5121
    iput-object v2, v0, Lhho;->k:Ljava/lang/String;

    .line 137
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$a;->d:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;

    .line 5136
    iput-object v2, v0, Lhho;->l:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;

    .line 138
    new-instance v2, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$2;-><init>(Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;Lhho;Landroid/app/Activity;)V

    .line 5248
    iput-object v2, v0, Lhho;->m:Lhho$a;

    .line 139
    new-instance v2, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$1;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1$1;-><init>(Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;)V

    .line 188
    invoke-virtual {v0, v2}, Lhho;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 6294
    iget-object v2, v0, Lhho;->k:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 6302
    const-string/jumbo v2, "IMAGE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 6303
    iget-object v5, v0, Lhho;->d:Landroid/widget/ImageView;

    iget-object v6, v0, Lhho;->k:Ljava/lang/String;

    invoke-interface {v2, v5, v6, v4}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 6307
    :cond_2
    iget-object v2, v0, Lhho;->i:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 6308
    iget-object v2, v0, Lhho;->e:Landroid/widget/TextView;

    iget-object v5, v0, Lhho;->i:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6312
    :cond_3
    iget-object v2, v0, Lhho;->j:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 6313
    iget-object v2, v0, Lhho;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6314
    iget-object v2, v0, Lhho;->f:Landroid/widget/TextView;

    iget-object v5, v0, Lhho;->j:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6323
    :goto_3
    iget-object v2, v0, Lhho;->c:Landroid/view/View;

    sget v5, Lhdn$h;->ll_action_region:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 6324
    if-eqz v2, :cond_a

    .line 6328
    iget-object v5, v0, Lhho;->l:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;

    if-eqz v5, :cond_9

    iget-object v5, v0, Lhho;->l:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;

    invoke-virtual {v5}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    .line 6329
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6331
    new-instance v6, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;

    invoke-direct {v6}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;-><init>()V

    .line 6333
    iget-object v2, v0, Lhho;->l:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;->size()I

    move-result v2

    if-ne v2, v9, :cond_4

    .line 6334
    new-instance v2, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject$HiddenActionObject;

    invoke-direct {v2}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject$HiddenActionObject;-><init>()V

    invoke-virtual {v6, v2}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;->add(Ljava/lang/Object;)V

    .line 6336
    :cond_4
    iget-object v2, v0, Lhho;->l:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;->get()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;->addAll(Ljava/util/List;)V

    .line 6338
    invoke-virtual {v6}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;->size()I

    move-result v2

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v5, v3

    .line 6339
    :goto_4
    if-ge v5, v7, :cond_a

    .line 6341
    if-nez v5, :cond_8

    .line 6342
    iget-object v2, v0, Lhho;->c:Landroid/view/View;

    sget v3, Lhdn$h;->tv_action1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 6343
    invoke-virtual {v6, v5}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject;

    invoke-virtual {v0, v2, v4, v3}, Lhho;->a(Landroid/widget/TextView;Landroid/view/View;Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject;)V

    .line 6339
    :cond_5
    :goto_5
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_4

    .end local v0    # "fcp":Lhho;
    :cond_6
    move-object v2, p2

    .line 130
    check-cast v2, Lhho;

    .line 1236
    const-string/jumbo v5, ""

    .line 2126
    iput-object v5, v2, Lhho;->i:Ljava/lang/String;

    .line 1237
    const-string/jumbo v5, ""

    .line 2131
    iput-object v5, v2, Lhho;->j:Ljava/lang/String;

    .line 1238
    const-string/jumbo v5, ""

    .line 3121
    iput-object v5, v2, Lhho;->k:Ljava/lang/String;

    .line 1240
    new-instance v5, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;

    invoke-direct {v5}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;-><init>()V

    .line 3136
    iput-object v5, v2, Lhho;->l:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;

    .line 1241
    iget-object v5, v2, Lhho;->o:Lhho$a;

    .line 3248
    iput-object v5, v2, Lhho;->m:Lhho$a;

    .line 1242
    iget-object v5, v2, Lhho;->p:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v2, v5}, Lhho;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1243
    invoke-virtual {v2}, Lhho;->b()Lhho;

    goto/16 :goto_2

    .line 6316
    .restart local v0    # "fcp":Lhho;
    :cond_7
    iget-object v2, v0, Lhho;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 6344
    :cond_8
    if-ne v5, v9, :cond_5

    .line 6345
    iget-object v2, v0, Lhho;->c:Landroid/view/View;

    sget v3, Lhdn$h;->ll_action2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 6346
    iget-object v2, v0, Lhho;->c:Landroid/view/View;

    sget v3, Lhdn$h;->tv_action2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 6347
    invoke-virtual {v6, v5}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject;

    invoke-virtual {v0, v2, v8, v3}, Lhho;->a(Landroid/widget/TextView;Landroid/view/View;Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject;)V

    goto :goto_5

    .line 6351
    :cond_9
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 6144
    :cond_a
    :try_start_0
    iget-object v2, v0, Lhho;->n:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 6146
    const/16 v3, 0x33

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x41700000    # 15.0f

    invoke-static {v5, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lhho;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[FCPopupWindowHelper.showCheckinPopWindow.show] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .local v1, "trace":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;->c:Lhhd;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;->c:Lhhd;

    invoke-virtual {v2}, Lhhd;->a()Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 201
    const-string/jumbo v2, "planId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$1;->c:Lhhd;

    invoke-virtual {v3}, Lhhd;->a()Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v3

    iget-wide v4, v3, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :cond_b
    const-string/jumbo v2, "fast_checkin"

    const-string/jumbo v3, "FCPopupWindowHelper"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    .line 205
    goto/16 :goto_1

    .line 6147
    .end local v1    # "trace":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 6148
    const-string/jumbo v3, "fast_checkin"

    const-string/jumbo v4, "FCPopupWindow"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)V
    .locals 0
    .param p1, "ddPopupWindow"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    .prologue
    .line 210
    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->dismiss()V

    .line 213
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;)Z
    .locals 1
    .param p1, "ddPopupWindowShowObject"    # Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method
