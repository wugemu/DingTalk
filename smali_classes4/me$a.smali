.class final Lme$a;
.super Ljava/lang/Object;
.source "CacheManager.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lme$a;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lanetwork/channel/cache/Cache;

.field final b:Lmf;

.field final c:I


# direct methods
.method constructor <init>(Lanetwork/channel/cache/Cache;Lmf;I)V
    .locals 0
    .param p1, "cache"    # Lanetwork/channel/cache/Cache;
    .param p2, "prediction"    # Lmf;
    .param p3, "priority"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lme$a;->a:Lanetwork/channel/cache/Cache;

    .line 24
    iput-object p2, p0, Lme$a;->b:Lmf;

    .line 25
    iput p3, p0, Lme$a;->c:I

    .line 26
    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 18
    check-cast p1, Lme$a;

    .line 1030
    .end local p1    # "x0":Ljava/lang/Object;
    iget v0, p0, Lme$a;->c:I

    iget v1, p1, Lme$a;->c:I

    sub-int/2addr v0, v1

    .line 18
    return v0
.end method
