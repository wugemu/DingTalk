.class final Lb$a;
.super Lb$e;
.source "SafeIterableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lb$e",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lb$c;Lb$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb$c",
            "<TK;TV;>;",
            "Lb$c",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p0, "this":Lb$a;, "Lb$a<TK;TV;>;"
    .local p1, "start":Lb$c;, "Lb$c<TK;TV;>;"
    .local p2, "expectedEnd":Lb$c;, "Lb$c<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lb$e;-><init>(Lb$c;Lb$c;)V

    .line 271
    return-void
.end method


# virtual methods
.method final a(Lb$c;)Lb$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb$c",
            "<TK;TV;>;)",
            "Lb$c",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 275
    .local p0, "this":Lb$a;, "Lb$a<TK;TV;>;"
    .local p1, "entry":Lb$c;, "Lb$c<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method
