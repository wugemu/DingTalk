.class public final Lflx;
.super Ljava/lang/Object;
.source "OrgHomePageHelper.java"


# static fields
.field public static a:Lfrq;


# instance fields
.field public b:Landroid/os/Handler;

.field public c:I

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfoi;",
            ">;"
        }
    .end annotation
.end field

.field public e:Landroid/app/Activity;

.field public f:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lfrq;",
            ">;>;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfoj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lflx$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lflx$1;-><init>(Lflx;Landroid/os/Looper;)V

    iput-object v0, p0, Lflx;->b:Landroid/os/Handler;

    .line 56
    return-void
.end method
