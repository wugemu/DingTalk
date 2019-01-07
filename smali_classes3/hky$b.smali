.class final Lhky$b;
.super Ljava/lang/Object;
.source "AutoAttendanceModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhky;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:D

.field public c:D

.field final synthetic d:Lhky;


# direct methods
.method constructor <init>(Lhky;)V
    .locals 0
    .param p1, "this$0"    # Lhky;

    .prologue
    .line 887
    iput-object p1, p0, Lhky$b;->d:Lhky;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
