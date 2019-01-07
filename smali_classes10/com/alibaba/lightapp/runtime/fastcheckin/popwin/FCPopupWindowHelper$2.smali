.class final Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$2;
.super Ljava/lang/Object;
.source "FCPopupWindowHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;->showCheckinResultPopWindow(Lhhd;Lhhn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$2;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$2;->a:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 219
    invoke-static {}, Lcmw;->b()Lcmv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper$2;->a:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    invoke-virtual {v0, v1}, Lcmv;->a(Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;)V

    .line 220
    return-void
.end method
