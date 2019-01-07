.class public Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher;
.super Ljava/lang/Object;
.source "CircleRedDotSwitchWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher;->a:Landroid/content/Context;

    .line 28
    return-void
.end method
