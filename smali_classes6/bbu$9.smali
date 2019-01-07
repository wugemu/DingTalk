.class final Lbbu$9;
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

.field final synthetic b:J

.field final synthetic c:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

.field final synthetic d:Lbbu;


# direct methods
.method constructor <init>(Lbbu;Lcom/alibaba/android/ding/base/objects/ObjectDing;JLcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;)V
    .locals 1
    .param p1, "this$0"    # Lbbu;

    .prologue
    .line 235
    iput-object p1, p0, Lbbu$9;->d:Lbbu;

    iput-object p2, p0, Lbbu$9;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iput-wide p3, p0, Lbbu$9;->b:J

    iput-object p5, p0, Lbbu$9;->c:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 239
    invoke-static {}, Lbbr;->a()Lbbr;

    move-result-object v1

    iget-object v2, p0, Lbbu$9;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-wide v4, p0, Lbbu$9;->b:J

    invoke-virtual {v1, v2, v4, v5}, Lbbr;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "DingPopWindowCenter middle cache match. dingId="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lbbu$9;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 296
    :goto_0
    return-void

    .line 244
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;-><init>()V

    .line 245
    .local v0, "ddPopupWindowShowObject":Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;
    iget-object v1, p0, Lbbu$9;->c:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    .line 1033
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->c:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    .line 246
    iget-object v1, p0, Lbbu$9;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    .line 1045
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->e:Ljava/lang/String;

    .line 247
    iget-object v1, p0, Lbbu$9;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 2041
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->d:Ljava/lang/Object;

    .line 248
    new-instance v1, Lbbu$9$1;

    invoke-direct {v1, p0}, Lbbu$9$1;-><init>(Lbbu$9;)V

    .line 3037
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->b:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;

    .line 295
    invoke-static {}, Lcmw;->a()Lcmv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcmv;->a(Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;)V

    goto :goto_0
.end method
