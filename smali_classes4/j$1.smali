.class final Lj$1;
.super Li;
.source "CustomTabsServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lj;


# direct methods
.method constructor <init>(Lj;Lm;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "this$0"    # Lj;
    .param p2, "service"    # Lm;
    .param p3, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 33
    iput-object p1, p0, Lj$1;->a:Lj;

    invoke-direct {p0, p2, p3}, Li;-><init>(Lm;Landroid/content/ComponentName;)V

    return-void
.end method
