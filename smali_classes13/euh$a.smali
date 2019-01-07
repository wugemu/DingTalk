.class final Leuh$a;
.super Ljava/lang/Object;
.source "SearchDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leuh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    const-string/jumbo v0, " where "

    iput-object v0, p0, Leuh$a;->a:Ljava/lang/String;

    .line 529
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leuh$a;->b:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 527
    invoke-direct {p0}, Leuh$a;-><init>()V

    return-void
.end method
