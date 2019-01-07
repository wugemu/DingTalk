.class final Lbbu$10;
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

.field final synthetic b:Lbcf;

.field final synthetic c:Lbbu;


# direct methods
.method constructor <init>(Lbbu;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lbcf;)V
    .locals 0
    .param p1, "this$0"    # Lbbu;

    .prologue
    .line 309
    iput-object p1, p0, Lbbu$10;->c:Lbbu;

    iput-object p2, p0, Lbbu$10;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iput-object p3, p0, Lbbu$10;->b:Lbcf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 312
    new-instance v0, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;-><init>()V

    .line 313
    .local v0, "ddPopupWindowShowObject":Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;
    sget-object v1, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;->DING_GENERAL_REMIND:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    .line 1033
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->c:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    .line 314
    iget-object v1, p0, Lbbu$10;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    .line 1045
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->e:Ljava/lang/String;

    .line 315
    iget-object v1, p0, Lbbu$10;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 2041
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->d:Ljava/lang/Object;

    .line 316
    new-instance v1, Lbbu$10$1;

    invoke-direct {v1, p0}, Lbbu$10$1;-><init>(Lbbu$10;)V

    .line 3037
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->b:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;

    .line 356
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lbbu$10$2;

    invoke-direct {v2, p0, v0}, Lbbu$10$2;-><init>(Lbbu$10;Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 362
    return-void
.end method
