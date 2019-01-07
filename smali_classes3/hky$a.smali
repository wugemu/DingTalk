.class abstract Lhky$a;
.super Ljava/lang/Object;
.source "AutoAttendanceModule.java"

# interfaces
.implements Lciq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhky;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "a"
.end annotation


# instance fields
.field b:J

.field c:Z

.field d:F

.field final synthetic e:Lhky;


# direct methods
.method constructor <init>(Lhky;)V
    .locals 1
    .param p1, "this$0"    # Lhky;

    .prologue
    .line 1083
    iput-object p1, p0, Lhky$a;->e:Lhky;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1085
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhky$a;->c:Z

    .line 1086
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lhky$a;->d:F

    return-void
.end method
