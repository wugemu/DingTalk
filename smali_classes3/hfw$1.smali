.class final Lhfw$1;
.super Ljava/lang/Object;
.source "Core.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhfw;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Lcom/uc/webview/export/utility/SetupTask;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 150
    .line 1153
    sput-boolean v0, Liog;->a:Z

    .line 1154
    sput-boolean v0, Liog;->b:Z

    .line 1156
    new-instance v0, Lhfw$1$1;

    invoke-direct {v0, p0}, Lhfw$1$1;-><init>(Lhfw$1;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method
