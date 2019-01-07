.class final Lvj$a;
.super Lvj$h;
.source "MimeUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lvj$h;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lvj$h;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lvj$h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lvj$h;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lvj$h;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lvj$h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4037
    .local p1, "text":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    .local p2, "html":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    .local p3, "calendar":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    invoke-direct {p0}, Lvj$h;-><init>()V

    .line 4038
    iput-object p1, p0, Lvj$a;->a:Ljava/util/List;

    .line 4039
    iput-object p2, p0, Lvj$a;->b:Ljava/util/List;

    .line 4040
    iput-object p3, p0, Lvj$a;->c:Ljava/util/List;

    .line 4041
    return-void
.end method
