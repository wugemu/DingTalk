.class final Lhgh$1$1;
.super Ljava/lang/Object;
.source "KaoQinViewImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhgh$1;->onStopScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhgh$1;


# direct methods
.method constructor <init>(Lhgh$1;)V
    .locals 0
    .param p1, "this$1"    # Lhgh$1;

    .prologue
    .line 104
    iput-object p1, p0, Lhgh$1$1;->a:Lhgh$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 108
    iget-object v0, p0, Lhgh$1$1;->a:Lhgh$1;

    iget-object v0, v0, Lhgh$1;->a:Lhgh;

    .line 1242
    sget v1, Lhgh;->b:I

    iget v2, v0, Lhgh;->e:I

    if-ne v1, v2, :cond_0

    .line 1243
    invoke-virtual {v0}, Lhgh;->b()V

    .line 1245
    invoke-static {}, Lcmw;->b()Lcmv;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;->LIGHT_APP_DAKA:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    iget-object v3, v0, Lhgh;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcmv;->a(Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;Ljava/lang/String;)V

    .line 1247
    iput v5, v0, Lhgh;->e:I

    .line 1250
    :cond_0
    const-string/jumbo v1, "lightapp"

    const-string/jumbo v2, "KaoQinViewImpl"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "[Device Beacon] KaoQinViewImpl dismissEnterRangePopWindow "

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget v0, v0, Lhgh;->e:I

    .line 1251
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1250
    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method
