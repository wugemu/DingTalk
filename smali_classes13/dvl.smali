.class public final Ldvl;
.super Ljava/lang/Object;
.source "DataCenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldvl$a;
    }
.end annotation


# instance fields
.field a:Ldvn;

.field b:Ldvn;

.field c:Ldvn;

.field d:Ldvn;

.field private final e:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide v0, 0x9a7ec800L

    iput-wide v0, p0, Ldvl;->e:J

    .line 39
    iput-object v2, p0, Ldvl;->a:Ldvn;

    .line 40
    iput-object v2, p0, Ldvl;->b:Ldvn;

    .line 42
    iput-object v2, p0, Ldvl;->c:Ldvn;

    .line 43
    iput-object v2, p0, Ldvl;->d:Ldvn;

    .line 45
    return-void
.end method
