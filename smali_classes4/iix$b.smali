.class public final Liix$b;
.super Ljava/lang/Object;
.source "BQCScanController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field volatile a:I

.field volatile b:I

.field c:[Liix$a;

.field final synthetic d:Liix;


# direct methods
.method public constructor <init>(Liix;)V
    .locals 4
    .param p1, "this$0"    # Liix;

    .prologue
    const/4 v3, 0x3

    .line 487
    iput-object p1, p0, Liix$b;->d:Liix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    new-array v1, v3, [Liix$a;

    iput-object v1, p0, Liix$b;->c:[Liix$a;

    .line 488
    iput v3, p0, Liix$b;->a:I

    .line 489
    const/4 v1, 0x0

    iput v1, p0, Liix$b;->b:I

    .line 490
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 491
    iget-object v1, p0, Liix$b;->c:[Liix$a;

    new-instance v2, Liix$a;

    invoke-direct {v2, p1}, Liix$a;-><init>(Liix;)V

    aput-object v2, v1, v0

    .line 490
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 493
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_1
    return-void
.end method
