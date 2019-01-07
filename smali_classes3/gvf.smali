.class public final Lgvf;
.super Ljava/lang/Object;
.source "RecruitVideoConfig.java"


# instance fields
.field public a:Ljos;

.field public b:Z

.field public c:Z

.field public d:F

.field public e:Z


# direct methods
.method public constructor <init>(Ljos;)V
    .locals 2
    .param p1, "taoLiveVideoViewConfig"    # Ljos;

    .prologue
    const/4 v1, 0x1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean v1, p0, Lgvf;->b:Z

    .line 16
    iput-boolean v1, p0, Lgvf;->c:Z

    .line 17
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lgvf;->d:F

    .line 18
    iput-boolean v1, p0, Lgvf;->e:Z

    .line 21
    iput-object p1, p0, Lgvf;->a:Ljos;

    .line 22
    return-void
.end method
