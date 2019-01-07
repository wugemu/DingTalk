.class public final Leal$1;
.super Ljava/lang/Object;
.source "PushTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldqs;

.field final synthetic b:Leal;


# direct methods
.method public constructor <init>(Leal;Ldqs;)V
    .locals 0
    .param p1, "this$0"    # Leal;

    .prologue
    .line 270
    iput-object p1, p0, Leal$1;->b:Leal;

    iput-object p2, p0, Leal$1;->a:Ldqs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 273
    invoke-static {}, Leal;->i()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 274
    iget-object v5, p0, Leal$1;->a:Ldqs;

    .line 1037
    if-nez v5, :cond_1

    move-object v3, v4

    .line 275
    .local v3, "floatDisplayAsyncObject":Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;
    :goto_0
    if-nez v3, :cond_4

    .line 331
    .end local v3    # "floatDisplayAsyncObject":Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;
    :cond_0
    :goto_1
    return-void

    .line 1041
    :cond_1
    new-instance v3, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;-><init>()V

    .line 1042
    invoke-static {v3, v5}, Leam;->a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;Ldqs;)V

    .line 1081
    if-eqz v5, :cond_3

    .line 1084
    new-instance v6, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;

    invoke-direct {v6}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;-><init>()V

    .line 1085
    invoke-static {v6}, Leam;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v7

    .line 2043
    iput-object v7, v3, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;->b:Lcrm;

    .line 1086
    iget-object v7, v5, Ldqs;->d:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1087
    new-instance v7, Landroid/text/SpannableString;

    iget-object v8, v5, Ldqs;->d:Ljava/lang/String;

    invoke-direct {v7, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2131
    iput-object v7, v6, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->b:Landroid/text/SpannableString;

    .line 1090
    :cond_2
    iget-object v7, v5, Ldqs;->e:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1091
    new-instance v7, Landroid/text/SpannableString;

    iget-object v8, v5, Ldqs;->e:Ljava/lang/String;

    invoke-direct {v7, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2139
    iput-object v7, v6, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->c:Landroid/text/SpannableString;

    .line 1044
    :cond_3
    invoke-static {v3, v5}, Leam;->b(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;Ldqs;)V

    goto :goto_0

    .line 278
    .restart local v3    # "floatDisplayAsyncObject":Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;
    :cond_4
    new-instance v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;-><init>(Landroid/content/Context;)V

    .line 279
    .local v2, "floatCommonView":Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;
    new-instance v0, Lcjs$a;

    const/4 v5, 0x1

    iget-object v6, p0, Leal$1;->a:Ldqs;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6, v2}, Lcjs$a;-><init>(ILjava/lang/String;Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;)V

    .line 280
    .local v0, "builder":Lcjs$a;
    new-instance v5, Leal$1$1;

    invoke-direct {v5, p0}, Leal$1$1;-><init>(Leal$1;)V

    .line 3081
    iput-object v5, v0, Lcjs$a;->a:Lcjs$b;

    .line 3086
    iput-object v3, v0, Lcjs$a;->b:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;

    .line 296
    invoke-static {}, Lcjq;->a()Lcjq;

    move-result-object v5

    invoke-virtual {v0}, Lcjs$a;->a()Lcjs;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcjq;->a(Lcjs;)V

    goto :goto_1

    .line 298
    .end local v0    # "builder":Lcjs$a;
    .end local v2    # "floatCommonView":Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;
    .end local v3    # "floatDisplayAsyncObject":Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;
    :cond_5
    iget-object v5, p0, Leal$1;->a:Ldqs;

    .line 4035
    if-nez v5, :cond_6

    .line 299
    .local v4, "popupDisplayAsyncObject":Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;
    :goto_2
    if-eqz v4, :cond_0

    .line 302
    new-instance v1, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;-><init>()V

    .line 303
    .local v1, "ddPopupWindowShowObject":Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;
    sget-object v5, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;->USER_TASK_ARRIVED:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    .line 6033
    iput-object v5, v1, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->c:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    .line 304
    iget-object v5, p0, Leal$1;->a:Ldqs;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 6045
    iput-object v5, v1, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->e:Ljava/lang/String;

    .line 305
    iget-object v5, p0, Leal$1;->a:Ldqs;

    .line 7041
    iput-object v5, v1, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->d:Ljava/lang/Object;

    .line 306
    new-instance v5, Leal$1$2;

    invoke-direct {v5, p0, v4}, Leal$1$2;-><init>(Leal$1;Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;)V

    .line 8037
    iput-object v5, v1, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->b:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;

    .line 329
    invoke-static {}, Lcmw;->a()Lcmv;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcmv;->a(Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;)V

    goto/16 :goto_1

    .line 4039
    .end local v1    # "ddPopupWindowShowObject":Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;
    .end local v4    # "popupDisplayAsyncObject":Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;
    :cond_6
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;-><init>()V

    .line 4040
    invoke-static {v4, v5}, Lean;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;Ldqs;)V

    .line 4077
    if-eqz v5, :cond_8

    .line 4080
    new-instance v6, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;

    invoke-direct {v6}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;-><init>()V

    .line 4081
    invoke-static {v6}, Lean;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v7

    .line 5040
    iput-object v7, v4, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;->b:Lcrm;

    .line 4082
    iget-object v7, v5, Ldqs;->d:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 4083
    new-instance v7, Landroid/text/SpannableString;

    iget-object v8, v5, Ldqs;->d:Ljava/lang/String;

    invoke-direct {v7, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5136
    iput-object v7, v6, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->b:Landroid/text/SpannableString;

    .line 4086
    :cond_7
    iget-object v7, v5, Ldqs;->e:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 4087
    new-instance v7, Landroid/text/SpannableString;

    iget-object v8, v5, Ldqs;->e:Ljava/lang/String;

    invoke-direct {v7, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5144
    iput-object v7, v6, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->c:Landroid/text/SpannableString;

    .line 4042
    :cond_8
    invoke-static {v4, v5}, Lean;->b(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;Ldqs;)V

    goto :goto_2
.end method
