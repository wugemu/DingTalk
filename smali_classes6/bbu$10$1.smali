.class final Lbbu$10$1;
.super Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;
.source "DingPopWindowCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbu$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbbu$10;


# direct methods
.method constructor <init>(Lbbu$10;)V
    .locals 0
    .param p1, "this$1"    # Lbbu$10;

    .prologue
    .line 316
    iput-object p1, p0, Lbbu$10$1;->a:Lbbu$10;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cachedPopupWindow"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 329
    instance-of v0, p2, Lcrn;

    if-nez v0, :cond_0

    .line 330
    new-instance p2, Lcrn;

    .end local p2    # "cachedPopupWindow":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    invoke-direct {p2, p1}, Lcrn;-><init>(Landroid/app/Activity;)V

    .restart local p2    # "cachedPopupWindow":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    :cond_0
    move-object v0, p2

    .line 333
    check-cast v0, Lcrn;

    .line 1028
    iput-boolean v7, v0, Lcri;->b:Z

    .line 334
    iget-object v0, p0, Lbbu$10$1;->a:Lbbu$10;

    iget-object v0, v0, Lbbu$10;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 335
    invoke-static {v7}, Lbjz;->d(Z)V

    move-object v0, p2

    .line 336
    check-cast v0, Lcrn;

    .line 1108
    iput v10, v0, Lcrn;->c:I

    :cond_1
    :goto_0
    move-object v0, p2

    .line 345
    check-cast v0, Lcrn;

    iget-object v2, p0, Lbbu$10$1;->a:Lbbu$10;

    iget-object v3, v2, Lbbu$10;->b:Lbcf;

    iget-object v2, p0, Lbbu$10$1;->a:Lbbu$10;

    iget-object v4, v2, Lbbu$10;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 3207
    if-eqz p1, :cond_2

    if-eqz v3, :cond_2

    if-nez v4, :cond_5

    .line 345
    :cond_2
    :goto_1
    invoke-virtual {v0, v1}, Lcrn;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;)V

    .line 346
    return-object p2

    .line 337
    :cond_3
    iget-object v0, p0, Lbbu$10$1;->a:Lbbu$10;

    iget-object v0, v0, Lbbu$10;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 338
    invoke-static {v7}, Lbjz;->h(Z)V

    move-object v0, p2

    .line 339
    check-cast v0, Lcrn;

    .line 2108
    iput v8, v0, Lcrn;->c:I

    goto :goto_0

    .line 340
    :cond_4
    iget-object v0, p0, Lbbu$10$1;->a:Lbbu$10;

    iget-object v0, v0, Lbbu$10;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    invoke-static {v7}, Lbjz;->f(Z)V

    move-object v0, p2

    .line 342
    check-cast v0, Lcrn;

    .line 3108
    iput v8, v0, Lcrn;->c:I

    goto :goto_0

    .line 3210
    :cond_5
    iget-object v2, v3, Lbcf;->a:Ljava/lang/Integer;

    .line 4033
    invoke-static {v2, v7}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v5

    .line 3211
    if-ne v5, v8, :cond_6

    invoke-static {v4}, Lbkh;->m(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3214
    :cond_6
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;-><init>()V

    .line 3216
    invoke-static {v2, v4}, Lbky;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 4295
    if-eqz v3, :cond_7

    iget-object v6, v3, Lbcf;->f:Ljava/util/List;

    if-eqz v6, :cond_7

    iget-object v6, v3, Lbcf;->f:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 4296
    :cond_7
    invoke-static {v2, v4, v1}, Lbky;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;Lcom/alibaba/android/ding/base/objects/ObjectDing;Ljava/lang/String;)V

    .line 3220
    :goto_2
    new-instance v6, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;

    invoke-direct {v6}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;-><init>()V

    .line 3221
    invoke-static {v6}, Lbky;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v1

    .line 5040
    iput-object v1, v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;->b:Lcrm;

    .line 3224
    if-eq v5, v10, :cond_b

    if-eq v5, v9, :cond_b

    const/4 v1, 0x7

    if-eq v5, v1, :cond_b

    const/16 v1, 0x8

    if-eq v5, v1, :cond_b

    .line 3228
    iget-object v1, v3, Lbcf;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v8, :cond_8

    .line 3229
    new-array v1, v9, [Ljava/lang/String;

    const-string/jumbo v5, "[PopupDisplayAsynObjectBuilder] buildGeneralRemindDisplayObject unknown type display, type:"

    aput-object v5, v1, v7

    iget-object v5, v3, Lbcf;->a:Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v8

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 3231
    :cond_8
    iget-object v1, v3, Lbcf;->d:Ljava/util/List;

    if-eqz v1, :cond_9

    iget-object v1, v3, Lbcf;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v3, Lbcf;->d:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 3232
    new-instance v5, Landroid/text/SpannableString;

    iget-object v1, v3, Lbcf;->d:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {v5, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v5}, Lbky;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v1

    .line 5128
    iput-object v1, v6, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->a:Lcrm;

    .line 3276
    :cond_9
    :goto_3
    new-instance v1, Landroid/text/SpannableString;

    invoke-static {v4}, Lbky;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 7136
    iput-object v1, v6, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->b:Landroid/text/SpannableString;

    .line 3278
    new-instance v1, Lbky$15;

    invoke-direct {v1, v3, p1, v4}, Lbky$15;-><init>(Lbcf;Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 7160
    iput-object v1, v6, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->e:Landroid/view/View$OnClickListener;

    move-object v1, v2

    .line 3291
    goto/16 :goto_1

    .line 4298
    :cond_a
    iget-object v1, v3, Lbcf;->f:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v4, v1}, Lbky;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;Lcom/alibaba/android/ding/base/objects/ObjectDing;Ljava/lang/String;)V

    goto :goto_2

    .line 3235
    :cond_b
    new-instance v1, Lcrm;

    invoke-direct {v1}, Lcrm;-><init>()V

    .line 6128
    iput-object v1, v6, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->a:Lcrm;

    .line 3237
    new-instance v7, Lbky$14;

    invoke-direct {v7, v4, v5}, Lbky$14;-><init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;I)V

    .line 7040
    iput-object v7, v1, Lcrm;->c:Lcrl;

    goto :goto_3
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)V
    .locals 0
    .param p1, "ddPopupWindow"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    .prologue
    .line 351
    if-eqz p1, :cond_0

    .line 352
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->dismiss()V

    .line 354
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 324
    invoke-static {}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbbu$10$1;->a:Lbbu$10;

    iget-object v1, v1, Lbbu$10;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;)Z
    .locals 1
    .param p1, "popWindow"    # Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    .prologue
    .line 319
    const/4 v0, 0x1

    return v0
.end method
