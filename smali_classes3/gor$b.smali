.class final Lgor$b;
.super Ljava/lang/Object;
.source "CSpaceFileMonitorModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:J

.field final synthetic d:Lgor;


# direct methods
.method constructor <init>(Lgor;)V
    .locals 0
    .param p1, "this$0"    # Lgor;

    .prologue
    .line 42
    iput-object p1, p0, Lgor$b;->d:Lgor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
