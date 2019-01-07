.class public final Lgwr$a;
.super Ljava/lang/Object;
.source "DisplayShareUnitOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgwr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lgwr;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lgwr;

    invoke-direct {v0}, Lgwr;-><init>()V

    iput-object v0, p0, Lgwr$a;->a:Lgwr;

    .line 42
    return-void
.end method
