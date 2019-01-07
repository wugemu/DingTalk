.class final Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$4;
.super Lcmi;
.source "MiniappActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lhil;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$4;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$4;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;)V

    .line 369
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 360
    .line 1363
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$4;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;)V

    .line 360
    return-void
.end method
