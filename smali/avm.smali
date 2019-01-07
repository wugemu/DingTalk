.class public final Lavm;
.super Ljava/lang/Object;
.source "CalendarDayEventUtil.java"


# static fields
.field private static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Laxn;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Laxn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lavm$1;

    invoke-direct {v0}, Lavm$1;-><init>()V

    sput-object v0, Lavm;->a:Ljava/util/Comparator;

    .line 65
    new-instance v0, Lavm$2;

    invoke-direct {v0}, Lavm$2;-><init>()V

    sput-object v0, Lavm;->b:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Laxn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "events":Ljava/util/Collection;, "Ljava/util/Collection<Laxn;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    :cond_0
    return-void

    .line 23
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 24
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Laxn;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxn;

    .line 26
    .local v0, "event":Laxn;
    if-nez v0, :cond_2

    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laxn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "events":Ljava/util/List;, "Ljava/util/List<Laxn;>;"
    if-nez p0, :cond_0

    .line 37
    :goto_0
    return-void

    .line 36
    :cond_0
    sget-object v0, Lavm;->a:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public static b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laxn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "events":Ljava/util/List;, "Ljava/util/List<Laxn;>;"
    if-nez p0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 43
    :cond_0
    sget-object v0, Lavm;->b:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method
