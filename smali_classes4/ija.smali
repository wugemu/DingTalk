.class public Lija;
.super Ljava/lang/Object;
.source "ScanCodeState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lija$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:J

.field public e:F

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lija;->a:I

    .line 14
    iput v0, p0, Lija;->b:I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 27
    iput v2, p0, Lija;->a:I

    .line 28
    iput v2, p0, Lija;->b:I

    .line 29
    iput v2, p0, Lija;->c:I

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lija;->d:J

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lija;->e:F

    .line 32
    iput-boolean v2, p0, Lija;->f:Z

    .line 33
    return-void
.end method

.method public final a(ZI)V
    .locals 1
    .param p1, "state"    # Z
    .param p2, "errorCode"    # I

    .prologue
    .line 55
    sget v0, Lija$a;->f:I

    iput v0, p0, Lija;->a:I

    .line 56
    iput p2, p0, Lija;->b:I

    .line 57
    iput-boolean p1, p0, Lija;->f:Z

    .line 58
    return-void
.end method
