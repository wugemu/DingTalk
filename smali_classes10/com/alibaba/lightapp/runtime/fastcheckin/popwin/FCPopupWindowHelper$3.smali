.class final Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$3;
.super Ljava/lang/Object;
.source "FCPopupWindowHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;->clearPopupWindow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$3;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 235
    const-string/jumbo v0, "fast_checkin"

    const-string/jumbo v1, "FCPopupWindowHelper"

    const-string/jumbo v2, "[FCPopupWindowHelper] cancelPopupWindow daka"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lcmw;->b()Lcmv;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;->LIGHT_APP_DAKA:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    const-string/jumbo v2, "fast_checkin_popup"

    invoke-virtual {v0, v1, v2}, Lcmv;->a(Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;Ljava/lang/String;)V

    .line 237
    return-void
.end method
