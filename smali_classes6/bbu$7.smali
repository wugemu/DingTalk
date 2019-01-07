.class final Lbbu$7;
.super Ljava/lang/Object;
.source "DingPopWindowCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbu;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic b:J

.field final synthetic c:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

.field final synthetic d:Lbbu;


# direct methods
.method constructor <init>(Lbbu;Lcom/alibaba/android/ding/base/objects/ObjectDing;JLcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;)V
    .locals 1
    .param p1, "this$0"    # Lbbu;

    .prologue
    .line 184
    iput-object p1, p0, Lbbu$7;->d:Lbbu;

    iput-object p2, p0, Lbbu$7;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iput-wide p3, p0, Lbbu$7;->b:J

    iput-object p5, p0, Lbbu$7;->c:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 188
    invoke-static {}, Lbbr;->a()Lbbr;

    move-result-object v0

    iget-object v1, p0, Lbbu$7;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-wide v2, p0, Lbbu$7;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lbbr;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "DingPopWindowCenter shouldHideNewDingPopupWindow match middle, dingId="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lbbu$7;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 194
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-static {}, Lcmw;->a()Lcmv;

    move-result-object v0

    iget-object v1, p0, Lbbu$7;->c:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    invoke-virtual {v0, v1}, Lcmv;->a(Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;)V

    goto :goto_0
.end method
