.class final Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;
.super Ljava/util/TimerTask;
.source "MiniAppLoadingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "timeout"    # I

    .prologue
    .line 276
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 277
    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;->b:Ljava/lang/String;

    .line 278
    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;->c:Ljava/lang/String;

    .line 279
    iput p4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;->d:I

    .line 280
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;

    .prologue
    .line 271
    iget v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;->d:I

    return v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 283
    new-instance v0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 303
    return-void
.end method
