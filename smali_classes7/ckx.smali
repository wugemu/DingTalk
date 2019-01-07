.class public final Lckx;
.super Ljava/lang/Object;
.source "FavoriteDingExtend.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:J

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lckx;->a:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "authMediaId"    # Ljava/lang/String;
    .param p3, "authCode"    # Ljava/lang/String;
    .param p4, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p6, "volumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lckx;->b:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lckx;->c:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lckx;->d:Ljava/lang/String;

    .line 34
    iput-wide p4, p0, Lckx;->e:J

    .line 35
    iput-object p6, p0, Lckx;->f:Ljava/util/List;

    .line 36
    return-void
.end method
