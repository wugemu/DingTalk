.class public final Lkds$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lkds$a;

.field public static final b:Lkds$a;

.field public static final c:Lkds$a;

.field public static final d:Lkds$a;

.field public static final e:Lkds$a;


# instance fields
.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkds$a;

    const-string/jumbo v1, "get"

    invoke-direct {v0, v1}, Lkds$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkds$a;->a:Lkds$a;

    new-instance v0, Lkds$a;

    const-string/jumbo v1, "set"

    invoke-direct {v0, v1}, Lkds$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkds$a;->b:Lkds$a;

    new-instance v0, Lkds$a;

    const-string/jumbo v1, "result"

    invoke-direct {v0, v1}, Lkds$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkds$a;->c:Lkds$a;

    new-instance v0, Lkds$a;

    const-string/jumbo v1, "error"

    invoke-direct {v0, v1}, Lkds$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkds$a;->d:Lkds$a;

    new-instance v0, Lkds$a;

    const-string/jumbo v1, "command"

    invoke-direct {v0, v1}, Lkds$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkds$a;->e:Lkds$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkds$a;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lkds$a;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lkds$a;->a:Lkds$a;

    invoke-virtual {v2}, Lkds$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lkds$a;->a:Lkds$a;

    goto :goto_0

    :cond_2
    sget-object v2, Lkds$a;->b:Lkds$a;

    invoke-virtual {v2}, Lkds$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Lkds$a;->b:Lkds$a;

    goto :goto_0

    :cond_3
    sget-object v2, Lkds$a;->d:Lkds$a;

    invoke-virtual {v2}, Lkds$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v0, Lkds$a;->d:Lkds$a;

    goto :goto_0

    :cond_4
    sget-object v2, Lkds$a;->c:Lkds$a;

    invoke-virtual {v2}, Lkds$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v0, Lkds$a;->c:Lkds$a;

    goto :goto_0

    :cond_5
    sget-object v2, Lkds$a;->e:Lkds$a;

    invoke-virtual {v2}, Lkds$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lkds$a;->e:Lkds$a;

    goto :goto_0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkds$a;->f:Ljava/lang/String;

    return-object v0
.end method
