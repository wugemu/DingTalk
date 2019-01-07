.class final Lbbt$10;
.super Ljava/lang/Object;
.source "DingFloatWindowCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic b:Lbbt;


# direct methods
.method constructor <init>(Lbbt;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 0
    .param p1, "this$0"    # Lbbt;

    .prologue
    .line 368
    iput-object p1, p0, Lbbt$10;->b:Lbbt;

    iput-object p2, p0, Lbbt$10;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 371
    new-instance v1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;-><init>(Landroid/content/Context;)V

    .line 372
    .local v1, "floatCommonView":Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->setSubTitleMaxLines(I)V

    .line 374
    new-instance v0, Lcjs$a;

    const/4 v2, 0x6

    iget-object v4, p0, Lbbt$10;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4, v1}, Lcjs$a;-><init>(ILjava/lang/String;Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;)V

    .line 375
    .local v0, "builder":Lcjs$a;
    new-instance v2, Lbbt$10$1;

    invoke-direct {v2, p0}, Lbbt$10$1;-><init>(Lbbt$10;)V

    .line 1081
    iput-object v2, v0, Lcjs$a;->a:Lcjs$b;

    .line 390
    iget-object v4, p0, Lbbt$10;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1085
    if-eqz v4, :cond_0

    invoke-static {v4}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v3

    .line 5086
    :goto_0
    iput-object v2, v0, Lcjs$a;->b:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;

    .line 392
    invoke-static {}, Lcjq;->a()Lcjq;

    move-result-object v2

    invoke-virtual {v0}, Lcjs$a;->a()Lcjs;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcjq;->a(Lcjs;)V

    .line 393
    return-void

    .line 1089
    :cond_1
    new-instance v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;-><init>()V

    .line 1091
    invoke-static {v2, v4}, Lbkv;->a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 1092
    invoke-static {v2, v4, v3}, Lbkv;->a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;Lcom/alibaba/android/ding/base/objects/ObjectDing;Ljava/lang/String;)V

    .line 1095
    new-instance v3, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;-><init>()V

    .line 1096
    invoke-static {v3}, Lbkv;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v5

    .line 2043
    iput-object v5, v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;->b:Lcrm;

    .line 1098
    new-instance v5, Landroid/text/SpannableString;

    invoke-static {v4}, Lbkv;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2131
    iput-object v5, v3, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->b:Landroid/text/SpannableString;

    .line 1100
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1101
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E()J

    move-result-wide v6

    .line 1102
    new-instance v8, Lcrm;

    invoke-direct {v8}, Lcrm;-><init>()V

    .line 3123
    iput-object v8, v3, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->a:Lcrm;

    .line 1104
    new-instance v9, Lbkv$1;

    invoke-direct {v9, v6, v7, v5}, Lbkv$1;-><init>(JLandroid/content/res/Resources;)V

    .line 4040
    iput-object v9, v8, Lcrm;->c:Lcrl;

    .line 1133
    new-instance v5, Lbkv$12;

    invoke-direct {v5, v4}, Lbkv$12;-><init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 4155
    iput-object v5, v3, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->e:Landroid/view/View$OnClickListener;

    goto :goto_0
.end method
