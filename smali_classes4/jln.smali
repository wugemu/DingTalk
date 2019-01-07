.class public final Ljln;
.super Ljava/lang/Object;
.source "DLConfig.java"


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:Z


# instance fields
.field public f:I

.field public g:I

.field public h:Ljlu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const v0, 0x8000

    sput v0, Ljln;->a:I

    .line 12
    const/16 v0, 0x1000

    sput v0, Ljln;->b:I

    .line 13
    const/16 v0, 0x2710

    sput v0, Ljln;->c:I

    .line 14
    const/16 v0, 0x3a98

    sput v0, Ljln;->d:I

    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Ljln;->e:Z

    return-void
.end method

.method public constructor <init>(Ljlw;)V
    .locals 1
    .param p1, "singleTask"    # Ljlw;

    .prologue
    const/4 v0, 0x3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v0, p0, Ljln;->f:I

    .line 18
    iput v0, p0, Ljln;->g:I

    .line 36
    iget-object v0, p1, Ljlw;->e:Ljlu;

    iput-object v0, p0, Ljln;->h:Ljlu;

    .line 37
    iget-object v0, p1, Ljlw;->f:Ljlv;

    iget v0, v0, Ljlv;->h:I

    if-lez v0, :cond_0

    .line 38
    iget-object v0, p1, Ljlw;->f:Ljlv;

    iget v0, v0, Ljlv;->h:I

    iput v0, p0, Ljln;->f:I

    .line 39
    iget-object v0, p1, Ljlw;->f:Ljlv;

    iget v0, v0, Ljlv;->h:I

    iput v0, p0, Ljln;->g:I

    .line 41
    :cond_0
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 44
    sget v0, Ljln;->c:I

    return v0
.end method
