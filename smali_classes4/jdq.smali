.class public final Ljdq;
.super Ljava/lang/Object;
.source "OtherServiceEntity.java"


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/String;

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Ljdq;->a:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Ljdq;->b:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Ljdq;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljdq;->d:Ljava/util/List;

    const-string/jumbo v0, ""

    iput-object v0, p0, Ljdq;->e:Ljava/lang/String;

    iput-boolean v1, p0, Ljdq;->f:Z

    return-void
.end method
