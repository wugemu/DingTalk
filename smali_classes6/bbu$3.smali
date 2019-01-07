.class final Lbbu$3;
.super Ljava/lang/Object;
.source "DingPopWindowCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic b:Lbfd;

.field final synthetic c:Lbbu;


# direct methods
.method constructor <init>(Lbbu;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lbfd;)V
    .locals 0
    .param p1, "this$0"    # Lbbu;

    .prologue
    .line 499
    iput-object p1, p0, Lbbu$3;->c:Lbbu;

    iput-object p2, p0, Lbbu$3;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iput-object p3, p0, Lbbu$3;->b:Lbfd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 503
    new-instance v0, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;-><init>()V

    .line 504
    .local v0, "ddPopupWindowShowObject":Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;
    sget-object v1, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;->DING_TASK_MODIFY:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    .line 1033
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->c:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    .line 505
    iget-object v1, p0, Lbbu$3;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    .line 1045
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->e:Ljava/lang/String;

    .line 506
    iget-object v1, p0, Lbbu$3;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 2041
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->d:Ljava/lang/Object;

    .line 507
    new-instance v1, Lbbu$3$1;

    invoke-direct {v1, p0}, Lbbu$3$1;-><init>(Lbbu$3;)V

    .line 3037
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->b:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;

    .line 548
    invoke-static {}, Lcmw;->a()Lcmv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcmv;->a(Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;)V

    .line 549
    return-void
.end method
