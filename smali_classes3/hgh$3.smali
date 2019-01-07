.class final Lhgh$3;
.super Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;
.source "KaoQinViewImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhgh;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:J

.field final synthetic h:I

.field final synthetic i:Lhgh;


# direct methods
.method constructor <init>(Lhgh;Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;JI)V
    .locals 0
    .param p1, "this$0"    # Lhgh;

    .prologue
    .line 262
    iput-object p1, p0, Lhgh$3;->i:Lhgh;

    iput-object p2, p0, Lhgh$3;->a:Ljava/lang/String;

    iput p3, p0, Lhgh$3;->b:I

    iput p4, p0, Lhgh$3;->c:I

    iput-object p5, p0, Lhgh$3;->d:Ljava/lang/String;

    iput-boolean p6, p0, Lhgh$3;->e:Z

    iput-object p7, p0, Lhgh$3;->f:Ljava/lang/String;

    iput-wide p8, p0, Lhgh$3;->g:J

    iput p10, p0, Lhgh$3;->h:I

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "ddPopupWindow"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 272
    if-nez p1, :cond_0

    .line 273
    iget-object v1, p0, Lhgh$3;->i:Lhgh;

    invoke-static {}, Lhgh;->c()I

    move-result v2

    invoke-static {v1, v2}, Lhgh;->a(Lhgh;I)I

    .line 398
    :goto_0
    return-object v7

    .line 277
    :cond_0
    iget-object v1, p0, Lhgh$3;->i:Lhgh;

    invoke-static {v1}, Lhgh;->b(Lhgh;)I

    move-result v1

    invoke-static {}, Lhgh;->d()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 279
    const-string/jumbo v1, "com.alibaba.android.dingtalk.guard.ui.activity.DeviceBindActivity"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    iget-object v1, p0, Lhgh$3;->i:Lhgh;

    invoke-static {}, Lhgh;->c()I

    move-result v2

    invoke-static {v1, v2}, Lhgh;->a(Lhgh;I)I

    goto :goto_0

    .line 285
    :cond_1
    instance-of v1, p1, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    if-eqz v1, :cond_3

    move-object v1, p1

    .line 286
    check-cast v1, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->getUrl()Ljava/lang/String;

    move-result-object v11

    .line 288
    .local v11, "url":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 290
    iget-object v1, p0, Lhgh$3;->i:Lhgh;

    invoke-static {v1}, Lhgh;->b(Lhgh;)I

    move-result v1

    invoke-static {}, Lhgh;->d()I

    move-result v2

    if-ne v1, v2, :cond_2

    const-string/jumbo v1, " attend.dingtalk.com"

    invoke-virtual {v11, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 291
    iget-object v1, p0, Lhgh$3;->i:Lhgh;

    invoke-static {}, Lhgh;->c()I

    move-result v2

    invoke-static {v1, v2}, Lhgh;->a(Lhgh;I)I

    goto :goto_0

    .line 295
    :cond_2
    invoke-static {}, Lhfo;->a()Lhfo;

    move-result-object v1

    invoke-virtual {v1, v11}, Lhfo;->a(Ljava/lang/String;)Lhfo$b;

    move-result-object v10

    .line 296
    .local v10, "tempMicroAppInfo":Lhfo$b;
    if-eqz v10, :cond_3

    .line 297
    invoke-static {}, Lhgh;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    .line 300
    .local v9, "atmAppIdStr":Ljava/lang/String;
    iget-object v1, v10, Lhfo$b;->a:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 301
    iget-object v1, p0, Lhgh$3;->i:Lhgh;

    invoke-static {}, Lhgh;->c()I

    move-result v2

    invoke-static {v1, v2}, Lhgh;->a(Lhgh;I)I

    goto :goto_0

    .line 309
    .end local v9    # "atmAppIdStr":Ljava/lang/String;
    .end local v10    # "tempMicroAppInfo":Lhfo$b;
    .end local v11    # "url":Ljava/lang/String;
    :cond_3
    if-eqz p2, :cond_4

    instance-of v1, p2, Lhpv;

    if-nez v1, :cond_5

    .line 310
    :cond_4
    new-instance p2, Lhpv;

    .end local p2    # "ddPopupWindow":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    invoke-direct {p2}, Lhpv;-><init>()V

    .line 313
    .restart local p2    # "ddPopupWindow":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    :cond_5
    iget-object v4, p0, Lhgh$3;->a:Ljava/lang/String;

    .line 314
    .local v4, "realTitle":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 315
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lhdn$k;->dt_oa_attend_checkin_fail_title:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_6
    move-object v0, p2

    .line 318
    check-cast v0, Lhpv;

    .line 319
    .local v0, "dakaPopupWindow":Lhpv;
    iget v2, p0, Lhgh$3;->b:I

    iget v3, p0, Lhgh$3;->c:I

    iget-object v5, p0, Lhgh$3;->d:Ljava/lang/String;

    iget-boolean v6, p0, Lhgh$3;->e:Z

    move-object v1, p1

    move-object v8, v7

    .line 1066
    invoke-virtual/range {v0 .. v8}, Lhpv;->a(Landroid/app/Activity;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;)V

    .line 320
    new-instance v1, Lhgh$3$1;

    invoke-direct {v1, p0}, Lhgh$3$1;-><init>(Lhgh$3;)V

    .line 1096
    iput-object v1, v0, Lhpv;->c:Landroid/view/View$OnClickListener;

    .line 391
    new-instance v1, Lhgh$3$2;

    invoke-direct {v1, p0}, Lhgh$3$2;-><init>(Lhgh$3;)V

    invoke-virtual {p2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    move-object v7, p2

    .line 398
    goto/16 :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)V
    .locals 0
    .param p1, "ddPopupWindow"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    .prologue
    .line 403
    if-eqz p1, :cond_0

    .line 404
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->dismiss()V

    .line 406
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;)Z
    .locals 1
    .param p1, "ddPopupWindowShowObject"    # Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    .prologue
    .line 266
    const/4 v0, 0x1

    return v0
.end method
