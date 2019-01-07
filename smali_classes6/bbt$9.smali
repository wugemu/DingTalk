.class final Lbbt$9;
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

.field final synthetic b:Lbfq;

.field final synthetic c:Lbbt;


# direct methods
.method constructor <init>(Lbbt;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lbfq;)V
    .locals 0
    .param p1, "this$0"    # Lbbt;

    .prologue
    .line 324
    iput-object p1, p0, Lbbt$9;->c:Lbbt;

    iput-object p2, p0, Lbbt$9;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iput-object p3, p0, Lbbt$9;->b:Lbfq;

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
    const/4 v4, 0x5

    .line 327
    new-instance v1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;-><init>(Landroid/content/Context;)V

    .line 328
    .local v1, "floatCommonView":Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->setSubTitleMaxLines(I)V

    .line 330
    new-instance v0, Lcjs$a;

    iget-object v2, p0, Lbbt$9;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v4, v2, v1}, Lcjs$a;-><init>(ILjava/lang/String;Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;)V

    .line 331
    .local v0, "builder":Lcjs$a;
    new-instance v2, Lbbt$9$1;

    invoke-direct {v2, p0}, Lbbt$9$1;-><init>(Lbbt$9;)V

    .line 1081
    iput-object v2, v0, Lcjs$a;->a:Lcjs$b;

    .line 346
    iget-object v2, p0, Lbbt$9;->b:Lbfq;

    .line 2060
    iget-object v2, v2, Lbfq;->b:Ljava/lang/String;

    .line 346
    iget-object v3, p0, Lbbt$9;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v2, v3, v4}, Lbkv;->a(Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/ObjectDing;I)Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;

    move-result-object v2

    .line 2086
    iput-object v2, v0, Lcjs$a;->b:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;

    .line 348
    invoke-static {}, Lcjq;->a()Lcjq;

    move-result-object v2

    invoke-virtual {v0}, Lcjs$a;->a()Lcjs;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcjq;->a(Lcjs;)V

    .line 349
    return-void
.end method
