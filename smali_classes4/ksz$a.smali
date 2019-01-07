.class final Lksz$a;
.super Ljava/lang/Object;
.source "CharsetUtil.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lksz;
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
        "Lksz$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "canonical"    # Ljava/lang/String;
    .param p2, "mime"    # Ljava/lang/String;
    .param p3, "aliases"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 788
    iput-object v0, p0, Lksz$a;->a:Ljava/lang/String;

    .line 789
    iput-object v0, p0, Lksz$a;->b:Ljava/lang/String;

    .line 790
    iput-object v0, p0, Lksz$a;->c:[Ljava/lang/String;

    .line 793
    iput-object p1, p0, Lksz$a;->a:Ljava/lang/String;

    .line 794
    iput-object p2, p0, Lksz$a;->b:Ljava/lang/String;

    .line 795
    iput-object p3, p0, Lksz$a;->c:[Ljava/lang/String;

    .line 796
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;B)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # [Ljava/lang/String;

    .prologue
    .line 787
    invoke-direct {p0, p1, p2, p3}, Lksz$a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lksz$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lksz$a;

    .prologue
    .line 787
    iget-object v0, p0, Lksz$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lksz$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lksz$a;

    .prologue
    .line 787
    iget-object v0, p0, Lksz$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lksz$a;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lksz$a;

    .prologue
    .line 787
    iget-object v0, p0, Lksz$a;->c:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 787
    check-cast p1, Lksz$a;

    .line 1799
    iget-object v0, p0, Lksz$a;->a:Ljava/lang/String;

    iget-object v1, p1, Lksz$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 787
    return v0
.end method
