.class final Lhkx$5$1$1;
.super Ljava/lang/Object;
.source "AutoAttendanceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhkx$5$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhkx$5$1;


# direct methods
.method constructor <init>(Lhkx$5$1;)V
    .locals 0
    .param p1, "this$2"    # Lhkx$5$1;

    .prologue
    .line 290
    iput-object p1, p0, Lhkx$5$1$1;->a:Lhkx$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 293
    invoke-static {}, Lhkx;->a()Lhkx;

    move-result-object v0

    invoke-virtual {v0}, Lhkx;->e()V

    .line 294
    return-void
.end method
