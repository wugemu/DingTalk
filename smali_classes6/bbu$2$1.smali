.class final Lbbu$2$1;
.super Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;
.source "DingPopWindowCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbu$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbbu$2;


# direct methods
.method constructor <init>(Lbbu$2;)V
    .locals 0
    .param p1, "this$1"    # Lbbu$2;

    .prologue
    .line 448
    iput-object p1, p0, Lbbu$2$1;->a:Lbbu$2;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cachedPopupWindow"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 461
    instance-of v0, p2, Lcrn;

    if-nez v0, :cond_0

    .line 462
    new-instance p2, Lcrn;

    .end local p2    # "cachedPopupWindow":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    invoke-direct {p2, p1}, Lcrn;-><init>(Landroid/app/Activity;)V

    .restart local p2    # "cachedPopupWindow":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    :cond_0
    move-object v0, p2

    .line 465
    check-cast v0, Lcrn;

    .line 1028
    iput-boolean v9, v0, Lcri;->b:Z

    move-object v0, p2

    .line 466
    check-cast v0, Lcrn;

    const/4 v1, 0x1

    .line 1108
    iput v1, v0, Lcrn;->c:I

    move-object v0, p2

    .line 467
    check-cast v0, Lcrn;

    iget-object v1, p0, Lbbu$2$1;->a:Lbbu$2;

    iget-object v3, v1, Lbbu$2;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 2075
    if-eqz v3, :cond_1

    invoke-static {v3}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    move-object v1, v2

    .line 467
    :goto_0
    invoke-virtual {v0, v1}, Lcrn;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;)V

    .line 468
    invoke-static {v9}, Lbjz;->f(Z)V

    .line 469
    return-object p2

    .line 2079
    :cond_2
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;-><init>()V

    .line 2081
    invoke-static {v1, v3}, Lbky;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 2082
    invoke-static {v1, v3, v2}, Lbky;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;Lcom/alibaba/android/ding/base/objects/ObjectDing;Ljava/lang/String;)V

    .line 2085
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;-><init>()V

    .line 2086
    invoke-static {v2}, Lbky;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v4

    .line 3040
    iput-object v4, v1, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;->b:Lcrm;

    .line 2088
    new-instance v4, Landroid/text/SpannableString;

    invoke-static {v3}, Lbky;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3136
    iput-object v4, v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->b:Landroid/text/SpannableString;

    .line 2090
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2091
    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E()J

    move-result-wide v6

    .line 2092
    new-instance v5, Lcrm;

    invoke-direct {v5}, Lcrm;-><init>()V

    .line 4128
    iput-object v5, v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->a:Lcrm;

    .line 2094
    new-instance v8, Lbky$1;

    invoke-direct {v8, v6, v7, v4}, Lbky$1;-><init>(JLandroid/content/res/Resources;)V

    .line 5040
    iput-object v8, v5, Lcrm;->c:Lcrl;

    .line 2123
    new-instance v4, Lbky$12;

    invoke-direct {v4, p1, v3}, Lbky$12;-><init>(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 5160
    iput-object v4, v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->e:Landroid/view/View$OnClickListener;

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)V
    .locals 0
    .param p1, "ddPopupWindow"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    .prologue
    .line 474
    if-eqz p1, :cond_0

    .line 475
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->dismiss()V

    .line 477
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 456
    invoke-static {}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbbu$2$1;->a:Lbbu$2;

    iget-object v1, v1, Lbbu$2;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

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
    .line 451
    const/4 v0, 0x1

    return v0
.end method
