.class final Lbbt$2;
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

.field final synthetic b:Lbfd;

.field final synthetic c:Lbbt;


# direct methods
.method constructor <init>(Lbbt;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lbfd;)V
    .locals 0
    .param p1, "this$0"    # Lbbt;

    .prologue
    .line 411
    iput-object p1, p0, Lbbt$2;->c:Lbbt;

    iput-object p2, p0, Lbbt$2;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iput-object p3, p0, Lbbt$2;->b:Lbfd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/16 v4, 0x8

    .line 414
    new-instance v1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;-><init>(Landroid/content/Context;)V

    .line 415
    .local v1, "floatCommonView":Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;
    iget-object v2, p0, Lbbt$2;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v2}, Lbkh;->m(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 416
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->setSubTitleMaxLines(I)V

    .line 421
    :cond_0
    :goto_0
    new-instance v0, Lcjs$a;

    iget-object v2, p0, Lbbt$2;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v4, v2, v1}, Lcjs$a;-><init>(ILjava/lang/String;Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;)V

    .line 422
    .local v0, "builder":Lcjs$a;
    new-instance v2, Lbbt$2$1;

    invoke-direct {v2, p0}, Lbbt$2$1;-><init>(Lbbt$2;)V

    .line 1081
    iput-object v2, v0, Lcjs$a;->a:Lcjs$b;

    .line 441
    iget-object v2, p0, Lbbt$2;->b:Lbfd;

    .line 2062
    iget-object v2, v2, Lbfd;->b:Ljava/lang/String;

    .line 441
    iget-object v3, p0, Lbbt$2;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v2, v3, v4}, Lbkv;->a(Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/ObjectDing;I)Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;

    move-result-object v2

    .line 2086
    iput-object v2, v0, Lcjs$a;->b:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;

    .line 443
    invoke-static {}, Lcjq;->a()Lcjq;

    move-result-object v2

    invoke-virtual {v0}, Lcjs$a;->a()Lcjs;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcjq;->a(Lcjs;)V

    .line 444
    return-void

    .line 417
    .end local v0    # "builder":Lcjs$a;
    :cond_1
    iget-object v2, p0, Lbbt$2;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v2}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->setSubTitleMaxLines(I)V

    goto :goto_0
.end method
