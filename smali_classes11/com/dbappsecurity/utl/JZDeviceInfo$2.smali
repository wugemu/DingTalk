.class final Lcom/dbappsecurity/utl/JZDeviceInfo$2;
.super Ljava/util/TimerTask;
.source "JZDeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dbappsecurity/utl/JZDeviceInfo;->exitBy2ClickB(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 532
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 535
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/dbappsecurity/utl/JZDeviceInfo;->access$002(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 536
    return-void
.end method
