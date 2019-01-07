.class public Lckv;
.super Ljava/lang/Object;
.source "LunarFestivalInfoPreloadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lckv$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field a:I

.field b:I

.field c:Lckv$a;

.field private e:Lckt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lckv;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lckv;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lckt;)V
    .locals 2
    .param p1, "lunarFestivalInfoCache"    # Lckt;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lckv$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lckv$a;-><init>(Lckv;B)V

    iput-object v0, p0, Lckv;->c:Lckv$a;

    .line 36
    iput-object p1, p0, Lckv;->e:Lckt;

    .line 37
    return-void
.end method

.method static synthetic a(Lckv;I)I
    .locals 0
    .param p0, "x0"    # Lckv;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lckv;->a:I

    return p1
.end method

.method static synthetic a(Lckv;Lckt;)Lckt;
    .locals 0
    .param p0, "x0"    # Lckv;
    .param p1, "x1"    # Lckt;

    .prologue
    .line 23
    iput-object p1, p0, Lckv;->e:Lckt;

    return-object p1
.end method

.method static synthetic a(Lckv;)Lckv$a;
    .locals 1
    .param p0, "x0"    # Lckv;

    .prologue
    .line 23
    iget-object v0, p0, Lckv;->c:Lckv$a;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lckv;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lckv;)I
    .locals 1
    .param p0, "x0"    # Lckv;

    .prologue
    .line 23
    iget v0, p0, Lckv;->a:I

    return v0
.end method

.method static synthetic b(Lckv;I)I
    .locals 0
    .param p0, "x0"    # Lckv;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lckv;->b:I

    return p1
.end method

.method static synthetic c(Lckv;)I
    .locals 1
    .param p0, "x0"    # Lckv;

    .prologue
    .line 23
    iget v0, p0, Lckv;->b:I

    return v0
.end method

.method static synthetic d(Lckv;)Lckt;
    .locals 1
    .param p0, "x0"    # Lckv;

    .prologue
    .line 23
    iget-object v0, p0, Lckv;->e:Lckt;

    return-object v0
.end method
