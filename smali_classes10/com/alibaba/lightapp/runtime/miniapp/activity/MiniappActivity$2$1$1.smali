.class final Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2$1$1;
.super Ljava/lang/Object;
.source "MiniappActivity.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2$1;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2$1;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2$1$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dialogCallbackFail(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 189
    return-void
.end method

.method public final dialogCallbackSuccess(ILjava/lang/String;)V
    .locals 0
    .param p1, "buttonIndex"    # I
    .param p2, "callbackValue"    # Ljava/lang/String;

    .prologue
    .line 184
    return-void
.end method
